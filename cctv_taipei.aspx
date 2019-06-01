<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
<meta charset="utf-8">
<title>豪雨災點tes</title>
<style>
#map {
	height:100%;
}
html, body {
	height:100%;
	margin:0;
	padding:0;
}

#floating-panel{
	position:absolute;
	top:100px;
	left:10px;
	z-index:5;
	background-color:#fff;
	padding:16px;
	border:1px solid #999;
	line-height:30px;
	font-size:18px;
	font-weight:bold;
}
@media only screen and (max-width: 479px){
    #floating-panel{
		font-size:12px;
		padding:6px;
	}
}
</style>
</head>
<body style="font-family:微軟正黑體">

<div id="floating-panel">
<input type="checkbox" id="CB_cctv_taipei_交通局" onclick="toggle_cctv_taipei_交通局();"> CCTV 台北市 交通局<br/>
</div>
<div id="map"></div>
<script>
var markers_cctv_taipei_交通局=[];
var map;
function initMap() {
	map=new google.maps.Map(document.getElementById('map'), {
		zoom:8,
		center:{lat:23.5,lng:121}
	});
	
	<%
    Dim i As Integer=0
    Dim con As MySqlConnection=New MySqlConnection(Application("DB"))
    con.open()
    Dim cmd As New MySqlCommand()
    cmd.Connection=con
    Dim dr As MySqlDataReader
    cmd.CommandText = "select * from cctv_taipei_t;"
    dr =cmd.ExecuteReader()
    while dr.read()
        i=i+1
        response.write("var marker_" & i & "=new google.maps.Marker({" & VBNewLine)
        response.write("position:{lat:" & dr.item("lat") & ",lng:" & dr.item("lon") & "}," & VBNewLine)
        response.write("map:map," & VBNewLine)
        response.write("icon:'img/map_icon/cctv_red.png'" & VBNewLine)
        response.write("});" & VBNewLine)
        response.write("markers_cctv_taipei_交通局.push(marker_" & i & ");" & VBNewLine)

        response.write("var infowindow_" & i & "=new google.maps.InfoWindow({" & VBNewLine)
        response.write("content:'<img src=" & dr.item("url") & ">'" & VBNewLine)
        response.write("})" & VBNewLine)

        response.write("marker_" & i & ".addListener('click',function() {" & VBNewLine)
        response.write("infowindow_" & i & ".open(map,marker_" & i & ");" & VBNewLine)
        response.write("});" & VBNewLine)
    end while
    dr.close()
    con.close()
    con.dispose()
    con=nothing
	%>
	var markerCluster=new MarkerClusterer(map,markers_cctv_taipei_交通局,{imagePath: 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m'});
}
</script>
<script src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js"></script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRYf2TIimDxZSeamwn88wAtKakJkYFOXs&callback=initMap"></script>
</body>
</html>

<script>
function toggle_cctv_taipei_交通局() {
	if (document.getElementById('CB_cctv_taipei_交通局').checked) {
		for (var i=0;i < markers_cctv_taipei_交通局.length;i++) {
			markers_cctv_taipei_交通局[i].setMap(map);
		}
	}else{
		for (var i=0;i < markers_cctv_taipei_交通局.length;i++) {
			markers_cctv_taipei_交通局[i].setMap(null);
		}
	}
}
</script>