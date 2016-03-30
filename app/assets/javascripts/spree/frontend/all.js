// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require spree/frontend

//= require_tree .
//= require spree/frontend/spree_wishlist


	
$(document).ready(function(){
	$("#artists-brief").owlCarousel({
 
      autoPlay: 3000, //Set AutoPlay to 3 seconds
 
      items : 2,
      itemsDesktop : [1199,3],
      itemsDesktopSmall : [979,3]
 
    });
     $('.owl-pagination').css({"display":"none"});
    //$('#kk .owl-prev').css({"display":"none"});
    //$('#kk .owl-next').css({"display":"none"});

       $("#kkkk").owlCarousel({
 
      navigation : true, // Show next and prev buttons
      autoPlay : 3000,
      slideSpeed : 300,
      paginationSpeed : 500,
      stopOnHover : true,
      singleItem:true
 
      // "singleItem:true" is a shortcut for:
      // items : 1, 
      // itemsDesktop : false,
      // itemsDesktopSmall : false,
      // itemsTablet: false,
      // itemsMobile : false
 
  });

    $('.owl-pagination').css({"display":"none"});
});

