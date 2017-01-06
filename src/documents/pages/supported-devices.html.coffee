###
title: Supported Devices
layout: page
tags: ['page']
pageOrder: 1
menu: true
###

urlParse = @require('url').parse

capitalize = (s) -> s[0].toUpperCase() + s.slice(1)

buyTitle = (url) ->
  parsed = urlParse(url)
  return parsed.hostname

buyHref = (url) ->
  parsed = urlParse(url)
  if parsed.hostname is 'www.amazon.de'
    url += '?tag=pimatic-21'
  return url

devicesByType = {}
for d in @getAllDevices()
  if typeof devicesByType[d.type] is "undefined"
    devicesByType[d.type] = []
  devicesByType[d.type].push d

types = {
  switch: 'Switches'
  dimmer: 'Dimmers'
  shutter: 'Shutters'
  smokedetector: 'Smoke Detectors'
  sensor: 'Sensor'
  weather: 'Weather Stations'
  heating: 'Heating'
}

p 'The following devices are tested and supported by pimatic. To use the device the corresponding plugin must be installed.'

p ->
  text 'This list is provided voluntary without any warranty. '
  text 'However we give out best to check the compatibilty of each device. '
  text 'If you have problems with a device or missing one, please <a href="https://forum.pimatic.org">contact us</a>.'

p ->
  strong 'pimatic is not associated with any of these products. All rights belong to the corresponding product / trademark owner.'

div class: "devices-list", ->
  for type in Object.keys(types)
    devices = devicesByType[type];
    if typeof devices is "undefined" or devices.length is 0
      continue
    devices.sort( (a, b) -> if (a.brand + a.model) < (b.brand + b.model) then -1 else 1 )
    h2 id: type, types[type]
    table class: "table table-striped", ->
      thead ->
        tr class: (if devices[0].recommended then 'first-recommended' else ''), ->
          th class: 'device-name', "Device"
          th class: 'device-protocol', "Protocol"
          th class: 'device-plugin', "Plugin"
          th class: 'device-buy', "Buy"
      tbody ->
        for d in devices
          try
            pluginHref = "/plugins/#{d.plugin}"
            tr class: (if d.recommended then 'recommended' else ''), ->
              td class: 'device-name', ->
                h4 ->
                  text d.brand + " " + d.model
                  if d.recommended
                    text ' '
                    span class: 'badge', 'recommended'
                p d.description
                if d.notes
                  div class: 'notes', ->
                    text d.notes
              td class: 'device-protocol',  d.protocol
              td class: 'device-plugin', ->
                a class: "plugin", href: pluginHref, d.plugin
                if d.pluginInfo
                  text '<br>(' + d.pluginInfo + ')'
              td class: 'device-buy', ->
                if d.buy
                  for url in d.buy
                    a class: "buy", href: buyHref(url), buyTitle(url)
          catch e
            console.log "Unable to process device: #{JSON.stringify(d)}: #{e}"
            throw e