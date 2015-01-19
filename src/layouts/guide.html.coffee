###
layout: default
###

guideCollection = @getCollection('guides')
for item,index in guideCollection.models
	if item.id is @document.id
		break

prevModel = guideCollection.models[index-1] ? null
nextModel = guideCollection.models[index+1] ? null

# for d in 
# 	console.log d.url

sec = @document.url.split('/')[2]
toc = @getFilesAtPath("guide/" + sec, [guideOrder:1,title:1])
tocHeader = (switch sec
	when 'getting-started' then 'Getting Started Guide'
	when 'usage' then 'Usage Guide'
	when 'development' then 'Development Guide'
	else 'Overview'
)

section '#content', ->
	div '.page', ->
		text @partial('block.html.coffee', {
			partial: @partial
			cssClasses: ["guide"].concat(@document.cssClasses or [])
			permalink: @document.url
			heading: @document.title
			subheading: @document.subheading
			content: @content
			document: @document
			toc: toc
			tocHeader: tocHeader
			prev:
				if prevModel
					url: prevModel.attributes.url
					title: prevModel.attributes.title
			next:
				if nextModel
					url: nextModel.attributes.url
					title: nextModel.attributes.title
		})