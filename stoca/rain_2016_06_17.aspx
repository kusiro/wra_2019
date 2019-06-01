<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
<meta charset="utf-8">
<title>豪雨災點</title>
<style>
#map{
	height:100%;
}
html,body{
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
<input type="checkbox" id="CB_rain_2016_06_17" onclick="toggle_rain_2016_06_17();" checked> 2016-06-17 豪雨災點<br/>

<input type="checkbox" id="CB_cctv_taipei_T" onclick="toggle_cctv_taipei_T();"> CCTV 台北市 交通局<br/>

<input type="checkbox" id="CB_cctv_tainan_T" onclick="toggle_cctv_tainan_T();"> CCTV 台南市 交通局<br/>
<input type="checkbox" id="CB_cctv_tainan_P" onclick="toggle_cctv_tainan_P();"> CCTV 台南市 警察局<br/>
<input type="checkbox" id="CB_cctv_taoyuan" onclick="toggle_cctv_taoyuan();"> CCTV 桃園市<br/>
<input type="checkbox" id="CB_cctv_gov" onclick="toggle_cctv_gov();"> CCTV 公路總局<br/>
<input type="checkbox" id="CB_ilan" onclick="toggle_ilan();"> 宜蘭縣智慧立桿<br/>
</div>

<div id="map"></div>

<script>
var markers_rain_2016_06_17=[];

var markers_cctv_taipei_T=[];

var markers_cctv_tainan_T=[];
var markers_cctv_tainan_P=[];
var markers_cctv_taoyuan=[];
var markers_cctv_gov=[];
var markers_ilan=[];

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
	cmd.CommandText="select * from rain_2016_06_17 where not isNull(lon);"
	Dim dr As MySqlDataReader=cmd.ExecuteReader()
	while dr.read()
		i=i+1
		response.write("var marker_" & i & "=new google.maps.Marker({" & VBNewLine)
			response.write("position:{lat:" & dr.item("lat") & ",lng:" & dr.item("lon") & "}," & VBNewLine)
			response.write("map:map," & VBNewLine)
			response.write("icon:'../img/map_icon/flood.png'," & VBNewLine)
		response.write("});" & VBNewLine)
		response.write("markers_rain_2016_06_17.push(marker_" & i & ");" & VBNewLine)
		
		response.write("var infowindow_" & i & "=new google.maps.InfoWindow({" & VBNewLine)
			response.write("content:'災害地點：" & dr.item("災害地點") & "<br/>災情描述：" & dr.item("災情描述") & "'" & VBNewLine)
		response.write("})" & VBNewLine)

		response.write("marker_" & i & ".addListener('click',function() {" & VBNewLine)
			response.write("infowindow_" & i & ".open(map,marker_" & i & ");" & VBNewLine)
		response.write("});" & VBNewLine)
	end while
	dr.close()
	
	cmd.CommandText="select * from cctv_taipei_T;"
	dr=cmd.ExecuteReader()
	while dr.read()
		i=i+1
		response.write("var marker_" & i & "=new google.maps.Marker({" & VBNewLine)
			response.write("position:{lat:" & dr.item("lat") & ",lng:" & dr.item("lon") & "}," & VBNewLine)
			'response.write("map:map," & VBNewLine)
			'response.write("title:'" & dr.item("address").ToString() & "'," & VBNewLine)
			response.write("icon:'../img/map_icon/cctv_orange.png'," & VBNewLine)
		response.write("});" & VBNewLine)
		response.write("markers_cctv_taipei_T.push(marker_" & i & ");" & VBNewLine)
		
		response.write("var infowindow_" & i & "=new google.maps.InfoWindow({" & VBNewLine)
			response.write("content:'<iframe src=if_cctv_taipei_T.aspx?aid=" & dr.item("aid") & " width=600 height=400 frameborder=0></iframe>'" & VBNewLine)
		response.write("})" & VBNewLine)

		response.write("marker_" & i & ".addListener('click',function() {" & VBNewLine)
			response.write("infowindow_" & i & ".open(map,marker_" & i & ");" & VBNewLine)
		response.write("});" & VBNewLine)
	end while
	dr.close()	
	
	cmd.CommandText="select * from cctv_tainan_T;"
	dr=cmd.ExecuteReader()
	while dr.read()
		i=i+1
		response.write("var marker_" & i & "=new google.maps.Marker({" & VBNewLine)
			response.write("position:{lat:" & dr.item("lat") & ",lng:" & dr.item("lon") & "}," & VBNewLine)
			'response.write("map:map," & VBNewLine)
			response.write("title:'" & dr.item("address").ToString() & "'," & VBNewLine)
			response.write("icon:'../img/map_icon/cctv_orange.png'," & VBNewLine)
		response.write("});" & VBNewLine)
		response.write("markers_cctv_tainan_T.push(marker_" & i & ");" & VBNewLine)
		
		response.write("var infowindow_" & i & "=new google.maps.InfoWindow({" & VBNewLine)
			'response.write("content:'<img src=" & dr.item("url") & ">'" & VBNewLine)
			response.write("content:'<iframe src=if_cctv_tainan_T.aspx?aid=" & dr.item("aid") & " width=600 height=400 frameborder=0></iframe>'" & VBNewLine)
		response.write("})" & VBNewLine)

		response.write("marker_" & i & ".addListener('click',function() {" & VBNewLine)
			response.write("infowindow_" & i & ".open(map,marker_" & i & ");" & VBNewLine)
		response.write("});" & VBNewLine)
	end while
	dr.close()
	
	cmd.CommandText="select * from cctv_tainan_P;"
	dr=cmd.ExecuteReader()
	while dr.read()
		i=i+1
		response.write("var marker_" & i & "=new google.maps.Marker({" & VBNewLine)
			response.write("position:{lat:" & dr.item("lat") & ",lng:" & dr.item("lon") & "}," & VBNewLine)
			'response.write("map:map," & VBNewLine)
			response.write("icon:'../img/map_icon/cctv_orange.png'," & VBNewLine)
		response.write("});" & VBNewLine)
		response.write("markers_cctv_tainan_P.push(marker_" & i & ");" & VBNewLine)
		
		response.write("var infowindow_" & i & "=new google.maps.InfoWindow({" & VBNewLine)
			'response.write("content:'<img src=" & dr.item("url") & ">'" & VBNewLine)
			response.write("content:'<iframe src=if_cctv_tainan_P.aspx?aid=" & dr.item("aid") & " width=600 height=400 frameborder=0></iframe>'" & VBNewLine)
		response.write("})" & VBNewLine)

		response.write("marker_" & i & ".addListener('click',function() {" & VBNewLine)
			response.write("infowindow_" & i & ".open(map,marker_" & i & ");" & VBNewLine)
		response.write("});" & VBNewLine)
	end while
	dr.close()
	
	cmd.CommandText="select * from cctv_taoyuan where not isNull(lon);"
	dr=cmd.ExecuteReader()
	while dr.read()
		i=i+1
		response.write("var marker_" & i & "=new google.maps.Marker({" & VBNewLine)
			response.write("position:{lat:" & dr.item("lat") & ",lng:" & dr.item("lon") & "}," & VBNewLine)
			'response.write("map:map," & VBNewLine)
			response.write("icon:'../img/map_icon/cctv_red.png'," & VBNewLine)
		response.write("});" & VBNewLine)
		response.write("markers_cctv_taoyuan.push(marker_" & i & ");" & VBNewLine)
		
		response.write("var infowindow_" & i & "=new google.maps.InfoWindow({" & VBNewLine)
			'response.write("content:'<img src=" & dr.item("url") & ">'" & VBNewLine)
			response.write("content:'<iframe src=if_cctv_taoyuan.aspx?aid=" & dr.item("aid") & " width=600 height=400 frameborder=0></iframe>'" & VBNewLine)
		response.write("})" & VBNewLine)

		response.write("marker_" & i & ".addListener('click',function() {" & VBNewLine)
			response.write("infowindow_" & i & ".open(map,marker_" & i & ");" & VBNewLine)
		response.write("});" & VBNewLine)
	end while
	dr.close()
	
	cmd.CommandText="select * from cctv_gov where not isNull(lon);"
	dr=cmd.ExecuteReader()
	while dr.read()
		i=i+1
		response.write("var marker_" & i & "=new google.maps.Marker({" & VBNewLine)
			response.write("position:{lat:" & dr.item("lat") & ",lng:" & dr.item("lon") & "}," & VBNewLine)
			'response.write("map:map," & VBNewLine)
			response.write("icon:'../img/map_icon/cctv.png'," & VBNewLine)
		response.write("});" & VBNewLine)
		response.write("markers_cctv_gov.push(marker_" & i & ");" & VBNewLine)
		
		response.write("var infowindow_" & i & "=new google.maps.InfoWindow({" & VBNewLine)
			'response.write("content:'<img src=" & dr.item("url") & ">'" & VBNewLine)
			response.write("content:'<iframe src=if_cctv_gov.aspx?aid=" & dr.item("aid") & " width=600 height=400 frameborder=0></iframe>'" & VBNewLine)
		response.write("})" & VBNewLine)

		response.write("marker_" & i & ".addListener('click',function() {" & VBNewLine)
			response.write("infowindow_" & i & ".open(map,marker_" & i & ");" & VBNewLine)
		response.write("});" & VBNewLine)
	end while
	dr.close()
	cmd.CommandText="select * from sensor_ilang;"
	dr=cmd.ExecuteReader()
	while dr.read()
		i=i+1
		response.write("var marker_" & i & "=new google.maps.Marker({" & VBNewLine)
			response.write("position:{lat:" & dr.item("lat") & ",lng:" & dr.item("lon") & "}," & VBNewLine)
			'response.write("map:map," & VBNewLine)
			response.write("icon:'../img/map_icon/powerlinepole.png'" & VBNewLine)
		response.write("});" & VBNewLine)
		response.write("markers_ilan.push(marker_" & i & ");" & VBNewLine)
		
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

function toggle_cctv_taipei_T() {
	if (document.getElementById('CB_cctv_taipei_T').checked) {
		for (var i=0;i < markers_cctv_taipei_T.length;i++) {
			markers_cctv_taipei_T[i].setMap(map);
		}
	}else{
		for (var i=0;i < markers_cctv_taipei_T.length;i++) {
			markers_cctv_taipei_T[i].setMap(null);
		}
	}
}

function toggle_cctv_tainan_T() {
	if (document.getElementById('CB_cctv_tainan_T').checked) {
		for (var i=0;i < markers_cctv_tainan_T.length;i++) {
			markers_cctv_tainan_T[i].setMap(map);
		}
	}else{
		for (var i=0;i < markers_cctv_tainan_T.length;i++) {
			markers_cctv_tainan_T[i].setMap(null);
		}
	}
}

function toggle_cctv_tainan_P() {
	if (document.getElementById('CB_cctv_tainan_P').checked) {
		for (var i=0;i < markers_cctv_tainan_P.length;i++) {
			markers_cctv_tainan_P[i].setMap(map);
		}
	}else{
		for (var i=0;i < markers_cctv_tainan_P.length;i++) {
			markers_cctv_tainan_P[i].setMap(null);
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

function toggle_cctv_gov() {
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

function toggle_ilan() {
	if (document.getElementById('CB_ilan').checked) {
		for (var i=0;i < markers_cctv_gov.length;i++) {
			markers_ilan[i].setMap(map);
		}
	}else{
		for (var i=0;i < markers_cctv_gov.length;i++) {
			markers_ilan[i].setMap(null);
		}
	}
}
</script>