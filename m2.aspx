<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
<meta charset="utf-8">
<title>Simple Markers</title>
<style>
#map {
	height:100%;
}
html, body {
	height:100%;
	margin:0;
	padding:0;
}
</style>
</head>
<body>

<div id="map"></div>
<script>
function initMap(){
	var map=new google.maps.Map(document.getElementById('map'), {
		zoom:8,
		center:{lat:23.5,lng:121}
	});

	var marker_1=new google.maps.Marker({
		position:{lat:23.5,lng:121},
		map:map,
		title:'Hello World!'
	});

	var infowindow_1=new google.maps.InfoWindow({
		content:'ABC'
	})

	marker_1.addListener('click',function() {
		infowindow_1.open(map,marker_1);
	});	
}
</script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRYf2TIimDxZSeamwn88wAtKakJkYFOXs&callback=initMap"></script>
</body>
</html>