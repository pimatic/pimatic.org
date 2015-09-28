###
layout: default
###

fs = @require 'fs'
p = @getCore()
#console.log p
article id: 'page', =>
  div class: 'page-content', @content
  div class: 'pimatic-config', =>
    if fs.existsSync(p.compiledConfigSchema)
      h2 "Config Options"
      schema = JSON.parse fs.readFileSync(p.compiledConfigSchema).toString()
      text @printConfigShema schema
    if fs.existsSync(p.compiledDeviceConfigSchema)
      h2 "Device Config Options"
      schema = JSON.parse fs.readFileSync(p.compiledDeviceConfigSchema).toString()
      if schema.title?
        div schema.title
      for device, config of schema
        if device is "title" then continue
        h3 device
        text @printConfigShema config
