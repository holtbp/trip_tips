// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
function initMap() {
  console.log('Stops map');
  var myLatLng = {
    lat: city.latitude,
    lng: city.longitude
  };

  // Create a map object and specify the DOM element for display.
  var map = new google.maps.Map(document.getElementById('map'), {
    center: myLatLng,
    scrollwheel: true,
    zoom: 10
  });

  for(var i = 0; i < sights.length; i++) {
    var sight = sights[i];
    var coords = {
      lat: sight.latitude,
      lng: sight.longitude
    };
    // Create a marker and set its position.
    var marker = new google.maps.Marker({
      map: map,
      position: coords,
      title: sight.name
    });
  }
}
