###
title: Plugins
layout: page
tags: ['page']
pageOrder: 1
menu: true
###

capitalize = (s) -> s[0].toUpperCase() + s.slice(1)

plugins = @getAllPlugins()


repositoryLink = (p) ->
  href = null
  match = p.repository?.url?.match(/.+?github\.com\/(.+?)\/(pimatic-.+?)\.git/)
  if match?
    href = "https://github.com/#{match[1]}/#{match[2]}/"
  else
    href = p.homepage
  return href

author = (p) ->
  href = p.author?.url or p.autor_url or p._npmUser.url
  name = "#{p.author?.name or p.author_name or "?"} (#{p._npmUser.name})"
  return {href, name}

div class: "plugin-list", ->
  for plugin in plugins
    #onsole.log plugin.name
    try
      pluginHref = "/plugins/#{plugin.name}"
      div class:"media", ->
        a class:"pull-left", href: pluginHref, ->
          img class:"media-object", src: "../../plugins/#{plugin.name}/icon.svg", alt: plugin.name, width: 64, height: 64
        div class:"media-body", ->
          h4 class:"media-heading", -> a href: pluginHref, -> plugin.name
          p plugin.description 
          p class: "meta", -> 
            text 'by '
            authorInfo = author(plugin)
            a class: "author", href: authorInfo.href, -> authorInfo.name
            text ' | '
            a class: "github", href: repositoryLink(plugin), "github"
    catch e
      console.log "Unable to process plugin: #{plugin.name}: #{e}"
      throw e

# table class: "table table-striped", ->
#   thead ->
#     tr ->
#       th "Name"
#       th "Description"
#       th "Author"
#   tbody ->
#     for p in plugins
#       tr ->
#         td style: "white-space: nowrap;", -> 

#           return (
#             if href?
#               a href: href, p.name
#             else
#               p.name
#           )
#         td p.description
#         td ->

#           return (
#             if href?
#               a href: href, name
#             else
#               name
#           )

#

# Available Plugins:
# -----------------

#   * devices and sensors:
#     * [pilight plugin](http://www.pimatic.org/docs/pimatic-pilight/): Control devices working at 315Mhz, 433Mhz, 868Mhz etc. with pilight.
#     * [sispmctl plugin](http://www.pimatic.org/docs/pimatic-sispmctl/): SIS-PM Control: 4 sockets are manageable from the PC via USB port.
#     * [gpio plugin](http://www.pimatic.org/docs/pimatic-gpio/): GPIO contol and interrupt detection for the BeagleBone or Raspberry Pi.
#     * [shell execute plugin](http://www.pimatic.org/docs/pimatic-shell-execute/): Define devices by linux shell commands.
#     * [athome plugin](https://github.com/dfischbach/pimatic-athome): Arduino serial port connection for JeeNodes from JEELABS.
#   * frontend or api:
#     * [mobile-frontend plugin](http://www.pimatic.org/docs/pimatic-mobile-frontend/)
#     * [datalogger plugin](http://www.pimatic.org/docs/pimatic-datalogger/)
#     * [filebrowser plugin](http://www.pimatic.org/docs/pimatic-filebrowser/)
#     * [rest-api plugin](http://www.pimatic.org/docs/pimatic-rest-api/)
#     * [voice recognition plugin](http://www.pimatic.org/docs/pimatic-voice-recognition/)
#   * rule predicates and actions:
#     * [cron plugin](http://www.pimatic.org/docs/pimatic-cron/)
#     * [ping plugin](http://www.pimatic.org/docs/pimatic-ping/)
#     * [sunrise plugin](http://www.pimatic.org/docs/pimatic-sunrise/)
#     * [log-reader plugin](http://www.pimatic.org/docs/pimatic-log-reader/)
#     * [shell execute plugin](http://www.pimatic.org/docs/pimatic-shell-execute/)
#     * [mail plugin](http://www.pimatic.org/docs/pimatic-mail/)
#     * [pushover plugin](http://www.pimatic.org/docs/pimatic-pushover/)
