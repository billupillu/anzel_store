jQuery ->

  if $('.pagination').length
    $(window).scroll ->
       url = $('ul.pagination .next_page a').attr('href')
       if url && $(window).scrollTop() > $(document).height() - $(window).height() - $('#footer').height()
       	 $('.pagination').html("<h4>Fetching more products...</h4>") 
         $.getScript(url)
       $(window).scroll()
       