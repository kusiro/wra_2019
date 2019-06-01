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
<input type="checkbox" id="CB_rain_2016_05_16" onclick="toggle_rain_2016_05_16();" checked> 2016-05-16 豪雨災點<br/>
<input type="checkbox" id="CB_rain_2016_06_02" onclick="toggle_rain_2016_06_02();"> 2016-06-02 豪雨災點<br/>
<input type="checkbox" id="CB_rain_2016_06_10" onclick="toggle_rain_2016_06_10();"> 2016-06-10 豪雨災點<br/>
<input type="checkbox" id="CB_rain_2016_06_17" onclick="toggle_rain_2016_06_17();"> 2016-06-17 豪雨災點<br/>
<input type="checkbox" id="CB_rain_2016_06_28" onclick="toggle_rain_2016_06_28();"> 2016-06-28 豪雨災點<br/>
<input type="checkbox" id="CB_rain_2016_09_06" onclick="toggle_rain_2016_09_06();"> 2016-09-06 豪雨災點<br/>
<input type="checkbox" id="CB_rain_2016_10_06" onclick="toggle_rain_2016_10_06();"> 2016-10-06 豪雨災點<br/>
<input type="checkbox" id="CB_rain_2016_艾利" onclick="toggle_rain_2016_艾利();"> 2016 艾利<br/>
<input type="checkbox" id="CB_rain_2016_梅姬" onclick="toggle_rain_2016_梅姬();"> 2016 梅姬<br/>
<input type="checkbox" id="CB_rain_2016_莫蘭蒂" onclick="toggle_rain_2016_莫蘭蒂();"> 2016 莫蘭蒂<br/>

<input type="checkbox" id="CB_cctv_tainan_交通局" onclick="toggle_cctv_tainan_交通局();" checked> CCTV 台南市 交通局<br/>
<input type="checkbox" id="CB_cctv_tainan_警察局" onclick="toggle_cctv_tainan_警察局();"> CCTV 台南市 警察局<br/>
<input type="checkbox" id="CB_cctv_taoyuan" onclick="toggle_cctv_taoyuan();"> CCTV 桃園市<br/>

</div>
<div id="map"></div>
<script>
var my_airline_path="m25.21488,3.93375c-0.44355,0 -0.84275,0.18332 -1.17933,0.51592c-0.33397,0.33267 -0.61055,0.80884 -0.84275,1.40377c-0.45922,1.18911 -0.74362,2.85964 -0.89755,4.86085c-0.15655,1.99729 -0.18263,4.32223 -0.11741,6.81118c-5.51835,2.26427 -16.7116,6.93857 -17.60916,7.98223c-1.19759,1.38937 -0.81143,2.98095 -0.32874,4.03902l18.39971,-3.74549c0.38616,4.88048 0.94192,9.7138 1.42461,13.50099c-1.80032,0.52703 -5.1609,1.56679 -5.85232,2.21255c-0.95496,0.88711 -0.95496,3.75718 -0.95496,3.75718l7.53,-0.61316c0.17743,1.23545 0.28701,1.95767 0.28701,1.95767l0.01304,0.06557l0.06002,0l0.13829,0l0.0574,0l0.01043,-0.06557c0,0 0.11218,-0.72222 0.28961,-1.95767l7.53164,0.61316c0,0 0,-2.87006 -0.95496,-3.75718c-0.69044,-0.64577 -4.05363,-1.68813 -5.85133,-2.21516c0.48009,-3.77545 1.03061,-8.58921 1.42198,-13.45404l18.18207,3.70115c0.48009,-1.05806 0.86881,-2.64965 -0.32617,-4.03902c-0.88969,-1.03062 -11.81147,-5.60054 -17.39409,-7.89352c0.06524,-2.52287 0.04175,-4.88024 -0.1148,-6.89989l0,-0.00476c-0.15655,-1.99844 -0.44094,-3.6683 -0.90277,-4.8561c-0.22699,-0.59493 -0.50356,-1.07111 -0.83754,-1.40377c-0.33658,-0.3326 -0.73578,-0.51592 -1.18194,-0.51592l0,0l-0.00001,0l0,0z";

