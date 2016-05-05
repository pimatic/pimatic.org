# Prepare
{permalink,comments,date,heading,subheading,author,content,cssClasses,prev,next,up,document,partial, toc, tocHeader} = @

# Render
article ".block"+(if cssClasses then '.'+cssClasses.join('.') else ""), ->
	if heading?
		header ".block-header", ->
			if permalink
				a '.permalink.hover-link', href:permalink, ->
					h1 h(heading)
			else
				h1 h(heading)
			if subheading
				h2 h(subheading)
			if date
				span '.date', -> date
			if author
				a '.author', href:"/people/#{author}", -> author

	if toc?
		dir = document.relativePath.substring(0, document.relativePath.lastIndexOf('/'))
		section ".block-toc", ->
			div '.panel.panel-default.toc', ->
				docs = toc.toJSON()
				div '.panel-heading', -> 
					if docs.length > 0 
						doc = docs[0]
						docs.splice 0, 1
						if doc.title?
							a "", href:h(doc.url), -> h(doc.title)
				div '.panel-body.list-group', ->
					lastSubPath = null
					for doc in docs
						# check if its a subpage
						subPath = doc.relativePath.replace(dir, "")
						if subPath.length > 0 and subPath.lastIndexOf('/') isnt 0
							subPath = subPath.substring(1, subPath.length)
							subPath = subPath.substring(0, subPath.indexOf('/')+1)
							if subPath is lastSubPath then continue
							lastSubPath = subPath
							a ".list-group-item", href:h(doc.url), -> h(subPath)							
						else	
							active = (if doc.url is document.url then '.active' else '')
							if doc.title?
								a ".list-group-item#{active}", href:h(doc.url), -> h(doc.title)
							else
								console.error("Document " + doc.url + " has not title!");

	section ".block-content", content

	footer ".block-footer", ->

		if comments
			aside '.comments', ->
				text partial('services/disqus', {document})

		if prev or up or next
			ul ".pager", ->
				if prev
					li ".previous", ->
						a href:h(prev.url), ->
							span ".icon", ->
							span ".title", -> "&larr; " + h(prev.title)
				if up
					a '.up', href:h(up.url), ->
						span '.icon', ->
						span '.title', -> h(up.title)
				if next
					li ".next", ->
						a href:h(next.url), ->
							span ".icon", ->
							span ".title", -> h(next.title) + " &rarr;"

if document.editUrl
	aside '.block-edit', ->
		a href:document.editUrl, "Edit and improve this page!"