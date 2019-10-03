<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
<meta charset="utf-8">
<link rel="stylesheet" href="../style/main.css">
<title>道路積淹水影像偵測系統</title>
<style>
.icon {
    position: absolute;
    display: flex;
    justify-content: center;
    align-content: center;
    flex-wrap: nowrap;
    left: 13px;
    top: 560px;
    padding: 10px;
    background-color: rgba(255, 255, 255, 0.7);
    z-index: 5;
}
</style>
</head>
<body style="font-family:微軟正黑體">
<h1 class="title">道路積淹水影像偵測系統</h1>
<div id="floating-panel">
    <input type="checkbox" id="CB_cctv_taipei_t" onclick="toggle_cctv_taipei_t();"> CCTV 新北市 交通局<br/>
    <input type="checkbox" id="CB_cctv_tainan_t" onclick="toggle_cctv_tainan_t();"> CCTV 台南市 交通局<br/>
    <input type="checkbox" id="CB_cctv_tainan_p" onclick="toggle_cctv_tainan_p();"> CCTV 台南市 警察局<br/>
    <input type="checkbox" id="CB_cctv_taoyuan" onclick="toggle_cctv_taoyuan();"> CCTV 桃園市 交通局<br/>
    <input type="checkbox" id="CB_cctv_gov" onclick="toggle_cctv_gov();"> CCTV 公路總局<br/>
    <input type="checkbox" id="CB_cctv_tycg" onclick="toggle_cctv_tycg();"> CCTV 桃園智慧下水道<br/>
    <input type="checkbox" id="CB_ilang" onclick="toggle_ilang();"> 宜蘭縣智慧立桿<br/>
    <input type="checkbox" id="CB_nantou" onclick="toggle_nantou();"> CCTV 南投市 交通局<br/>
	<input type="checkbox" id="CB_cctv_line" onclick="toggle_cctv_line();"> Line Robot 警示訊息<br/>
	<input type="checkbox" id="CB_cctv_mobile" onclick="toggle_cctv_mobile();"> 行動測站<br/>
	<input type="checkbox" id="CB_cctv_kaohsiung" onclick="toggle_cctv_kaohsiung();"> CCTV 高雄市 交通局<br/>
	<input type="checkbox" id="CB_cctv_nowred" onclick="toggle_cctv_nowred();"> CCTV nowred<br/>
</div>
<div class="searchBox">
    <input id="pac-input" class="controls" type="text" placeholder="搜尋 google 地圖" aria-label="搜尋 google 地圖">
    <div class="searchBottom"></div>
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
var markers_cctv_line = [];
var markers_ilang = [],
    markers_cctv_nantou = [],
    markers_cctv_nowred = [];
