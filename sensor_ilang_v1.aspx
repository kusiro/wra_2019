<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
<meta charset="utf-8">
<title>豪雨災點</title>
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
<input type="checkbox" id="CB_sensor_ilang" onclick="toggle_sensor_ilang();"> 宜蘭<br/>
</div>
<div id="map"></div>
<script>
var markers_sensor_ilang=[];
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
	cmd.CommandText="select * from sensor_ilang;"
	dr=cmd.ExecuteReader()
	while dr.read()
		i=i+1
		response.write("var marker_" & i & "=new google.maps.Marker({" & VBNewLine)
			response.write("position:{lat:" & dr.item("lat") & ",lng:" & dr.item("lon") & "}," & VBNewLine)
			response.write("map:map," & VBNewLine)
			response.write("icon:'img/map_icon/metronetwork.png'" & VBNewLine)
		response.write("});" & VBNewLine)
		response.write("markers_sensor_ilang.push(marker_" & i & ");" & VBNewLine)
		
		response.write("var infowindow_" & i & "=new google.maps.InfoWindow({" & VBNewLine)
			response.write("content:'經度：" & dr.item("lon") & "<br/>緯度：" & dr.item("lat") & "<br/>地址：" & Trim(dr.item("address").ToString()) & ">'" & VBNewLine)
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
}
</script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRYf2TIimDxZSeamwn88wAtKakJkYFOXs&callback=initMap"></script>
</body>
</html>

<script>
function toggle_sensor_ilang() {
	if (document.getElementById('CB_sensor_ilang').checked) {
		for (var i=0;i < markers_sensor_ilang.length;i++) {
			markers_sensor_ilang[i].setMap(map);
		}
	}else{
		for (var i=0;i < markers_sensor_ilang.length;i++) {
			markers_sensor_ilang[i].setMap(null);
		}
	}
}
</script>