var markers_rain_2016_05_16=[];
var markers_rain_2016_06_02=[];
var markers_rain_2016_06_10=[];
var markers_rain_2016_06_17=[];
var markers_rain_2016_06_28=[];
var markers_rain_2016_09_06=[];
var markers_rain_2016_10_06=[];
var markers_rain_2016_艾利=[];
var markers_rain_2016_梅姬=[];
var markers_rain_2016_莫蘭蒂=[];

var markers_cctv_tainan_交通局=[];
var markers_cctv_tainan_警察局=[];
var markers_cctv_taoyuan=[];

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
	cmd.CommandText="select * from rain_2016_05_16 where not isNull(lon);"
	Dim dr As MySqlDataReader=cmd.ExecuteReader()
	while dr.read()
		i=i+1
		response.write("var marker_" & i & "=new google.maps.Marker({" & VBNewLine)
			response.write("position:{lat:" & dr.item("lat") & ",lng:" & dr.item("lon") & "}," & VBNewLine)
			response.write("map:map," & VBNewLine)
			response.write("icon:'img/map_icon/flood.png'," & VBNewLine)
		response.write("});" & VBNewLine)
		response.write("markers_rain_2016_05_16.push(marker_" & i & ");" & VBNewLine)
		
		response.write("var infowindow_" & i & "=new google.maps.InfoWindow({" & VBNewLine)
			response.write("content:'災害地點：" & dr.item("災害地點") & "<br/>災情描述：" & dr.item("災情描述") & "'" & VBNewLine)
		response.write("})" & VBNewLine)

		response.write("marker_" & i & ".addListener('click',function() {" & VBNewLine)
			response.write("infowindow_" & i & ".open(map,marker_" & i & ");" & VBNewLine)
		response.write("});" & VBNewLine)
	end while
	dr.close()
	
	cmd.CommandText="select * from rain_2016_06_02 where not isNull(lon);"
	dr=cmd.ExecuteReader()
	while dr.read()
		i=i+1
		response.write("var marker_" & i & "=new google.maps.Marker({" & VBNewLine)
			response.write("position:{lat:" & dr.item("lat") & ",lng:" & dr.item("lon") & "}," & VBNewLine)
			'response.write("map:map," & VBNewLine)
			response.write("icon:'img/map_icon/flood.png'," & VBNewLine)
		response.write("});" & VBNewLine)
		response.write("markers_rain_2016_06_02.push(marker_" & i & ");" & VBNewLine)
		
		response.write("var infowindow_" & i & "=new google.maps.InfoWindow({" & VBNewLine)
			response.write("content:'災害地點：" & dr.item("災害地點") & "<br/>災情描述：" & dr.item("災情描述") & "'" & VBNewLine)
		response.write("})" & VBNewLine)

		response.write("marker_" & i & ".addListener('click',function() {" & VBNewLine)
			response.write("infowindow_" & i & ".open(map,marker_" & i & ");" & VBNewLine)
		response.write("});" & VBNewLine)
	end while
	dr.close()
	
	cmd.CommandText="select * from rain_2016_06_10 where not isNull(lon);"
	dr=cmd.ExecuteReader()
	while dr.read()
		i=i+1
		response.write("var marker_" & i & "=new google.maps.Marker({" & VBNewLine)
			response.write("position:{lat:" & dr.item("lat") & ",lng:" & dr.item("lon") & "}," & VBNewLine)
			'response.write("map:map," & VBNewLine)
			response.write("icon:'img/map_icon/flood.png'," & VBNewLine)
		response.write("});" & VBNewLine)
		response.write("markers_rain_2016_06_10.push(marker_" & i & ");" & VBNewLine)
		
		response.write("var infowindow_" & i & "=new google.maps.InfoWindow({" & VBNewLine)
			response.write("content:'災害地點：" & dr.item("災害地點") & "<br/>災情描述：" & dr.item("災情描述") & "'" & VBNewLine)
		response.write("})" & VBNewLine)

		response.write("marker_" & i & ".addListener('click',function() {" & VBNewLine)
			response.write("infowindow_" & i & ".open(map,marker_" & i & ");" & VBNewLine)
		response.write("});" & VBNewLine)
	end while
	dr.close()
	
	cmd.CommandText="select * from rain_2016_06_17 where not isNull(lon);"
	dr=cmd.ExecuteReader()
	while dr.read()
		i=i+1
		response.write("var marker_" & i & "=new google.maps.Marker({" & VBNewLine)
			response.write("position:{lat:" & dr.item("lat") & ",lng:" & dr.item("lon") & "}," & VBNewLine)
			'response.write("map:map," & VBNewLine)
			response.write("icon:'img/map_icon/flood.png'," & VBNewLine)
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
	
	cmd.CommandText="select * from rain_2016_06_28 where not isNull(lon);"
	dr=cmd.ExecuteReader()
	while dr.read()
		i=i+1
		response.write("var marker_" & i & "=new google.maps.Marker({" & VBNewLine)
			response.write("position:{lat:" & dr.item("lat") & ",lng:" & dr.item("lon") & "}," & VBNewLine)
			'response.write("map:map," & VBNewLine)
			response.write("icon:'img/map_icon/flood.png'," & VBNewLine)
		response.write("});" & VBNewLine)
		response.write("markers_rain_2016_06_28.push(marker_" & i & ");" & VBNewLine)
		
		response.write("var infowindow_" & i & "=new google.maps.InfoWindow({" & VBNewLine)
			response.write("content:'災害地點：" & dr.item("災害地點") & "<br/>災情描述：" & dr.item("災情描述") & "'" & VBNewLine)
		response.write("})" & VBNewLine)

		response.write("marker_" & i & ".addListener('click',function() {" & VBNewLine)
			response.write("infowindow_" & i & ".open(map,marker_" & i & ");" & VBNewLine)
		response.write("});" & VBNewLine)
	end while
	dr.close()
	
	cmd.CommandText="select * from rain_2016_09_06 where not isNull(lon);"
	dr=cmd.ExecuteReader()
	while dr.read()
		i=i+1
		response.write("var marker_" & i & "=new google.maps.Marker({" & VBNewLine)
			response.write("position:{lat:" & dr.item("lat") & ",lng:" & dr.item("lon") & "}," & VBNewLine)
			'response.write("map:map," & VBNewLine)
			response.write("icon:'img/map_icon/flood.png'," & VBNewLine)
		response.write("});" & VBNewLine)
		response.write("markers_rain_2016_09_06.push(marker_" & i & ");" & VBNewLine)
		
		response.write("var infowindow_" & i & "=new google.maps.InfoWindow({" & VBNewLine)
			response.write("content:'災害地點：" & dr.item("災害地點") & "<br/>災情描述：" & dr.item("災情描述") & "'" & VBNewLine)
		response.write("})" & VBNewLine)

		response.write("marker_" & i & ".addListener('click',function() {" & VBNewLine)
			response.write("infowindow_" & i & ".open(map,marker_" & i & ");" & VBNewLine)
		response.write("});" & VBNewLine)
	end while
	dr.close()
	
	cmd.CommandText="select * from rain_2016_10_06 where not isNull(lon);"
	dr=cmd.ExecuteReader()
	while dr.read()
		i=i+1
		response.write("var marker_" & i & "=new google.maps.Marker({" & VBNewLine)
			response.write("position:{lat:" & dr.item("lat") & ",lng:" & dr.item("lon") & "}," & VBNewLine)
			'response.write("map:map," & VBNewLine)
			response.write("icon:'img/map_icon/flood.png'," & VBNewLine)
		response.write("});" & VBNewLine)
		response.write("markers_rain_2016_10_06.push(marker_" & i & ");" & VBNewLine)
		
		response.write("var infowindow_" & i & "=new google.maps.InfoWindow({" & VBNewLine)
			response.write("content:'災害地點：" & dr.item("災害地點") & "<br/>災情描述：" & dr.item("災情描述") & "'" & VBNewLine)
		response.write("})" & VBNewLine)

		response.write("marker_" & i & ".addListener('click',function() {" & VBNewLine)
			response.write("infowindow_" & i & ".open(map,marker_" & i & ");" & VBNewLine)
		response.write("});" & VBNewLine)
	end while
	dr.close()
	
	cmd.CommandText="select * from rain_2016_艾利 where not isNull(lon);"
	dr=cmd.ExecuteReader()
	while dr.read()
		i=i+1
		response.write("var marker_" & i & "=new google.maps.Marker({" & VBNewLine)
			response.write("position:{lat:" & dr.item("lat") & ",lng:" & dr.item("lon") & "}," & VBNewLine)
			'response.write("map:map," & VBNewLine)
			response.write("icon:'img/map_icon/flood.png'," & VBNewLine)
		response.write("});" & VBNewLine)
		response.write("markers_rain_2016_艾利.push(marker_" & i & ");" & VBNewLine)
		
		response.write("var infowindow_" & i & "=new google.maps.InfoWindow({" & VBNewLine)
			response.write("content:'災害地點：" & dr.item("災害地點") & "<br/>災情描述：" & dr.item("災情描述") & "'" & VBNewLine)
		response.write("})" & VBNewLine)

		response.write("marker_" & i & ".addListener('click',function() {" & VBNewLine)
			response.write("infowindow_" & i & ".open(map,marker_" & i & ");" & VBNewLine)
		response.write("});" & VBNewLine)
	end while
	dr.close()
	
	cmd.CommandText="select * from rain_2016_梅姬 where not isNull(lon);"
	dr=cmd.ExecuteReader()
	while dr.read()
		i=i+1
		response.write("var marker_" & i & "=new google.maps.Marker({" & VBNewLine)
			response.write("position:{lat:" & dr.item("lat") & ",lng:" & dr.item("lon") & "}," & VBNewLine)
			'response.write("map:map," & VBNewLine)
			response.write("icon:'img/map_icon/flood.png'," & VBNewLine)
		response.write("});" & VBNewLine)
		response.write("markers_rain_2016_梅姬.push(marker_" & i & ");" & VBNewLine)
		
		response.write("var infowindow_" & i & "=new google.maps.InfoWindow({" & VBNewLine)
			response.write("content:'災害地點：" & dr.item("災害地點") & "<br/>災情描述：" & dr.item("災情描述") & "'" & VBNewLine)
		response.write("})" & VBNewLine)

		response.write("marker_" & i & ".addListener('click',function() {" & VBNewLine)
			response.write("infowindow_" & i & ".open(map,marker_" & i & ");" & VBNewLine)
		response.write("});" & VBNewLine)
	end while
	dr.close()
	
	cmd.CommandText="select * from rain_2016_莫蘭蒂 where not isNull(lon);"
	dr=cmd.ExecuteReader()
	while dr.read()
		i=i+1
		response.write("var marker_" & i & "=new google.maps.Marker({" & VBNewLine)
			response.write("position:{lat:" & dr.item("lat") & ",lng:" & dr.item("lon") & "}," & VBNewLine)
			'response.write("map:map," & VBNewLine)
			response.write("icon:'img/map_icon/flood.png'," & VBNewLine)
		response.write("});" & VBNewLine)
		response.write("markers_rain_2016_莫蘭蒂.push(marker_" & i & ");" & VBNewLine)
		
		response.write("var infowindow_" & i & "=new google.maps.InfoWindow({" & VBNewLine)
			response.write("content:'災害地點：" & dr.item("災害地點") & "<br/>災情描述：" & dr.item("災情描述") & "'" & VBNewLine)
		response.write("})" & VBNewLine)

		response.write("marker_" & i & ".addListener('click',function() {" & VBNewLine)
			response.write("infowindow_" & i & ".open(map,marker_" & i & ");" & VBNewLine)
		response.write("});" & VBNewLine)
	end while
	dr.close()
	
	cmd.CommandText="select * from cctv_tainan_交通局;"
	dr=cmd.ExecuteReader()
	while dr.read()
		i=i+1
		response.write("var marker_" & i & "=new google.maps.Marker({" & VBNewLine)
			response.write("position:{lat:" & dr.item("lat") & ",lng:" & dr.item("lon") & "}," & VBNewLine)
			response.write("map:map," & VBNewLine)
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
	
	cmd.CommandText="select * from cctv_tainan_警察局;"
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
	
	cmd.CommandText="select * from cctv_taoyuan where not isNull(lon);"
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
</script>