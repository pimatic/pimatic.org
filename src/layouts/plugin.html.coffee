###
layout: default
###

fs = @require 'fs'

plugins = @getAllPlugins()
plugin = null
for pl in plugins
  if pl.name is @document.pluginName
    plugin = pl
    break

repositoryLink = (p) ->
  href = null
  match = p.repository?.url?.match(/.+?github\.com\/(.+?)\/(pimatic-.+?)\.git/)
  if match?
    href = "https://github.com/#{match[1]}/#{match[2]}/"
  else
    href = p.homepage
  return href

npmLink = (p) ->
  return "https://www.npmjs.com/package/#{p.name}"

if not plugin?
  console.error("Could not find plugin: #{@document.pluginName}")
  return

authorInfo = @author(plugin)
ropoUrl = repositoryLink(plugin)

content = @content.replace(/src=\"([^\"]+)\"/g, (full, url) ->
  match = plugin.repository?.url?.match(/.+?github\.com\/(.+?)\/(pimatic-.+?)\.git/)
  if match? and url.indexOf('://') is -1
    if url.indexOf('/') isnt 0
      url = "/#{url}"
    url = "https://raw.githubusercontent.com/#{match[1]}/#{match[2]}/master#{url}"
  return "src=\"#{url}\""
)


article id: 'page', =>
  p class: "meta", =>
    strong "#{plugin.name}"
    text " by "
    a class: "author", href: authorInfo.href, -> authorInfo.name
    text ' | '
    a class: "github", href: ropoUrl, "github"
    text ' | '
    a class: "npm", href: npmLink(plugin), "npm"
  div class: 'page-content markdown', content
  div =>
    if fs.existsSync(plugin.compiledConfigSchema)
      h2 "Plugin Config Options"
      schema = JSON.parse fs.readFileSync(plugin.compiledConfigSchema).toString()
      text @printConfigShema schema
    if fs.existsSync(plugin.compiledDeviceConfigSchema)
      h2 "Device Config Options"
      schema = JSON.parse fs.readFileSync(plugin.compiledDeviceConfigSchema).toString()
      if schema.title?
        div schema.title
      for device, config of schema
        if device is "title" then continue
        h3 device
        text @printConfigShema config
  div => "#{plugin.name} is written by #{authorInfo.name}"
