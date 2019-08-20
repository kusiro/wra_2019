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
<input type="checkbox" id="CB_cctv_gov" onclick="toggle_cctv_gov();"> CCTV 公路總局燈號<br/>
</div>

<div id="map"></div>

<script>

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
    cmd.Connection = con
    cmd.CommandText = "select * from cctv_gov where not isNull(id);"
    Dim dr As MySqlDataReader = cmd.ExecuteReader()
    While dr.read()
        i = i + 1
        'map
        Response.write("var marker_" & i & "=new google.maps.Marker({" & VBNewLine)
        Response.Write("position:{lat:" & dr.Item("lat") & ",lng:" & dr.Item("lon") & "}," & vbNewLine)
        If dr.Item("normal") > dr.Item("floods") And dr.Item("unknow") < 50 Then
            Response.Write("icon:'../img/map_icon/g.png'," & vbNewLine)
        ElseIf dr.Item("unknow") >= 50 Then
            Response.Write("icon:'../img/map_icon/y.png'," & vbNewLine)
        Else
            Response.Write("icon:'../img/map_icon/r.png'," & vbNewLine)
        End If

        Response.Write("});" & vbNewLine)

        'icon
        Response.write("markers_cctv_gov.push(marker_" & i & ");" & VBNewLine)
        'iframe
        Response.Write("var infowindow_" & i & "=new google.maps.InfoWindow({" & vbNewLine)
        Response.Write("content:'<iframe src=if_cctv_gov_mseg.aspx?aid=" & dr.Item("aid") & " width=500 height=400 frameborder=1></iframe>'" & vbNewLine)
        Response.write("})" & VBNewLine)


        Response.write("marker_" & i & ".addListener('click',function() {" & VBNewLine)
        response.write("infowindow_" & i & ".open(map,marker_" & i & ");" & VBNewLine)
        response.write("});" & VBNewLine)
    end While
    dr.Close()
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
</script>