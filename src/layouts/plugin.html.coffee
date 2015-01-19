###
layout: default
###

fs = @require 'fs'

plugins = @getAllPlugins()
plugin = null
for p in plugins
  if p.name is @document.pluginName
    plugin = p
    break

author = (p) ->
  href = p.author?.url or p.autor_url or p._npmUser.url
  name = "#{p.author?.name or p.author_name or "?"} (#{p._npmUser.name})"
  return {href, name}

printConfigShema = (schema) ->
  if schema.title?
    div schema.title
  if schema.type is "object" and schema.properties?
    if Object.keys(schema.properties).length > 0
      table class:"table table-striped", ->
        tr -> 
          th "Option"
          th "Type"
          th "Description"
          th "Default"
        for k, v of schema.properties
          tr ->
            td -> strong k
            td -> em v.type  
            td v.description
            td -> 
              if v.default?
                pre JSON.stringify(v.default, null, "  ")
          if v.type is "object" and v.properties?
            tr ->
              td colspan:4, ->
                printConfigShema v
    else
      div -> em "No options defined."

article id: 'page', ->
  div class: 'page-content', @content
  div ->
    if fs.existsSync(p.compiledConfigSchema)
      h2 "All plugin config options"
      schema = JSON.parse fs.readFileSync(p.compiledConfigSchema).toString()
      printConfigShema schema
    if fs.existsSync(p.compiledDeviceConfigSchema)
      h2 "All device config options"
      schema = JSON.parse fs.readFileSync(p.compiledDeviceConfigSchema).toString()
      if schema.title?
        div schema.title
      for device, config of schema
        if device is "title" then continue
        h3 device
        printConfigShema config
  div -> "#{p.name} is written by #{author(p).name}"
