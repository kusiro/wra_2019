<!DOCTYPE html>
<html lang="en">
    <head>
        <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
        <meta charset="utf-8">
        <title>豪雨災點</title>
        <link rel="stylesheet" href="./style/main.css">
    </head>

    <body style="font-family:微軟正黑體">

        <div id="floating-panel">
            <input type="checkbox" id="CB_rain_2016_05_16" onclick="toggle_rain_2016_05_16();" checked> 2016-05-16 豪雨災點<br/>
            <input type="checkbox" id="CB_cctv_taipei_t" onclick="toggle_cctv_taipei_t();"> CCTV 台北市 交通局<br/>
            <input type="checkbox" id="CB_cctv_tainan_t" onclick="toggle_cctv_tainan_t();"> CCTV 台南市 交通局<br/>
            <input type="checkbox" id="CB_cctv_tainan_p" onclick="toggle_cctv_tainan_p();"> CCTV 台南市 警察局<br/>
            <input type="checkbox" id="CB_cctv_taoyuan" onclick="toggle_cctv_taoyuan();"> CCTV 桃園市<br/>
            <input type="checkbox" id="CB_cctv_gov" onclick="toggle_cctv_gov();"> CCTV 公路總局<br/>
            <input type="checkbox" id="CB_ilan" onclick="toggle_ilan();"> 宜蘭縣智慧立桿<br/>
            <input type="checkbox" id="CB_nantou" onclick="toggle_nantou();"> CCTV 南投市 交通局<br/>
            
            <input type="checkbox" id="CB_tycg" onclick="toggle_tycg();"> CCTV 桃園智慧下水道<br/>
        </div>

        <div class="searchBox">
            <input id="pac-input" class="controls" type="text" placeholder="搜尋 google 地圖" aria-label="搜尋 google 地圖">
            <div class="searchBottom"></div>
        </div>

        <div id="map"></div>

        <script>
            var markers_rain_2016_05_16=[];
            var markers_cctv_taipei_t=[];
            var markers_cctv_tainan_t=[];
            var markers_cctv_tainan_p=[];
            var markers_cctv_taoyuan=[];
            var markers_cctv_gov=[];
            var markers_ilan = [];
            var markers_cctv_nantou = [];
            var markers_cctv_tycg = [];
            var map;
            function initMap() {
                map=new google.maps.Map(document.getElementById('map'), {
                    zoom:8,
                    center: { lat: 23.5, lng: 121 },
                    disableDefaultUI: true
                });
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


                    // For each place, get the icon, name and location.
                    var bounds = new google.maps.LatLngBounds();
                    places.forEach(function (place) {
                        if (!place.geometry) {
                            console.log("Returned place contains no geometry");
                            return;
                        }


                        if (place.geometry.viewport) {
                            // Only geocodes have viewport.
                            bounds.union(place.geometry.viewport);
                        } else {
                            bounds.extend(place.geometry.location);
                        }
                    });
                    map.fitBounds(bounds);
                });

                
                <%
                    Dim i As Integer = 0
                    Dim con As MySqlConnection = New MySqlConnection(Application("DB"))
                    con.Open()
                    Dim cmd As New MySqlCommand()
                    cmd.Connection = con
                    cmd.CommandText = "select * from rain_2016_05_16 where not isNull(lon);"
                    Dim dr As MySqlDataReader = cmd.ExecuteReader()
                    While dr.Read()
                        i = i + 1
                        Response.Write("var marker_" & i & "=new google.maps.Marker({" & vbNewLine)
                        Response.Write("position:{lat:" & dr.Item("lat") & ",lng:" & dr.Item("lon") & "}," & vbNewLine)
                        Response.Write("map:map," & vbNewLine)
                        Response.Write("icon:'../img/map_icon/flood.png'," & vbNewLine)
                        Response.Write("});" & vbNewLine)
                        Response.Write("markers_rain_2016_05_16.push(marker_" & i & ");" & vbNewLine)

                        Response.Write("var infowindow_" & i & "=new google.maps.InfoWindow({" & vbNewLine)
                        Response.Write("content:'災害地點：" & dr.Item("災害地點") & "<br/>災情描述：" & dr.Item("災情描述") & "'" & vbNewLine)
                        Response.Write("})" & vbNewLine)

                        Response.Write("marker_" & i & ".addListener('click',function() {" & vbNewLine)
                        Response.Write("infowindow_" & i & ".open(map,marker_" & i & ");" & vbNewLine)
                        Response.Write("});" & vbNewLine)
                    End While
                    dr.Close()

                    cmd.CommandText = "select * from cctv_taipei_t;"
                    dr = cmd.ExecuteReader()
                    While dr.Read()
                        i = i + 1
                        Response.Write("var marker_" & i & "=new google.maps.Marker({" & vbNewLine)
                        Response.Write("position:{lat:" & dr.Item("lat") & ",lng:" & dr.Item("lon") & "}," & vbNewLine)
                        'response.write("map:map," & VBNewLine)
                        'response.write("title:'" & dr.item("address").ToString() & "'," & VBNewLine)
                        Response.Write("icon:'../img/map_icon/cctv_orange.png'," & vbNewLine)
                        Response.Write("});" & vbNewLine)

                        Response.Write("markers_cctv_taipei_t.push(marker_" & i & ");" & vbNewLine)

                        Response.Write("var infowindow_" & i & "=new google.maps.InfoWindow({" & vbNewLine)
                        Response.Write("content:'<iframe src=if_cctv_taipei_t.aspx?aid=" & dr.Item("aid") & " width=600 height=400 frameborder=0></iframe>'" & vbNewLine)
                        Response.Write("})" & vbNewLine)

                        Response.Write("marker_" & i & ".addListener('click',function() {" & vbNewLine)
                        Response.Write("infowindow_" & i & ".open(map,marker_" & i & ");" & vbNewLine)
                        Response.Write("});" & vbNewLine)
                    End While
                    dr.Close()

                    cmd.CommandText = "select * from cctv_tainan_t;"
                    dr = cmd.ExecuteReader()
                    While dr.Read()
                        i = i + 1
                        Response.Write("var marker_" & i & "=new google.maps.Marker({" & vbNewLine)
                        Response.Write("position:{lat:" & dr.Item("lat") & ",lng:" & dr.Item("lon") & "}," & vbNewLine)
                        'response.write("map:map," & VBNewLine)
                        Response.Write("title:'" & dr.Item("address").ToString() & "'," & vbNewLine)
                        Response.Write("icon:'../img/map_icon/cctv_orange.png'," & vbNewLine)
                        Response.Write("});" & vbNewLine)
                        Response.Write("markers_cctv_tainan_t.push(marker_" & i & ");" & vbNewLine)

                        Response.Write("var infowindow_" & i & "=new google.maps.InfoWindow({" & vbNewLine)
                        'response.write("content:'<img src=" & dr.item("url") & ">'" & VBNewLine)
                        Response.Write("content:'<iframe src=if_cctv_tainan_t.aspx?aid=" & dr.Item("aid") & " width=600 height=400 frameborder=0></iframe>'" & vbNewLine)
                        Response.Write("})" & vbNewLine)

                        Response.Write("marker_" & i & ".addListener('click',function() {" & vbNewLine)
                        Response.Write("infowindow_" & i & ".open(map,marker_" & i & ");" & vbNewLine)
                        Response.Write("});" & vbNewLine)
                    End While
                    dr.Close()

                    cmd.CommandText = "select * from cctv_tainan_p;"
                    dr = cmd.ExecuteReader()
                    While dr.Read()
                        i = i + 1
                        Response.Write("var marker_" & i & "=new google.maps.Marker({" & vbNewLine)
                        Response.Write("position:{lat:" & dr.Item("lat") & ",lng:" & dr.Item("lon") & "}," & vbNewLine)
                        'response.write("map:map," & VBNewLine)
                        Response.Write("icon:'../img/map_icon/cctv_orange.png'," & vbNewLine)
                        Response.Write("});" & vbNewLine)
                        Response.Write("markers_cctv_tainan_p.push(marker_" & i & ");" & vbNewLine)

                        Response.Write("var infowindow_" & i & "=new google.maps.InfoWindow({" & vbNewLine)
                        'response.write("content:'<img src=" & dr.item("url") & ">'" & VBNewLine)
                        Response.Write("content:'<iframe src=if_cctv_tainan_p.aspx?aid=" & dr.Item("aid") & " width=600 height=400 frameborder=0></iframe>'" & vbNewLine)
                        Response.Write("})" & vbNewLine)

                        Response.Write("marker_" & i & ".addListener('click',function() {" & vbNewLine)
                        Response.Write("infowindow_" & i & ".open(map,marker_" & i & ");" & vbNewLine)
                        Response.Write("});" & vbNewLine)
                    End While
                    dr.Close()

                    cmd.CommandText = "select * from cctv_taoyuan where not isNull(lon);"
                    dr = cmd.ExecuteReader()
                    While dr.Read()
                        i = i + 1
                        Response.Write("var marker_" & i & "=new google.maps.Marker({" & vbNewLine)
                        Response.Write("position:{lat:" & dr.Item("lat") & ",lng:" & dr.Item("lon") & "}," & vbNewLine)
                        'response.write("map:map," & VBNewLine)
                        Response.Write("icon:'../img/map_icon/cctv_red.png'," & vbNewLine)
                        Response.Write("});" & vbNewLine)
                        Response.Write("markers_cctv_taoyuan.push(marker_" & i & ");" & vbNewLine)

                        Response.Write("var infowindow_" & i & "=new google.maps.InfoWindow({" & vbNewLine)
                        'response.write("content:'<img src=" & dr.item("url") & ">'" & VBNewLine)
                        Response.Write("content:'<iframe src=if_cctv_taoyuan.aspx?aid=" & dr.Item("aid") & " width=600 height=400 frameborder=0></iframe>'" & vbNewLine)
                        Response.Write("})" & vbNewLine)

                        Response.Write("marker_" & i & ".addListener('click',function() {" & vbNewLine)
                        Response.Write("infowindow_" & i & ".open(map,marker_" & i & ");" & vbNewLine)
                        Response.Write("});" & vbNewLine)
                    End While
                    dr.Close()

                    cmd.CommandText = "select * from cctv_gov where not isNull(lon);"
                    dr = cmd.ExecuteReader()
                    While dr.Read()
                        i = i + 1
                        Response.Write("var marker_" & i & "=new google.maps.Marker({" & vbNewLine)
                        Response.Write("position:{lat:" & dr.Item("lat") & ",lng:" & dr.Item("lon") & "}," & vbNewLine)
                        'response.write("map:map," & VBNewLine)
                        Response.Write("icon:'../img/map_icon/cctv.png'," & vbNewLine)
                        Response.Write("});" & vbNewLine)
                        Response.Write("markers_cctv_gov.push(marker_" & i & ");" & vbNewLine)

                        Response.Write("var infowindow_" & i & "=new google.maps.InfoWindow({" & vbNewLine)
                        'response.write("content:'<img src=" & dr.item("url") & ">'" & VBNewLine)
                        Response.Write("content:'<iframe src=if_cctv_gov.aspx?aid=" & dr.Item("aid") & " width=600 height=400 frameborder=0></iframe>'" & vbNewLine)
                        Response.Write("})" & vbNewLine)

                        Response.Write("marker_" & i & ".addListener('click',function() {" & vbNewLine)
                        Response.Write("infowindow_" & i & ".open(map,marker_" & i & ");" & vbNewLine)
                        Response.Write("});" & vbNewLine)
                    End While
                    dr.Close()
                    cmd.CommandText = "select * from sensor_ilang;"
                    dr = cmd.ExecuteReader()
                    While dr.Read()
                        i = i + 1
                        Response.Write("var marker_" & i & "=new google.maps.Marker({" & vbNewLine)
                        Response.Write("position:{lat:" & dr.Item("lat") & ",lng:" & dr.Item("lon") & "}," & vbNewLine)
                        'response.write("map:map," & VBNewLine)
                        Response.Write("icon:'../img/map_icon/powerlinepole.png'" & vbNewLine)
                        Response.Write("});" & vbNewLine)
                        Response.Write("markers_ilan.push(marker_" & i & ");" & vbNewLine)

                        Response.Write("var infowindow_" & i & "=new google.maps.InfoWindow({" & vbNewLine)
                        Response.Write("content:'經度：" & dr.Item("lon") & "<br/>緯度：" & dr.Item("lat") & "<br/>地址：" & Trim(dr.Item("address").ToString()) & ">'" & vbNewLine)
                        Response.Write("})" & vbNewLine)

                        Response.Write("marker_" & i & ".addListener('click',function() {" & vbNewLine)
                        Response.Write("infowindow_" & i & ".open(map,marker_" & i & ");" & vbNewLine)
                        Response.Write("});" & vbNewLine)
                    End While
                    dr.Close()

                    cmd.CommandText = "select * from cctv_nantou;"
                    dr = cmd.ExecuteReader()
                    While dr.Read()
                        i = i + 1
                        Response.Write("var marker_" & i & "=new google.maps.Marker({" & vbNewLine)
                        Response.Write("position:{lat:" & dr.Item("lat") & ",lng:" & dr.Item("lon") & "}," & vbNewLine)
                        'response.write("map:map," & VBNewLine)
                        Response.Write("icon:'../img/map_icon/cctv_black.png'," & vbNewLine)
                        Response.Write("});" & vbNewLine)
                        Response.Write("markers_cctv_nantou.push(marker_" & i & ");" & vbNewLine)

                        Response.Write("var infowindow_" & i & "=new google.maps.InfoWindow({" & vbNewLine)
                        'response.write("content:'<img src=" & dr.item("url") & ">'" & VBNewLine)
                        Response.Write("content:'<iframe src=if_cctv_nantou.aspx?aid=" & dr.Item("aid") & " width=600 height=400 frameborder=0></iframe>'" & vbNewLine)
                        Response.Write("})" & vbNewLine)

                        Response.Write("marker_" & i & ".addListener('click',function() {" & vbNewLine)
                        Response.Write("infowindow_" & i & ".open(map,marker_" & i & ");" & vbNewLine)
                        Response.Write("});" & vbNewLine)
                    End While
                    dr.Close()

                    cmd.CommandText = "select * from cctv_tycg;"
                    dr = cmd.ExecuteReader()
                    While dr.Read()
                        i = i + 1
                        Response.Write("var marker_" & i & "=new google.maps.Marker({" & vbNewLine)
                        Response.Write("position:{lat:" & dr.Item("lat") & ",lng:" & dr.Item("lon") & "}," & vbNewLine)
                        Response.Write("icon:'../img/map_icon/cctv_black.png'," & vbNewLine)
                        Response.Write("});" & vbNewLine)
                        Response.Write("markers_cctv_tycg.push(marker_" & i & ");" & vbNewLine)

                        Response.Write("var infowindow_" & i & "=new google.maps.InfoWindow({" & vbNewLine)
                        Response.Write("content:'<iframe src=if_cctv_tycg.aspx?aid=" & dr.Item("aid") & " width=600 height=400 frameborder=0></iframe>'" & vbNewLine)
                        Response.Write("})" & vbNewLine)

                        Response.Write("marker_" & i & ".addListener('click',function() {" & vbNewLine)
                        Response.Write("infowindow_" & i & ".open(map,marker_" & i & ");" & vbNewLine)
                        Response.Write("});" & vbNewLine)
                    End While

                    con.Close()
                    con.Dispose()
                    con = Nothing
                %>
            }
        </script>
        <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDXnPbeuifWgnx-WNF7WjsD8YMkYVKSPmg&libraries=places&callback=initMap"></script>
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

    function toggle_cctv_taipei_t() {
        if (document.getElementById('CB_cctv_taipei_t').checked) {
            for (var i=0;i < markers_cctv_taipei_t.length;i++) {
                markers_cctv_taipei_t[i].setMap(map);
            }
        }else{
            for (var i=0;i < markers_cctv_taipei_t.length;i++) {
                markers_cctv_taipei_t[i].setMap(null);
            }
        }
    }

    function toggle_cctv_tainan_t() {
        if (document.getElementById('CB_cctv_tainan_t').checked) {
            for (var i=0;i < markers_cctv_tainan_t.length;i++) {
                markers_cctv_tainan_t[i].setMap(map);
            }
        }else{
            for (var i=0;i < markers_cctv_tainan_t.length;i++) {
                markers_cctv_tainan_t[i].setMap(null);
            }
        }
    }

    function toggle_cctv_tainan_p() {
        if (document.getElementById('CB_cctv_tainan_p').checked) {
            for (var i=0;i < markers_cctv_tainan_p.length;i++) {
                markers_cctv_tainan_p[i].setMap(map);
            }
        }else{
            for (var i=0;i < markers_cctv_tainan_p.length;i++) {
                markers_cctv_tainan_p[i].setMap(null);
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

    function toggle_tycg() {
        if (document.getElementById('CB_tycg').checked) {
            for (var i = 0; i < markers_cctv_tycg.length; i++) {
                markers_cctv_tycg[i].setMap(map);
            }
        } else {
            for (var i = 0; i < markers_cctv_tycg.length; i++) {
                markers_cctv_tycg[i].setMap(null);
            }
        }
    }
</script>