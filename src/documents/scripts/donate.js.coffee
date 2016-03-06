$ ->
  $('[data-toggle="tooltip"]').tooltip(placement: 'bottom')
  table = $('.stickers')
  stickersEnabled = $('#stickers-enabled');

  updateTable = =>
    if stickersEnabled.is(':checked')
      table.parent().removeClass('disabled')
    else
      table.parent().addClass('disabled')
    trs = table.find('tr')
    trs.find('td,th').removeClass('highlight')
    index = -1
    amount = parseFloat($('#amount').val())
    console.log(amount)
    unless isNaN(amount)
      if amount >= 20
        index = 2
      else if amount >= 10
        index = 1
      else if amount >= 5
        index = 0
    if index >= 0
      trs.each( ->
        tds = $(this).find('td,th')
        $(tds.get(index)).addClass('highlight')
      )
  updateTable()
  $('#amount').on('change', updateTable)
  $('input[name=item_name]').on('change', updateTable)
