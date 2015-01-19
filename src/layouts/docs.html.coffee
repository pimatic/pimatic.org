###
layout: default
###

sec = @document.relativePath.substring(0, @document.relativePath.lastIndexOf('/')+1)
toc = @getFilesAtPath(sec, [pageOrder:1,title:1])
tocHeader = @document.relativePath.split('/')[1] + " documentation"

section '#content', ->
	div '.page', ->
		text @partial('block.html.coffee', {
			partial: @partial
			cssClasses: ["docs"].concat(@document.cssClasses or [])
			permalink: @document.url
			#heading: @document.title
			toc: toc
			tocHeader: tocHeader
			subheading: @document.subheading
			content: @content
			document: @document
		})