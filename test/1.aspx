<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
<meta charset="utf-8">
<title>Info Windows</title>
<style>
#map {
	height: 100%;
}
html, body {
	height: 100%;
	margin: 0;
	padding: 0;
}
</style>
</head>
<body>

<div id="map"></div>
<script>
function initMap() {
        var uluru = {lat: -25.363, lng: 131.044};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 4,
          center: uluru
        });

        var infowindow = new google.maps.InfoWindow({
          content: "<iframe src=if.aspx width=600 height=400 frameborder=0></iframe>"
        });

        var marker = new google.maps.Marker({
          position: uluru,
          map: map,
          title: 'Uluru (Ayers Rock)'
        });
        marker.addListener('click', function() {
          infowindow.open(map, marker);
        });
      }
</script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRYf2TIimDxZSeamwn88wAtKakJkYFOXs&callback=initMap"></script>
</body>
</html>