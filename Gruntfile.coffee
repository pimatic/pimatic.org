module.exports = (grunt) ->

  grunt.initConfig
    pkg: grunt.file.readJSON "package.json"
    "ftp-deploy":
      web:
        auth:
          host: "pimatic.org"
          port: 21
        authKey: 'pimatic.org'
        src: 'out'
        dest: "/pimatic"

  grunt.loadNpmTasks "grunt-ftp-deploy"

  grunt.registerTask "docpad", ->
    done = this.async()
    docpad = grunt.util.spawn(
      cmd: "docpad"
      args: [
        "generate"
        "--env", "static"
      ]
      opts: {stdio: 'inherit'}
    , done)


  grunt.registerTask "copy-api", =>
    grunt.util.spawn
      cmd: "rsync"
      args: [
        "--exclude=assets"
        "../node_modules/pimatic/lib/api.coffee"
        "./api/pimatic-api.coffee"
      ]
      opts: {stdio: 'inherit'}
    , done = ->
      grunt.log.ok "copyed api.coffee"


  grunt.registerTask "copy-docs", =>
    path = require "path"
    # all node_modules:
    modules = require("fs").readdirSync "../node_modules"
    # just the pimatic-* modules:
    plugins = (module for module in modules when module.match(/^pimatic-.*/)?)
    plugins.push "pimatic"
    for p in plugins
      grunt.util.spawn
        cmd: "rsync"
        args: [
          "-r"
          "--exclude=assets"
          "../node_modules/#{p}/doc/"
          "./src/documents/docs/#{p}/"
        ]
        opts: {stdio: 'inherit'}
      , done = ->
        grunt.log.ok "copyed #{p}"

  grunt.registerTask "plugins", ->
    done = this.async()
    Promise = require 'bluebird'
    request = require('request-promise')
    tarball = require('tarball-extract')
    randomColor = require './random-color.js'
    rumraf = require('rimraf-promise')
    path = require 'path'
    fs = require 'fs'
    coffee = require 'coffee-script'
    Promise.promisifyAll(fs)
    Promise.promisifyAll(tarball)

    lines = []
    child = grunt.util.spawn
      cmd: "npm"
      args: [
        "search"
        "pimatic-"
      ]
    , (err,res,cod) ->
      lines = res.stdout.split "\n"
      columns = [
        {
          name: "NAME"
        }
        {
          name: "DESCRIPTION"
        }
        {
          name: "AUTHOR"
        }
        {
          name: "DATE"
        }
        {
          name: "VERSION"
        }
        {
          name: "KEYWORDS"
        }
      ]
      for c in columns
        c.pos = lines[0].indexOf c.name
      lines.splice(0, 1)
      pluginList = (l.substring(columns[0].pos, columns[1].pos).trim() for l in lines)
      blacklist = [
        'pimatic-plugin-template', 'pimatic-rest-api', 'pimatic-speak-api', 
        "pimatic-datalogger", "pimatic-redirect", "pimatic-datalogger"
      ]
      plugins = (
        for p in pluginList
          continue if p in blacklist
          getNpmInfo(p)
      )
      Promise.all(plugins)
      .map (p) ->
        console.log p 
        request(p.dist.tarball).then (res) ->
          file = "tarball/#{p.name}.tgz"
          tarball.extractTarballDownloadAsync(
            p.dist.tarball, 
            file, 
            "tarball/#{p.name}", 
            {}
          ).then -> p
      .map (p) ->
        p.dir = "src/files/plugins/#{p.name}"
        rumraf(p.dir).then -> 
          # fs.unlinkAsync("#{p.dir}.tgz").then ->
          fs.mkdirAsync(p.dir).then -> p
      .map (p) ->
        Promise.try ->
          unless p.icon? then throw new Error("plugin has no icon")
          fs.readFileAsync("tarball/#{p.name}/package/#{p.icon}").then (content) ->
            p.iconFile = "#{p.dir}/icon#{path.extname(p.icon)}"
            fs.writeFileAsync(p.iconFile, content)
        .catch (error) ->
          console.log "#{p.name}: error copy icon: #{error.message}, generating default icon:"
          p.iconFile = "#{p.dir}/icon.svg"
          fs.writeFileAsync(p.iconFile, svg(p))
        .then -> p
      .map (p) ->
        indexFile = "tarball/#{p.name}/package/README.md"
        fs.readFileAsync(indexFile).then (content) ->
          content = """
          ---
          title: #{p.name}
          layout: plugin
          pluginName: #{p.name}
          ---

          #{content}
          """
          dir = "src/documents/plugins/#{p.name}"
          rumraf(dir).then -> 
            fs.mkdirAsync(dir).then -> 
              fs.writeFileAsync("#{dir}/index.html.md", content).then -> p
      .map (p) ->
        Promise.try ->
          unless p.configSchema? then return
          #fs.readFileAsync("tarball/#{p.name}/package/#{p.configSchema}").then (content) ->
            #compiled = coffee.compile content.toString(), {bare: true}
          configSchema = require "./tarball/#{p.name}/package/#{p.configSchema}" 
          p.compiledConfigSchema = "#{p.dir}/configSchema.json"
          return fs.writeFileAsync(p.compiledConfigSchema, JSON.stringify(configSchema, null, " "))
        .catch (error) ->
          console.log "#{p.name}: error compiling configSchema: #{error.message}"
        .then -> p
      .map (p) ->
        Promise.try ->
          configSchema = require "./tarball/#{p.name}/package/device-config-schema" 
          p.compiledDeviceConfigSchema = "#{p.dir}/deviceConfigSchema.json"
          return fs.writeFileAsync(p.compiledDeviceConfigSchema, JSON.stringify(configSchema, null, " "))
        .catch (error) ->
          console.log "#{p.name}: error compiling deviceConfigSchema: #{error.message}"
        .then -> p
      .then (plugins) -> 
        fs.writeFileSync 'pluginList.json', JSON.stringify(plugins, null, " ")
        console.log (p.name for p in plugins)
        console.log "done"
        done()
      .done()

    getNpmInfo = (name) ->
      request("https://registry.npmjs.org/#{name}/latest").then( (res) ->
        info = JSON.parse(res)
        if info.error?
          throw new Error("getting info about #{name} failed: #{info.reason}")
        return info
      )

    svg = (p) ->
      color = randomColor(luminosity: 'light', seed: p.name)
      text = p.name.substr(8,4)
      return """
        <?xml version="1.0" encoding="UTF-8" standalone="no"?>
        <svg
          width="64"
          height="64"
          version="1.1"
          xmlns="http://www.w3.org/2000/svg">
          <rect
             fill="#{color}"
             width="64"
             height="64"
             x="0"
             y="0"></rect>
          <text font-weight="bold" x="10" y="50" font-size="45" text-anchor="left" fill="black">#{text}</text>
        </svg>
      """


  grunt.registerTask "deploy", ["docpad:generate", "ftp-deploy"]