var markers_cctv_mobile = [];
var markers_cctv_kaohsiung = [];
var map;
function initMap() {
	map=new google.maps.Map(document.getElementById('map'), {
                zoom:8,
                center: { lat: 23.5, lng: 121 }
            });
            
    //search box
    var input = document.getElementById('pac-input');
    var searchBox = new google.maps.places.SearchBox(input);
    map.addListener('bounds_changed', function () {
        searchBox.setBounds(map.getBounds());
    });
    searchBox.addListener('places_changed', function () {
        var places = searchBox.getPlaces();

        if (places.length == 0) {
            return;
        }

        var bounds = new google.maps.LatLngBounds();
        places.forEach(function (place) {
            if (!place.geometry) {
                console.log("Returned place contains no geometry");
                return;
            }


            if (place.geometry.viewport) {
                bounds.union(place.geometry.viewport);
            } else {
                bounds.extend(place.geometry.location);
            }
        });
        map.fitBounds(bounds);
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
                        "content:'<iframe src=if_cctv_gov_mseg.aspx?aid=" & dr.Item("aid") & " width=400 height=300 frameborder=0></iframe>'" & vbNewLine &
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
                        "content:'<iframe src=if_cctv_taipei_t_mseg.aspx?aid=" & dr.Item("aid") & " width=500 height=400 frameborder=0></iframe>'" & vbNewLine &
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
                        "content:'<iframe src=if_cctv_tainan_t_mseg.aspx?aid=" & dr.Item("aid") & " width=400 height=300 frameborder=0></iframe>'" & vbNewLine &
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
                        "content:'<iframe src=if_cctv_tainan_p_mseg.aspx?aid=" & dr.Item("aid") & " width=400 height=300 frameborder=0></iframe>'" & vbNewLine &
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
                        "content:'<iframe src=if_cctv_taoyuan_mseg.aspx?aid=" & dr.Item("aid") & " width=400 height=300 frameborder=0></iframe>'" & vbNewLine &
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
                Response.Write("icon:'../../img/map_icon/w.png'," & vbNewLine)
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
                        "content:'<iframe src=if_cctv_tycg_mseg.aspx?aid=" & dr.Item("aid") & " width=500 height=400 frameborder=0></iframe>'," & vbNewLine &
                        "maxmaxWidth: 600" & vbNewLine &
                    "});" & vbNewLine &
                    "infowindow.open(map,marker_" & i & ");" & vbNewLine &
                "})" & vbNewLine
            )
        End While
        dr.Close()

        cmd.CommandText="select * from sensor_ilang;"
        dr=cmd.ExecuteReader()
        while dr.read()
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
                Response.Write("icon:'../../img/map_icon/w.png'," & vbNewLine)
            End If
            Response.Write("});" & vbNewLine)

            'icon
            Response.Write("markers_ilang.push(marker_" & i & ");" & vbNewLine)
            'iframe
            response.write(
                "var infowindow = null;" & vbNewLine &
                "google.maps.event.addListener(marker_" & i & ", 'click', function() {" & vbNewLine &
                    "if (infowindow) {" & vbNewLine &
                        "infowindow.close();" & vbNewLine &
                    "}" & vbNewLine &
                    "infowindow = new google.maps.InfoWindow({" & vbNewLine &
                        "content:'<iframe src=if_ilang_mseg.aspx?aid=" & dr.Item("aid") & " width=500 height=400 frameborder=0></iframe>'," & vbNewLine &
                        "maxmaxWidth: 600" & vbNewLine &
                    "});" & vbNewLine &
                    "infowindow.open(map,marker_" & i & ");" & vbNewLine &
                "})" & vbNewLine
            )
        End While
        dr.Close()

        cmd.CommandText = "select * from cctv_nantou;"
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
                Response.Write("icon:'../../img/map_icon/w.png'," & vbNewLine)
            End If
            Response.Write("});" & vbNewLine)

            'icon
            Response.Write("markers_cctv_nantou.push(marker_" & i & ");" & vbNewLine)
            'iframe
            response.write(
                "var infowindow = null;" & vbNewLine &
                "google.maps.event.addListener(marker_" & i & ", 'click', function() {" & vbNewLine &
                    "if (infowindow) {" & vbNewLine &
                        "infowindow.close();" & vbNewLine &
                    "}" & vbNewLine &
                    "infowindow = new google.maps.InfoWindow({" & vbNewLine &
                        "content:'<iframe src=if_cctv_nantou_mseg.aspx?aid=" & dr.Item("aid") & " width=500 height=400 frameborder=0></iframe>'," & vbNewLine &
                        "maxmaxWidth: 600" & vbNewLine &
                    "});" & vbNewLine &
                    "infowindow.open(map,marker_" & i & ");" & vbNewLine &
                "})" & vbNewLine
            )
        End While
        dr.close()
		
		cmd.CommandText = "select * from lineevent;"
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
            ElseIf dr.Item("color_num") = 0 Then
                Response.Write("icon:'../../img/map_icon/w.png'," & vbNewLine)
			Else
                Response.Write("icon:'../../img/map_icon/p.png'," & vbNewLine)
            End If

            Response.Write("});" & vbNewLine)

            'icon
            Response.Write("markers_cctv_line.push(marker_" & i & ");" & vbNewLine)
            'iframe
            response.write(
                "var infowindow = null;" & vbNewLine &
                "google.maps.event.addListener(marker_" & i & ", 'click', function() {" & vbNewLine &
                    "if (infowindow) {" & vbNewLine &
                        "infowindow.close();" & vbNewLine &
                    "}" & vbNewLine &
                    "infowindow = new google.maps.InfoWindow({" & vbNewLine &
                        "content:'<iframe src=if_cctv_line_mseg.aspx?aid=" & dr.Item("aid") & " width=500 height=400 frameborder=0></iframe>'," & vbNewLine &
                        "maxmaxWidth: 600" & vbNewLine &
                    "});" & vbNewLine &
                    "infowindow.open(map,marker_" & i & ");" & vbNewLine &
                "})" & vbNewLine
            )
        End While
        dr.Close()
		
		cmd.CommandText = "select * from mobile_site;"
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
            ElseIf dr.Item("color_num") = 0 Then
                Response.Write("icon:'../../img/map_icon/w.png'," & vbNewLine)
			Else
                Response.Write("icon:'../../img/map_icon/y.png'," & vbNewLine)
            End If

            Response.Write("});" & vbNewLine)

            'icon
            Response.Write("markers_cctv_mobile.push(marker_" & i & ");" & vbNewLine)
            'iframe
            response.write(
                "var infowindow = null;" & vbNewLine &
                "google.maps.event.addListener(marker_" & i & ", 'click', function() {" & vbNewLine &
                    "if (infowindow) {" & vbNewLine &
                        "infowindow.close();" & vbNewLine &
                    "}" & vbNewLine &
                    "infowindow = new google.maps.InfoWindow({" & vbNewLine &
                        "content:'<iframe src=if_cctv_mobile_mseg.aspx?aid=" & dr.Item("aid") & " width=500 height=400 frameborder=0></iframe>'," & vbNewLine &
                        "maxmaxWidth: 600" & vbNewLine &
                    "});" & vbNewLine &
                    "infowindow.open(map,marker_" & i & ");" & vbNewLine &
                "})" & vbNewLine
            )
        End While
        dr.Close()

        cmd.CommandText = "select * from cctv_kaohsiung;"
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
            ElseIf dr.Item("color_num") = 0 Then
                Response.Write("icon:'../../img/map_icon/g.png'," & vbNewLine)
			Else
                Response.Write("icon:'../../img/map_icon/y.png'," & vbNewLine)
            End If

            Response.Write("});" & vbNewLine)

            'icon
            Response.Write("markers_cctv_kaohsiung.push(marker_" & i & ");" & vbNewLine)
            'iframe
            response.write(
                "var infowindow = null;" & vbNewLine &
                "google.maps.event.addListener(marker_" & i & ", 'click', function() {" & vbNewLine &
                    "if (infowindow) {" & vbNewLine &
                        "infowindow.close();" & vbNewLine &
                    "}" & vbNewLine &
                    "infowindow = new google.maps.InfoWindow({" & vbNewLine &
                        "content:'<iframe src=if_cctv_kaohsiung_mseg.aspx?aid=" & dr.Item("aid") & " width=500 height=400 frameborder=0></iframe>'," & vbNewLine &
                        "maxmaxWidth: 600" & vbNewLine &
                    "});" & vbNewLine &
                    "infowindow.open(map,marker_" & i & ");" & vbNewLine &
                "})" & vbNewLine
            )
        End While
        dr.Close()

        cmd.CommandText = "select * from nowred;"
        dr = cmd.ExecuteReader()
        While dr.Read()
            i = i + 1
            'map
            Response.Write("var marker_" & i & "=new google.maps.Marker({" & vbNewLine)
            Response.Write("position:{lat:" & dr.Item("lat") & ",lng:" & dr.Item("lon") & "}," & vbNewLine)
            Response.Write("icon:'../../img/map_icon/r.png'," & vbNewLine)
            Response.Write("});" & vbNewLine)

            'icon
            Response.Write("markers_cctv_nowred.push(marker_" & i & ");" & vbNewLine)
            'iframe
            response.write(
                "var infowindow = null;" & vbNewLine &
                "google.maps.event.addListener(marker_" & i & ", 'click', function() {" & vbNewLine &
                    "if (infowindow) {" & vbNewLine &
                        "infowindow.close();" & vbNewLine &
                    "}" & vbNewLine &
                    "infowindow = new google.maps.InfoWindow({" & vbNewLine &
                        "content:'<iframe src=if_cctv_nowred.aspx?aid=" & dr.Item("aid") & " width=500 height=400 frameborder=0></iframe>'," & vbNewLine &
                        "maxmaxWidth: 600" & vbNewLine &
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
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDXnPbeuifWgnx-WNF7WjsD8YMkYVKSPmg&libraries=places&callback=initMap"></script>
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
    function toggle_ilang() {
        if (document.getElementById('CB_ilang').checked) {
            for (var i=0;i < markers_ilang.length;i++) {
                markers_ilang[i].setMap(map);
            }
        }else{
            for (var i=0;i < markers_ilang.length;i++) {
                markers_ilang[i].setMap(null);
            }
        }
    }

    function toggle_nantou() {
        if (document.getElementById('CB_nantou').checked) {
            for (var i = 0; i < markers_cctv_nantou.length; i++) {
                markers_cctv_nantou[i].setMap(map);
            }
        } else {
            for (var i = 0; i < markers_cctv_nantou.length; i++) {
                markers_cctv_nantou[i].setMap(null);
            }
        }
    }
    function toggle_cctv_tycg() {
        if (document.getElementById('CB_cctv_tycg').checked) {
            for (var i = 0; i < markers_cctv_tycg.length; i++) {
                markers_cctv_tycg[i].setMap(map);
            }
        } else {
            for (var i = 0; i < markers_cctv_tycg.length; i++) {
                markers_cctv_tycg[i].setMap(null);
            }
        }
    }
	function toggle_cctv_line() {
        if (document.getElementById('CB_cctv_line').checked) {
            for (var i = 0; i < markers_cctv_line.length; i++) {
                markers_cctv_line[i].setMap(map);
            }
        } else {
            for (var i = 0; i < markers_cctv_line.length; i++) {
                markers_cctv_line[i].setMap(null);
            }
        }
    }
	function toggle_cctv_mobile() {
        if (document.getElementById('CB_cctv_mobile').checked) {
            for (var i = 0; i < markers_cctv_mobile.length; i++) {
                markers_cctv_mobile[i].setMap(map);
            }
        } else {
            for (var i = 0; i < markers_cctv_mobile.length; i++) {
                markers_cctv_mobile[i].setMap(null);
            }
        }
    }

    function toggle_cctv_kaohsiung() {
        if (document.getElementById('CB_cctv_kaohsiung').checked) {
            for (var i = 0; i < markers_cctv_kaohsiung.length; i++) {
                markers_cctv_kaohsiung[i].setMap(map);
            }
        } else {
            for (var i = 0; i < markers_cctv_kaohsiung.length; i++) {
                markers_cctv_kaohsiung[i].setMap(null);
            }
        }
    }

    function toggle_cctv_nowred() {
        if (document.getElementById('CB_cctv_nowred').checked) {
            for (var i = 0; i < markers_cctv_nowred.length; i++) {
                markers_cctv_nowred[i].setMap(map);
            }
        } else {
            for (var i = 0; i < markers_cctv_nowred.length; i++) {
                markers_cctv_nowred[i].setMap(null);
            }
        }
    }

</script>