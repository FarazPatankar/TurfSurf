// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).on("ready", function(){
	// mixItUp
	$('#Container').mixItUp({
	callbacks: {
		onMixFail: function(state){
			alert('No elements found matching '+state.activeFilter);
			}
		}
	});

	// Filter buttons
	$('.js-show-all').on("click", function(){
		$('.js-arena').hide();
		$('.js-day').hide();
	})

	$('.js-filter-arena').on("click", function(){
		$('.js-day').hide();
		$('.js-arena').show();
	})

	$('.js-filter-day').on("click", function(){
		$('.js-arena').hide();
		$('.js-day').show();
	})

	//Maps
	var directionsDisplay = new google.maps.DirectionsRenderer();
	var directionsService = new google.maps.DirectionsService();

	function getCurrentLocation() {
		if(navigator.geolocation)
	    navigator.geolocation.getCurrentPosition(calcRoute);
	}

	function calcRoute(position) {
	  var origin = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
	  var arena_lat = $('.js-game-coords').data("lat");
	  var arena_lng = $('.js-game-coords').data("lng");
	  var destination = new google.maps.LatLng(arena_lat, arena_lng);
	  var request = {
	      origin:      origin,
	      destination: destination,
	      travelMode:  google.maps.TravelMode.DRIVING
	  };
	  directionsService.route(request, function(response, status) {
	    if (status == google.maps.DirectionsStatus.OK) {
	      directionsDisplay.setDirections(response);
	    }
	  });
	}

	getCurrentLocation();

	var handler = Gmaps.build('Google');
	handler.buildMap({ internal: {id: 'geolocation'}}, function(){
	  directionsDisplay.setMap(handler.getMap());
	});

})

