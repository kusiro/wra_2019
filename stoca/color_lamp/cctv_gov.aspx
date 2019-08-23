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
.icon {
    position: absolute;
    display: flex;
    justify-content: center;
    align-content: center;
    flex-wrap: nowrap;
    left: 13px;
    top: 350px;
    padding: 10px;
    background-color: rgba(255, 255, 255, 0.7);
    z-index: 5;
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
    <input type="checkbox" id="CB_cctv_taipei_t" onclick="toggle_cctv_taipei_t();"> CCTV 台北市 交通局<br/>
    <input type="checkbox" id="CB_cctv_tainan_t" onclick="toggle_cctv_tainan_t();"> CCTV 台南市 交通局<br/>
    <input type="checkbox" id="CB_cctv_tainan_p" onclick="toggle_cctv_tainan_p();"> CCTV 台南市 警察局<br/>
    <input type="checkbox" id="CB_cctv_taoyuan" onclick="toggle_cctv_taoyuan();"> CCTV 桃園市<br/>
    <input type="checkbox" id="CB_cctv_gov" onclick="toggle_cctv_gov();"> CCTV 公路總局<br/>
    <input type="checkbox" id="CB_cctv_tycg" onclick="toggle_cctv_tycg();"> CCTV 桃園智慧下水道<br/>
</div>

<div class="icon">
    <div style="height:15px;margin: 0 10px 0 0;font-size: 13px;">
        <img src="../../img/map_icon/g.png" style="height:100%;vertical-align:middle;" />
       正常
    </div>
    <div style="height:15px;margin: 0 10px 0 0;font-size: 13px;">
        <img src="../../img/map_icon/r.png" style="height:100%;vertical-align:middle;" />
       淹水
    </div>
    <div style="height:15px;margin: 0 10px 0 0;font-size: 13px;">
        <img src="../../img/map_icon/grey.png" style="height:100%;vertical-align:middle;" />
       unknow
    </div>
    <div style="height:15px;margin: 0 10px 0 0;font-size: 13px;">
        <img src="../../img/map_icon/w.png" style="height:100%;vertical-align:middle;" />
       無資料
    </div>
</div>

<div id="map"></div>


<script>

var markers_cctv_taipei_t = [];
var markers_cctv_tainan_t = [];
var markers_cctv_tainan_p = [];
var markers_cctv_taoyuan = [];
var markers_cctv_gov = [];
var markers_cctv_tycg = [];
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
    While dr.Read()
        i = i + 1
        'map
        Response.Write("var marker_" & i & "=new google.maps.Marker({" & vbNewLine)
        Response.Write("position:{lat:" & dr.Item("lat") & ",lng:" & dr.Item("lon") & "}," & vbNewLine)
        If dr.Item("color_num") = 1 Then
            Response.Write("icon:'../../img/map_icon/g.png'," & vbNewLine)
        ElseIf dr.Item("color_num") = 2 Then
            Response.Write("icon:'../../img/map_icon/r.png'," & vbNewLine)
        ElseIf dr.Item("color_num") = 3 Then
            Response.Write("icon:'../../img/map_icon/grey.png'," & vbNewLine)
        Else
            Response.Write("icon:'../../img/map_icon/w1.png'," & vbNewLine)
        End If

        Response.Write("});" & vbNewLine)

        'icon
        Response.Write("markers_cctv_gov.push(marker_" & i & ");" & vbNewLine)
        'iframe
        response.write(
            "var infowindow = null;" & vbNewLine &
            "google.maps.event.addListener(marker_" & i & ", 'click', function() {" & vbNewLine &
                "if (infowindow) {" & vbNewLine &
                    "infowindow.close();" & vbNewLine &
                "}" & vbNewLine &
                "infowindow = new google.maps.InfoWindow({" & vbNewLine &
                    "content:'<iframe src=if_cctv_gov_mseg.aspx.aspx?aid=" & dr.Item("aid") & " width=400 height=300 frameborder=1></iframe>'" & vbNewLine &
                "});" & vbNewLine &
                "infowindow.open(map,marker_" & i & ");" & vbNewLine &
            "})" & vbNewLine
        )

    End While
    dr.Close()
    cmd.CommandText = "select * from cctv_taipei_t;"

    dr = cmd.ExecuteReader()
    While dr.Read()
        i = i + 1
        'map
        Response.Write("var marker_" & i & "=new google.maps.Marker({" & vbNewLine)
        Response.Write("position:{lat:" & dr.Item("lat") & ",lng:" & dr.Item("lon") & "}," & vbNewLine)
        If dr.Item("color_num") = 1 Then
            Response.Write("icon:'../../img/map_icon/g.png'," & vbNewLine)
        ElseIf dr.Item("color_num") = 2 Then
            Response.Write("icon:'../../img/map_icon/r.png'," & vbNewLine)
        ElseIf dr.Item("color_num") = 3 Then
            Response.Write("icon:'../../img/map_icon/grey.png'," & vbNewLine)
        Else
            Response.Write("icon:'../../img/map_icon/w1.png'," & vbNewLine)
        End If

        Response.Write("});" & vbNewLine)

        'icon
        Response.Write("markers_cctv_taipei_t.push(marker_" & i & ");" & vbNewLine)
        'iframe
        response.write(
            "var infowindow = null;" & vbNewLine &
            "google.maps.event.addListener(marker_" & i & ", 'click', function() {" & vbNewLine &
                "if (infowindow) {" & vbNewLine &
                    "infowindow.close();" & vbNewLine &
                "}" & vbNewLine &
                "infowindow = new google.maps.InfoWindow({" & vbNewLine &
                    "content:'<iframe src=if_cctv_taipei_t_mseg.aspx?aid=" & dr.Item("aid") & " width=400 height=300 frameborder=1></iframe>'" & vbNewLine &
                "});" & vbNewLine &
                "infowindow.open(map,marker_" & i & ");" & vbNewLine &
            "})" & vbNewLine
        )
        
    End While
    dr.Close()
    cmd.CommandText = "select * from cctv_tainan_t;"

    dr = cmd.ExecuteReader()
    While dr.Read()
        i = i + 1
        'map
        Response.Write("var marker_" & i & "=new google.maps.Marker({" & vbNewLine)
        Response.Write("position:{lat:" & dr.Item("lat") & ",lng:" & dr.Item("lon") & "}," & vbNewLine)
        If dr.Item("color_num") = 1 Then
            Response.Write("icon:'../../img/map_icon/g.png'," & vbNewLine)
        ElseIf dr.Item("color_num") = 2 Then
            Response.Write("icon:'../../img/map_icon/r.png'," & vbNewLine)
        ElseIf dr.Item("color_num") = 3 Then
            Response.Write("icon:'../../img/map_icon/grey.png'," & vbNewLine)
        Else
            Response.Write("icon:'../../img/map_icon/w1.png'," & vbNewLine)
        End If

        Response.Write("});" & vbNewLine)

        'icon
        Response.Write("markers_cctv_tainan_t.push(marker_" & i & ");" & vbNewLine)
        'iframe
        response.write(
            "var infowindow = null;" & vbNewLine &
            "google.maps.event.addListener(marker_" & i & ", 'click', function() {" & vbNewLine &
                "if (infowindow) {" & vbNewLine &
                    "infowindow.close();" & vbNewLine &
                "}" & vbNewLine &
                "infowindow = new google.maps.InfoWindow({" & vbNewLine &
                    "content:'<iframe src=if_cctv_tainan_t_mseg.aspx?aid=" & dr.Item("aid") & " width=400 height=300 frameborder=1></iframe>'" & vbNewLine &
                "});" & vbNewLine &
                "infowindow.open(map,marker_" & i & ");" & vbNewLine &
            "})" & vbNewLine
        )
    End While
    dr.Close()
    cmd.CommandText = "select * from cctv_tainan_p;"

    dr = cmd.ExecuteReader()
    While dr.Read()
        i = i + 1
        'map
        Response.Write("var marker_" & i & "=new google.maps.Marker({" & vbNewLine)
        Response.Write("position:{lat:" & dr.Item("lat") & ",lng:" & dr.Item("lon") & "}," & vbNewLine)
        If dr.Item("color_num") = 1 Then
            Response.Write("icon:'../../img/map_icon/g.png'," & vbNewLine)
        ElseIf dr.Item("color_num") = 2 Then
            Response.Write("icon:'../../img/map_icon/r.png'," & vbNewLine)
        ElseIf dr.Item("color_num") = 3 Then
            Response.Write("icon:'../../img/map_icon/grey.png'," & vbNewLine)
        Else
            Response.Write("icon:'../../img/map_icon/w1.png'," & vbNewLine)
        End If

        Response.Write("});" & vbNewLine)

        'icon
        Response.Write("markers_cctv_tainan_p.push(marker_" & i & ");" & vbNewLine)
        'iframe
        response.write(
            "var infowindow = null;" & vbNewLine &
            "google.maps.event.addListener(marker_" & i & ", 'click', function() {" & vbNewLine &
                "if (infowindow) {" & vbNewLine &
                    "infowindow.close();" & vbNewLine &
                "}" & vbNewLine &
                "infowindow = new google.maps.InfoWindow({" & vbNewLine &
                    "content:'<iframe src=if_cctv_tainan_p_mseg.aspx?aid=" & dr.Item("aid") & " width=400 height=300 frameborder=1></iframe>'" & vbNewLine &
                "});" & vbNewLine &
                "infowindow.open(map,marker_" & i & ");" & vbNewLine &
            "})" & vbNewLine
        )
    End While
    dr.Close()
    cmd.CommandText = "select * from cctv_taoyuan;"

    dr = cmd.ExecuteReader()
    While dr.Read()
        i = i + 1
        'map
        Response.Write("var marker_" & i & "=new google.maps.Marker({" & vbNewLine)
        Response.Write("position:{lat:" & dr.Item("lat") & ",lng:" & dr.Item("lon") & "}," & vbNewLine)
        If dr.Item("color_num") = 1 Then
            Response.Write("icon:'../../img/map_icon/g.png'," & vbNewLine)
        ElseIf dr.Item("color_num") = 2 Then
            Response.Write("icon:'../../img/map_icon/r.png'," & vbNewLine)
        ElseIf dr.Item("color_num") = 3 Then
            Response.Write("icon:'../../img/map_icon/grey.png'," & vbNewLine)
        Else
            Response.Write("icon:'../../img/map_icon/w1.png'," & vbNewLine)
        End If

        Response.Write("});" & vbNewLine)

        'icon
        Response.Write("markers_cctv_taoyuan.push(marker_" & i & ");" & vbNewLine)
        'iframe
        response.write(
            "var infowindow = null;" & vbNewLine &
            "google.maps.event.addListener(marker_" & i & ", 'click', function() {" & vbNewLine &
                "if (infowindow) {" & vbNewLine &
                    "infowindow.close();" & vbNewLine &
                "}" & vbNewLine &
                "infowindow = new google.maps.InfoWindow({" & vbNewLine &
                    "content:'<iframe src=if_cctv_taoyuan_mseg.aspx?aid=" & dr.Item("aid") & " width=400 height=300 frameborder=1></iframe>'" & vbNewLine &
                "});" & vbNewLine &
                "infowindow.open(map,marker_" & i & ");" & vbNewLine &
            "})" & vbNewLine
        )
    End While
    dr.Close()

    cmd.CommandText = "select * from cctv_tycg;"

    dr = cmd.ExecuteReader()
    While dr.Read()
        i = i + 1
        'map
        Response.Write("var marker_" & i & "=new google.maps.Marker({" & vbNewLine)
        Response.Write("position:{lat:" & dr.Item("lat") & ",lng:" & dr.Item("lon") & "}," & vbNewLine)
        If dr.Item("color_num") = 1 Then
            Response.Write("icon:'../../img/map_icon/g.png'," & vbNewLine)
        ElseIf dr.Item("color_num") = 2 Then
            Response.Write("icon:'../../img/map_icon/r.png'," & vbNewLine)
        ElseIf dr.Item("color_num") = 3 Then
            Response.Write("icon:'../../img/map_icon/grey.png'," & vbNewLine)
        Else
            Response.Write("icon:'../../img/map_icon/w1.png'," & vbNewLine)
        End If

        Response.Write("});" & vbNewLine)

        'icon
        Response.Write("markers_cctv_tycg.push(marker_" & i & ");" & vbNewLine)
        'iframe
        response.write(
            "var infowindow = null;" & vbNewLine &
            "google.maps.event.addListener(marker_" & i & ", 'click', function() {" & vbNewLine &
                "if (infowindow) {" & vbNewLine &
                    "infowindow.close();" & vbNewLine &
                "}" & vbNewLine &
                "infowindow = new google.maps.InfoWindow({" & vbNewLine &
                    "content:'<iframe src=if_cctv_tycg_mseg.aspx?aid=" & dr.Item("aid") & " width=400 height=300 frameborder=1></iframe>'" & vbNewLine &
                "});" & vbNewLine &
                "infowindow.open(map,marker_" & i & ");" & vbNewLine &
            "})" & vbNewLine
        )
    End While
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
            for (var i = 0; i < markers_cctv_gov.length; i++) {
                markers_cctv_gov[i].setMap(map);
            }
        } else {
            for (var i = 0; i < markers_cctv_gov.length; i++) {
                markers_cctv_gov[i].setMap(null);
            }
        }
    }
    function toggle_cctv_taipei_t() {
        if (document.getElementById('CB_cctv_taipei_t').checked) {
            for (var i = 0; i < markers_cctv_taipei_t.length; i++) {
                markers_cctv_taipei_t[i].setMap(map);
            }
        } else {
            for (var i = 0; i < markers_cctv_taipei_t.length; i++) {
                markers_cctv_taipei_t[i].setMap(null);
            }
        }
    }
    function toggle_cctv_taoyuan() {
        if (document.getElementById('CB_cctv_taoyuan').checked) {
            for (var i = 0; i < markers_cctv_taoyuan.length; i++) {
                markers_cctv_taoyuan[i].setMap(map);
            }
        } else {
            for (var i = 0; i < markers_cctv_taoyuan.length; i++) {
                markers_cctv_taoyuan[i].setMap(null);
            }
        }
    }
    function toggle_cctv_tainan_t() {
        if (document.getElementById('CB_cctv_tainan_t').checked) {
            for (var i = 0; i < markers_cctv_tainan_t.length; i++) {
                markers_cctv_tainan_t[i].setMap(map);
            }
        } else {
            for (var i = 0; i < markers_cctv_tainan_t.length; i++) {
                markers_cctv_tainan_t[i].setMap(null);
            }
        }
    }
    function toggle_cctv_tainan_p() {
        if (document.getElementById('CB_cctv_tainan_p').checked) {
            for (var i = 0; i < markers_cctv_tainan_p.length; i++) {
                markers_cctv_tainan_p[i].setMap(map);
            }
        } else {
            for (var i = 0; i < markers_cctv_tainan_p.length; i++) {
                markers_cctv_tainan_p[i].setMap(null);
            }
        }
    }
    function toggle_cctv_tycg() {
        if (document.getElementById('CB_cctv_tycg').checked) {
            for (var i = 0; i < markers_cctv_tycg.length; i++) {
                markers_cctv_tycg[i].setMap(map);
            }
        } else {
            for (var i = 0; i < markers_cctv_tainan_p.length; i++) {
                markers_cctv_tycg[i].setMap(null);
            }
        }
    }

</script>