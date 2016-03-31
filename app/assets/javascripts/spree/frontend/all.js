// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require owl.carousel
//= require spree/frontend

//= require_tree .
//= require spree/frontend/spree_wishlist

$(document).ready(function(){
	(function () {
            "use strict";

            function initialize() {
                
                var myLatLng = new google.maps.LatLng(28.511063, 77.175117), // Your coordinates
                    mappy = {
                        center: myLatLng,
                        zoom: 17,
                        scrollwheel: false,
                        mapTypeId: google.maps.MapTypeId.ROADMAP,
                        styles: [//Style for map
                            {
                                "featureType": "landscape",
                                "stylers": [
                                    {
                                        "saturation": -100
                                    },
                                    {
                                        "lightness": 25
                                    },
                                    {
                                        "visibility": "on"
                                    }
                                ]
                            },
                            {
                                "featureType": "poi",
                                "stylers": [
                                    {
                                        "saturation": -100
                                    },
                                    {
                                        "lightness": 51
                                    }
                                ]
                            },
                            {
                                "featureType": "road.highway",
                                "stylers": [
                                    {
                                        "saturation": -50
                                    }
                                ]
                            },
                            {
                                "featureType": "road.arterial",
                                "stylers": [
                                    {
                                        "saturation": -20
                                    },
                                    {
                                        "lightness": 30
                                    }
                                ]
                            },
                            {
                                "featureType": "road.local",
                                "stylers": [
                                    {
                                        "saturation": -100
                                    },
                                    {
                                        "lightness": 40
                                    },
                                    {
                                        "visibility": "on"
                                    }
                                ]
                            },
                            {
                                "featureType": "transit",
                                "stylers": [
                                    {
                                        "saturation": -100
                                    },
                                    {
                                        "visibility": "simplified"
                                    }
                                ]
                            },
                            {
                                "featureType": "water",
                                "elementType": "labels",
                                "stylers": [
                                    {
                                        "visibility": "on"
                                    },
                                    {
                                        "lightness": -25
                                    },
                                    {
                                        "saturation": -100
                                    }
                                ]
                            },
                            {
                                "featureType": "water",
                                "elementType": "geometry",
                                "stylers": [
                                    {
                                        "hue": "#ffff00"
                                    },
                                    {
                                        "lightness": -25
                                    },
                                    {
                                        "saturation": -97
                                    }
                                ]
                            }
                        ]
                    };
                    
                var map = new google.maps.Map(document.getElementById("footer-top-small-map"), mappy),
                    newpin = 'images/pin2.png';

                new google.maps.Marker({
                    position: myLatLng,
                    map: map,
                    icon: newpin,
                    animation: google.maps.Animation.DROP,
                    title: 'Granada' // Title for marker
                });

                /* Create new lat and long for label placed little bit down from marker*/
                var labelLatLng = new google.maps.LatLng(51.514863, -0.133689),
                    mapLabel = new MapLabel({
                        text: 'Granada',
                        position: labelLatLng,
                        map: map,
                        fontSize: 18,
                        align: 'center'
                    });

                mapLabel.set('position', labelLatLng);
                mapLabel.set('fontColor', '#868176');
                mapLabel.set('fontSize', 12);
                mapLabel.set('strokeWeight', 0);
            }

            if (document.getElementById("footer-top-small-map")) {
                google.maps.event.addDomListener(window, 'load', initialize);
            }
        }());
});
	

