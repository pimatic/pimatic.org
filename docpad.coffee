# The DocPad Configuration File
# It is simply a CoffeeScript Object which is parsed by CSON
docpadConfig =

  # Template Data
  # =============
  # These are variables that will be accessible via our templates
  # To access one of these within our templates, refer to the FAQ:
  # https://github.com/bevry/docpad/wiki/FAQ

  templateData:

    # Specify some site properties
    site:
      # The production url of our website
      url: "https://pimatic.org"

      # Here are some old site urls that you would like to redirect from
      oldUrls: [
        'www.pimatic.org'
      ]

      # The default title of our website
      title: "pimatic - smart home automation for the raspberry pi"

      # The website description (for SEO)
      description: """
        a home automation server and framework for the raspberry pi running on node.js
        """

      # The website keywords (for SEO) separated by commas
      keywords: """
        pimatic home automation house nodejs Raspberry Pi
        """

      # The website author's name
      author: "Oliver Schneider"

      # The website author's email
      email: "oliverschneider89+pimatic@gmail.com"

      # Your company's name
      copyright: "© Oliver Schneider " + new Date().getUTCFullYear()


    # Helper Functions
    # ----------------

    # Get the prepared site/document title
    # Often we would like to specify particular formatting to our page's title
    # we can apply that formatting here
    getPreparedTitle: ->
      # if we have a document title, then we should use that and suffix the site's title onto it
      if @document.title
        "#{@document.title} | #{@site.title}"
      # if our document does not have it's own title, then we should just use the site's title
      else
        @site.title

    # Get the prepared site/document description
    getPreparedDescription: ->
      # if we have a document description, then we should use that,
      # otherwise use the site's description
      @document.description or @site.description

    # Get the prepared site/document keywords
    getPreparedKeywords: ->
      # Merge the document keywords with the site keywords
      @site.keywords.concat(@document.keywords or []).join(', ')

    getPlugins: ->
      #plugins = require('fs').readdirSync(__dirname + '/src/documents/docs')
      #plugins = (p for p in plugins when not (p in ['pimatic-plugin-template']))
      return [
        "pimatic"
        "pimatic-cron",
        "pimatic-gpio",
        "pimatic-log-reader",
        "pimatic-mobile-frontend",
        "pimatic-pilight",
        "pimatic-ping",
        "pimatic-redirect",
        "pimatic-shell-execute",
        "pimatic-sispmctl",
        "pimatic-pushover",
        "pimatic-sunrise",
        "pimatic-voice-recognition",
      ]

    getAllPlugins: ->
      fs = require 'fs'
      return JSON.parse(fs.readFileSync 'pluginList.json').filter( (p) -> p.name isnt 'pimatic' )

    getCore: ->
      fs = require 'fs'
      return JSON.parse(fs.readFileSync 'pluginList.json').filter( (p) -> p.name is 'pimatic' )[0]

    renderActionApi: (section) ->
      declapi = require '../node_modules/pimatic/node_modules/decl-api'
      api = require './api/pimatic-api.coffee'
      return declapi.docs().genDocsForActions(api[section].actions)

    require: (file) -> require file

    author: (p) ->
      name = p.author?.name or p.author_name
      url = p.author?.url or p.autor_url
      email = p.author?.email or p.autor_email


      maintainer = null
      for m in p.maintainers
        if (email? and email is m.email)
          maintainer = m
          break
      if maintainer?
        if name?
          name = "#{name} (#{maintainer.name})"
        else
          name = maintainer.name

      return {href: url, name: name}

    printConfigShema: (schema) ->
      ck = require 'coffeekup'
      return ck.render( (-> 
        print = (schema, hidden) ->
          if schema.title?
            div schema.title
          if schema.type is "object" and schema.properties?
            if Object.keys(schema.properties).length > 0
              table class:"table config-table #{if hidden then 'hidden'}", ->
                tr ->
                  th "Option"
                  th "Description"
                  th "Default"
                even = false
                for k, v of schema.properties
                  evenClass = if even then 'even' else 'odd'
                  even = not even
                  tr class: evenClass, ->
                    td ->
                      strong k
                      br()
                      em (
                        if v.type is "array" and v.items?.type
                        then "array of #{v.items.type}s"
                        else v.type
                      )
                    td v.description
                    td ->
                      if v.default?
                        pre JSON.stringify(v.default, null, "  ")
                  if (v.type is "object" and v.properties?) or
                     (v.type is "array" and v.items?.type is "object" and
                      v.items.properties? and Object.keys(v.items.properties).length > 0)
                    tr class: evenClass, ->
                      td class:"continue", colspan:3, ->
                        a class:'toggle-table', ->
                          i class:'glyphicon glyphicon-chevron-right', ''
                          if v.type is "object" then em " Properties" else em " Elements"
                        switch v.type
                          when "object" then print v, yes
                          when "array" then print v.items, yes

        print @schema, no
      ), schema: schema)

  # Collections
  # ===========
  # These are special collections that our website makes available to us

  collections:
    # For instance, this one will fetch in all documents that have pageOrder 
    # set within their meta data
    pages: (database) ->
      database.findAllLive({menu: true}, [pageOrder:1,title:1])

    guides: (database) ->
      database.findAllLive({guideOrder: $exists: true}, [guideOrder:1,title:1])

    docs: (database) ->
      database.findAllLive({url: $startsWith: '/docs/'}, [pageOrder:1,title:1])


  # DocPad Events
  # =============

  # Here we can define handlers for events that DocPad fires
  # You can find a full listing of events on the DocPad Wiki
  events:

    # Server Extend
    # Used to add our own custom routes to the server before the docpad routes are added
    serverExtend: (opts) ->
      # Extract the server from the options
      {server} = opts
      docpad = @docpad

      # As we are now running in an event,
      # ensure we are using the latest copy of the docpad configuraiton
      # and fetch our urls from it
      latestConfig = docpad.getConfig()
      oldUrls = latestConfig.templateData.site.oldUrls or []
      newUrl = latestConfig.templateData.site.url

      # Redirect any requests accessing one of our sites oldUrls to the new site url
      server.use (req,res,next) ->
        if req.headers.host in oldUrls
          res.redirect 301, newUrl+req.url
        else
          next()
  plugins:
    repocloner:
      repos: [
        name: 'Guide'
        path: 'src/documents/guide'
        branch: 'master'
        url: 'https://github.com/pimatic/pimatic-guide.git'
      ]
    marked:
      markedRenderer:
        table: (header, body) ->
          """
          <table class="table table-bordered">
            <thead>
              #{header}
            </thead>
            <tbody>
              #{body}
            </tbody>
          </table>
          """
        image: (href, title, text) ->
          # TODO: clever handling or relative urls: unless href.match(/https?:\/\//)?
          """<img src="#{href}" alt="#{text}" #{if title? then 'title="'+title+'"' else ''}>"""


# Export our DocPad Configuration
module.exports = docpadConfig
