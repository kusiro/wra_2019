<!DOCTYPE html>
<html>
<head>
    <script src="https://kit.fontawesome.com/5ede0ee51b.js" crossorigin="anonymous"></script>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <link rel="stylesheet" href="../style/main.css">
    <script src="../plugin/index.js"></script>
    <title>道路積淹水高度判釋系統</title>
    <style>
        .icon {
            position: absolute;
            display: flex;
            justify-content: center;
            align-content: center;
            flex-wrap: nowrap;
            left: 13px;
            top: 530px;
            padding: 10px;
            background-color: rgba(255, 255, 255, 0.7);
            z-index: 5;
        }
        form {
            margin-top: 1em;
            text-align: left;
            vertical-align: middle;
        }
        form input {
            margin: 0.6em 0;
            padding: 0.75em;
            border-radius: 5px;
            border: solid 1px #b4b4b4;
        }
    </style>
</head>
    <body style="font-family:微軟正黑體">
        <h1 class="title">道路積淹水深度判釋系統</h1>
        <div id="floating-panel">
            <div class="closeBtn" onclick="closePanel()">
                <i class="fas fa-angle-up"></i>
            </div>
            <input type="checkbox" id="CB_cctv_line" onclick="toggle_cctv_line();"> Line Robot 警示訊息<br/>
            <input type="checkbox" id="CB_cctv_mobile" onclick="toggle_cctv_mobile();"> 行動測站<br/>
            <input type="checkbox" id="CB_cctv_26height" onclick="toggle_cctv_26height();"> CCTV 26處測站<br/>(日曆功能測試中)<br/>

                start : <input class="TinyPicker start" id="startDate" type="text" name="start-time"><br />
                end : <input class="TinyPicker end" id="endDate" type="text" name="end-time">
                <input type="submit" value="搜尋" onclick="searchDate()">
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
        </div>

        <div id="map"></div>

        <script>
            new TinyPicker({
                    firstBox: document.getElementById('startDate'),
                    lastBox: document.getElementById('endDate'),
                    local: 'tw',
                    allowPast: true,
                }).init();
            var markers_cctv_line = [];
            var markers_cctv_mobile = [];
            var markers_cctv_26height = [];
            var map;

            function initMap() {
                map=new google.maps.Map(document.getElementById('map'), {
                            zoom:8,
                            center: { lat: 23.5, lng: 121 },
                            mapTypeControl: false,
                            streetViewControl: false,
                            zoomControl: false
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
                    Dim i As Integer = 0
                    Dim l As Integer = 0
                    Dim m As Integer = 0

                    Dim startTime As String
                    Dim endTime As String
                    If String.IsNullOrEmpty(Request.QueryString("start-time")) Then
                        startTime = String.Format("{0:yyyy-MM-dd}", DateTime.Now)
                        endTime = String.Format("{0:yyyy-MM-dd}", DateTime.Now.AddDays(1))
                    Else
                        startTime = Request.QueryString("start-time")
                        endTime = Request.QueryString("end-time")
                    End If
                        
                    Dim con As MySqlConnection=New MySqlConnection(Application("DB"))
                    con.open()
                    Dim cmd As New MySqlCommand()
                    cmd.Connection = con
                    cmd.CommandText = "select * from lineevent WHERE `datetime` BETWEEN '" & startTime & "' AND '" & endTime & "';"
                    
                    Dim dr As MySqlDataReader = cmd.ExecuteReader()
                    While dr.Read()
                        l = l + 1
                        'map
                        Response.Write("var line_" & l & "=new google.maps.Marker({" & vbNewLine)
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
                        Response.Write("markers_cctv_line.push(line_" & l & ");" & vbNewLine)
                        'iframe
                        response.write(
                            "var infowindow = null;" & vbNewLine &
                            "google.maps.event.addListener(line_" & l & ", 'click', function() {" & vbNewLine &
                                "if (infowindow) {" & vbNewLine &
                                    "infowindow.close();" & vbNewLine &
                                "}" & vbNewLine &
                                "infowindow = new google.maps.InfoWindow({" & vbNewLine &
                                    "content:'<iframe src=if_cctv_line_mseg.aspx?aid=" & dr.Item("aid") & " width=500 height=400 frameborder=0></iframe>'," & vbNewLine &
                                    "maxmaxWidth: 600" & vbNewLine &
                                "});" & vbNewLine &
                                "infowindow.open(map,line_" & l & ");" & vbNewLine &
                            "})" & vbNewLine
                        )
                    End While
                    dr.Close()
                                        
                    cmd.CommandText = "select * from 26height_site WHERE `datetime` BETWEEN '" & startTime & "' AND '" & endTime & "';"
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
                        Response.Write("markers_cctv_26height.push(marker_" & i & ");" & vbNewLine)
                        'iframe
                        response.write(
                            "var infowindow = null;" & vbNewLine &
                            "google.maps.event.addListener(marker_" & i & ", 'click', function() {" & vbNewLine &
                                "if (infowindow) {" & vbNewLine &
                                    "infowindow.close();" & vbNewLine &
                                "}" & vbNewLine &
                                "infowindow = new google.maps.InfoWindow({" & vbNewLine &
                                    "content:'<iframe src=if_cctv_26height_mseg.aspx?aid=" & dr.Item("aid") & " width=500 height=400 frameborder=0></iframe>'," & vbNewLine &
                                    "maxmaxWidth: 600" & vbNewLine &
                                "});" & vbNewLine &
                                "infowindow.open(map,marker_" & i & ");" & vbNewLine &
                            "})" & vbNewLine
                        )
                    End While
                    dr.Close()
                                                                               
                    cmd.CommandText = "SELECT * from ( SELECT *, ROW_NUMBER() over (PARTITION By address ORDER by datetime DESC) AS sort from mobile_site ) tempsort WHERE tempsort.sort=1;"
                    dr = cmd.ExecuteReader()
                    While dr.Read()
                        m = m + 1
                        'map
                        Response.Write("var marker_" & m & "=new google.maps.Marker({" & vbNewLine)
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
                        Response.Write("markers_cctv_mobile.push(marker_" & m & ");" & vbNewLine)
                        'iframe
                        response.write(
                            "var infowindow = null;" & vbNewLine &
                            "google.maps.event.addListener(marker_" & m & ", 'click', function() {" & vbNewLine &
                                "if (infowindow) {" & vbNewLine &
                                    "infowindow.close();" & vbNewLine &
                                "}" & vbNewLine &
                                "infowindow = new google.maps.InfoWindow({" & vbNewLine &
                                    "content:'<iframe src=if_cctv_mobile_mseg.aspx?aid=" & dr.Item("aid") & " width=500 height=400 frameborder=0></iframe>'," & vbNewLine &
                                    "maxmaxWidth: 600" & vbNewLine &
                                "});" & vbNewLine &
                                "infowindow.open(map,marker_" & m & ");" & vbNewLine &
                            "})" & vbNewLine
                        )
                    End While
                    
                    Response.Write("alert('日期範圍 " & startTime & "~" & endTime & ", 資料筆數狀況:\nLine Robot: " & l & " 筆資料\n行動測站: " & m & " 筆資料\nCCTV26: " & i &  "筆資料')" & vbNewLine)
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
	function toggle_cctv_26height() {
        if (document.getElementById('CB_cctv_26height').checked) {
            for (var i = 0; i < markers_cctv_26height.length; i++) {
                markers_cctv_26height[i].setMap(map);
            }
        } else {
            for (var i = 0; i < markers_cctv_26height.length; i++) {
                markers_cctv_26height[i].setMap(null);
            }
        }
    }
    closePanel = () => {
        var panel = document.querySelector('#floating-panel');
        var icon = document.querySelector('.fas');
        if(panel.classList.length == 0){
            panel.classList.add('closed');
            icon.classList.remove('fa-angle-up');
            icon.classList.add('fa-angle-down');
        } else {
            panel.classList.remove('closed');
            icon.classList.remove('fa-angle-down');
            icon.classList.add('fa-angle-up');
        }
    }
    if(window.location.search != ''){
        let startTime = window.location.search.split('&')[0].split('=')[1];
        let endTime = window.location.search.split('&')[1].split('=')[1];
        let start = startTime.split('-')
        let end = endTime.split('-')
        document.querySelector('.start').value = start[0] + '/' + start[1] + '/' + start[2];
        document.querySelector('.end').value = end[0] + '/' + end[1] + '/' + end[2];
    } else {
        var today = new Date();
        document.querySelector('.start').value = today.getFullYear()+"/"+ (today.getMonth()+1) + "/" + (today.getDate()-1);
        document.querySelector('.end').value = today.getFullYear()+"/"+ (today.getMonth()+1) + "/" + today.getDate();
    }
    searchDate = () => {
        let start = document.querySelector('.start').value.split('/');
        let end = document.querySelector('.end').value.split('/');
        // console.log(start[2].length);
        if(start[2].length === 1){
            start[2] = '0'+start[2];
        }
        if (end[2].length === 1) {
            end[2] = '0' + end[2];
        }
        location.replace(document.location.origin+document.location.pathname + "?start-time=" + start[0] + '-' + start[1] + '-' + start[2] + '&end-time=' + end[0] + '-' + end[1] + '-' + end[2]);
        // console.log(start[0]+'-'+start[1]+'-'+start[2]);
        // console.log(end[0] + '-' + end[1] + '-' + end[2]);
        // console.log(document.location.origin+document.location.pathname)
    }
</script>