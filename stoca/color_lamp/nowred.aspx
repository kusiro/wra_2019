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
<div class="searchBox">
    <input id="pac-input" class="controls" type="text" placeholder="搜尋 google 地圖" aria-label="搜尋 google 地圖">
    <div class="searchBottom"></div>
</div>

<div id="map"></div>


<script>

var markers_cctv_line = [];
var markers_cctv_nowred = [];
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
        cmd.CommandText = "select * from nowred;"
        Dim dr As MySqlDataReader = cmd.ExecuteReader()
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
    for (var i = 0; i < markers_cctv_nowred.length; i++) {
        markers_cctv_nowred[i].setMap(map);
    }
</script>