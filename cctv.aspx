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
<input type="checkbox" id="CB_cctv_tainan_交通局" onclick="toggle_cctv_tainan_交通局();"> CCTV 台南市 交通局<br/>
<input type="checkbox" id="CB_cctv_tainan_警察局" onclick="toggle_cctv_tainan_警察局();"> CCTV 台南市 警察局<br/>
<input type="checkbox" id="CB_cctv_taoyuan" onclick="toggle_cctv_taoyuan();"> CCTV 桃園市<br/>
<input type="checkbox" id="CB_cctv_gov" onclick="toggle_cctv_gov();"> CCTV 政府<br/>

</div>
<div id="map"></div>
<script>
var markers_cctv_tainan_交通局=[];
var markers_cctv_tainan_警察局=[];
var markers_cctv_taoyuan=[];
var markers_cctv_gov=[];

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

    cmd.CommandText = "select * from cctv_tainan_t limit 3;"
    dr =cmd.ExecuteReader()
    while dr.read()
        i=i+1
        response.write("var marker_" & i & "=new google.maps.Marker({" & VBNewLine)
        response.write("position:{lat:" & dr.item("lat") & ",lng:" & dr.item("lon") & "}," & VBNewLine)
        'response.write("map:map," & VBNewLine)
        response.write("icon:'img/map_icon/cctv.png'," & VBNewLine)
        response.write("});" & VBNewLine)
        response.write("markers_cctv_tainan_交通局.push(marker_" & i & ");" & VBNewLine)

        response.write("var infowindow_" & i & "=new google.maps.InfoWindow({" & VBNewLine)
        response.write("content:'<img src=" & dr.item("url") & ">'" & VBNewLine)
        response.write("})" & VBNewLine)

        response.write("marker_" & i & ".addListener('click',function() {" & VBNewLine)
        response.write("infowindow_" & i & ".open(map,marker_" & i & ");" & VBNewLine)
        response.write("});" & VBNewLine)
    end while
    dr.close()

    cmd.CommandText="select * from cctv_tainan_警察局 limit 3;"
    dr=cmd.ExecuteReader()
    while dr.read()
        i=i+1
        response.write("var marker_" & i & "=new google.maps.Marker({" & VBNewLine)
        response.write("position:{lat:" & dr.item("lat") & ",lng:" & dr.item("lon") & "}," & VBNewLine)
        'response.write("map:map," & VBNewLine)
        response.write("icon:'img/map_icon/cctv.png'," & VBNewLine)
        response.write("});" & VBNewLine)
        response.write("markers_cctv_tainan_警察局.push(marker_" & i & ");" & VBNewLine)

        response.write("var infowindow_" & i & "=new google.maps.InfoWindow({" & VBNewLine)
        response.write("content:'<img src=" & dr.item("url") & ">'" & VBNewLine)
        response.write("})" & VBNewLine)

        response.write("marker_" & i & ".addListener('click',function() {" & VBNewLine)
        response.write("infowindow_" & i & ".open(map,marker_" & i & ");" & VBNewLine)
        response.write("});" & VBNewLine)
    end while
    dr.close()

    cmd.CommandText="select * from cctv_taoyuan where not isNull(lon) limit 3;"
    dr=cmd.ExecuteReader()
    while dr.read()
        i=i+1
        response.write("var marker_" & i & "=new google.maps.Marker({" & VBNewLine)
        response.write("position:{lat:" & dr.item("lat") & ",lng:" & dr.item("lon") & "}," & VBNewLine)
        'response.write("map:map," & VBNewLine)
        response.write("icon:'img/map_icon/cctv.png'," & VBNewLine)
        response.write("});" & VBNewLine)
        response.write("markers_cctv_taoyuan.push(marker_" & i & ");" & VBNewLine)

        response.write("var infowindow_" & i & "=new google.maps.InfoWindow({" & VBNewLine)
        response.write("content:'<img src=" & dr.item("url") & ">'" & VBNewLine)
        response.write("})" & VBNewLine)

        response.write("marker_" & i & ".addListener('click',function() {" & VBNewLine)
        response.write("infowindow_" & i & ".open(map,marker_" & i & ");" & VBNewLine)
        response.write("});" & VBNewLine)
    end while
    dr.close()

    cmd.CommandText="select * from cctv_gov;"
    dr=cmd.ExecuteReader()
    while dr.read()
        i=i+1
        response.write("var marker_" & i & "=new google.maps.Marker({" & VBNewLine)
        response.write("position:{lat:" & dr.item("lat") & ",lng:" & dr.item("lon") & "}," & VBNewLine)
        'response.write("map:map," & VBNewLine)
        response.write("icon:'img/map_icon/cctv.png'," & VBNewLine)
        response.write("});" & VBNewLine)
        response.write("markers_cctv_gov.push(marker_" & i & ");" & VBNewLine)

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
}
</script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRYf2TIimDxZSeamwn88wAtKakJkYFOXs&callback=initMap"></script>
</body>
</html>

<script>
function toggle_rain_2016_05_16() {
	if (document.getElementById('CB_rain_2016_05_16').checked) {
		for (var i=0;i < markers_rain_2016_05_16.length;i++) {
			markers_rain_2016_05_16[i].setMap(map);
		}
	}else{
		for (var i=0;i < markers_rain_2016_05_16.length;i++) {
			markers_rain_2016_05_16[i].setMap(null);
		}
	}
}

