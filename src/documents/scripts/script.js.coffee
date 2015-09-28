$ ->
  path = window.location.pathname
  # $('section > pre > code').addClass('prettyprint')
  # prettyPrint()
  if(path.match /^\/api\/.*/ or path.match /^\/docs\/.*/ or path.match /^\/guide\/.*/ or path.match /^\/plugins\/.*/)
    $('#content').scrollNav(
    	sections: 'h2',
      subSections: 'h3',
      sectionElem: 'div',
      showHeadline: true,
      headlineText: 'Scroll To',
      showTopLink: true,
      topLinkText: 'Top',
      fixedMargin: 40,
      scrollOffset: 40,
      animated: true,
      speed: 500,
      insertTarget: this.selector,
      insertLocation: 'insertBefore',
    )

  $(".toggle-table").click( ->
    table = $(this).next()
    icon = $(this).find('i')
    if table.hasClass('hidden')
      table.removeClass('hidden')
      icon.removeClass('glyphicon-chevron-right').addClass('glyphicon-chevron-down')
    else
      table.addClass('hidden')
      icon.addClass('glyphicon-chevron-right').removeClass('glyphicon-chevron-down')
  )