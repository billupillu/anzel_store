jQuery ->

  $('.email_to_friend').remove()
  $('#new_wished_product button').addClass('productwishlist')
  if $(document).height() < $(document).width()
	  $(window).scroll ->
	        
	    if $(this).scrollTop() > 249
		    $('#hojastick').addClass 'sticky'
		    $('#main-nav').addClass 'bdr'
		    $('#a1').addClass 'abdr'
		    $('#a5').addClass 'abdrlast'
		    $('#a6').addClass 'abdrcart'
		   else
		    $('#hojastick').removeClass 'sticky'
		    $('#main-nav').removeClass 'bdr'
		    $('#a1').removeClass 'abdr'
		    $('#a5').removeClass 'abdrlast'
		    $('#a6').removeClass 'abdrcart'
		   return 