function toggle_rain_2016_06_02() {
	if (document.getElementById('CB_rain_2016_06_02').checked) {
		for (var i=0;i < markers_rain_2016_06_02.length;i++) {
			markers_rain_2016_06_02[i].setMap(map);
		}
	}else{
		for (var i=0;i < markers_rain_2016_06_02.length;i++) {
			markers_rain_2016_06_02[i].setMap(null);
		}
	}
}

function toggle_rain_2016_06_10() {
	if (document.getElementById('CB_rain_2016_06_10').checked) {
		for (var i=0;i < markers_rain_2016_06_10.length;i++) {
			markers_rain_2016_06_10[i].setMap(map);
		}
	}else{
		for (var i=0;i < markers_rain_2016_06_10.length;i++) {
			markers_rain_2016_06_10[i].setMap(null);
		}
	}
}

function toggle_rain_2016_06_17() {
	if (document.getElementById('CB_rain_2016_06_17').checked) {
		for (var i=0;i < markers_rain_2016_06_17.length;i++) {
			markers_rain_2016_06_17[i].setMap(map);
		}
	}else{
		for (var i=0;i < markers_rain_2016_06_17.length;i++) {
			markers_rain_2016_06_17[i].setMap(null);
		}
	}
}

function toggle_rain_2016_06_28() {
	if (document.getElementById('CB_rain_2016_06_28').checked) {
		for (var i=0;i < markers_rain_2016_06_28.length;i++) {
			markers_rain_2016_06_28[i].setMap(map);
		}
	}else{
		for (var i=0;i < markers_rain_2016_06_28.length;i++) {
			markers_rain_2016_06_28[i].setMap(null);
		}
	}
}

function toggle_rain_2016_09_06() {
	if (document.getElementById('CB_rain_2016_09_06').checked) {
		for (var i=0;i < markers_rain_2016_09_06.length;i++) {
			markers_rain_2016_09_06[i].setMap(map);
		}
	}else{
		for (var i=0;i < markers_rain_2016_09_06.length;i++) {
			markers_rain_2016_09_06[i].setMap(null);
		}
	}
}

function toggle_rain_2016_10_06() {
	if (document.getElementById('CB_rain_2016_10_06').checked) {
		for (var i=0;i < markers_rain_2016_10_06.length;i++) {
			markers_rain_2016_10_06[i].setMap(map);
		}
	}else{
		for (var i=0;i < markers_rain_2016_10_06.length;i++) {
			markers_rain_2016_10_06[i].setMap(null);
		}
	}
}

function toggle_rain_2016_艾利() {
	if (document.getElementById('CB_rain_2016_艾利').checked) {
		for (var i=0;i < markers_rain_2016_艾利.length;i++) {
			markers_rain_2016_艾利[i].setMap(map);
		}
	}else{
		for (var i=0;i < markers_rain_2016_艾利.length;i++) {
			markers_rain_2016_艾利[i].setMap(null);
		}
	}
}

function toggle_rain_2016_梅姬() {
	if (document.getElementById('CB_rain_2016_梅姬').checked) {
		for (var i=0;i < markers_rain_2016_梅姬.length;i++) {
			markers_rain_2016_梅姬[i].setMap(map);
		}
	}else{
		for (var i=0;i < markers_rain_2016_梅姬.length;i++) {
			markers_rain_2016_梅姬[i].setMap(null);
		}
	}
}

function toggle_rain_2016_莫蘭蒂() {
	if (document.getElementById('CB_rain_2016_莫蘭蒂').checked) {
		for (var i=0;i < markers_rain_2016_莫蘭蒂.length;i++) {
			markers_rain_2016_莫蘭蒂[i].setMap(map);
		}
	}else{
		for (var i=0;i < markers_rain_2016_莫蘭蒂.length;i++) {
			markers_rain_2016_莫蘭蒂[i].setMap(null);
		}
	}
}

function toggle_cctv_tainan_交通局() {
	if (document.getElementById('CB_cctv_tainan_交通局').checked) {
		for (var i=0;i < markers_cctv_tainan_交通局.length;i++) {
			markers_cctv_tainan_交通局[i].setMap(map);
		}
	}else{
		for (var i=0;i < markers_cctv_tainan_交通局.length;i++) {
			markers_cctv_tainan_交通局[i].setMap(null);
		}
	}
}

function toggle_cctv_tainan_警察局() {
	if (document.getElementById('CB_cctv_tainan_警察局').checked) {
		for (var i=0;i < markers_cctv_tainan_警察局.length;i++) {
			markers_cctv_tainan_警察局[i].setMap(map);
		}
	}else{
		for (var i=0;i < markers_cctv_tainan_警察局.length;i++) {
			markers_cctv_tainan_警察局[i].setMap(null);
		}
	}
}

function toggle_cctv_taoyuan() {
	if (document.getElementById('CB_cctv_taoyuan').checked) {
		for (var i=0;i < markers_cctv_taoyuan.length;i++) {
			markers_cctv_taoyuan[i].setMap(map);
		}
	}else{
		for (var i=0;i < markers_cctv_taoyuan.length;i++) {
			markers_cctv_taoyuan[i].setMap(null);
		}
	}
}

function toggle_cctv_gov(){
	if (document.getElementById('CB_cctv_gov').checked) {
		for (var i=0;i < markers_cctv_gov.length;i++) {
			markers_cctv_gov[i].setMap(map);
		}
	}else{
		for (var i=0;i < markers_cctv_gov.length;i++) {
			markers_cctv_gov[i].setMap(null);
		}
	}
}
</script>