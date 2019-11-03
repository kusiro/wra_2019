<%@ Page Title="" Language="vb" AutoEventWireup="false"  MasterPageFile="./main.Master"%>
<asp:Content ID="input" ContentPlaceHolderID="input" runat="server">
    <input type="checkbox" id="CB_rain_2016_05_16" onclick="toggle_rain_2016_05_16();" checked> 2016-05-16 豪雨災點
</asp:Content>
<asp:Content ID="script" ContentPlaceHolderID="script" runat="server">
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
                Response.Write(
                    "var marker_" & i & "=new google.maps.Marker({" & vbNewLine &
                    "position:{lat:" & dr.Item("lat") & ",lng:" & dr.Item("lon") & "}," & vbNewLine &
                    "map: map," & vbNewLine &
                    "icon:'../img/map_icon/flood.png'," & vbNewLine &
                    "});" & vbNewLine &
                    "markers_rain_2016_05_16.push(marker_" & i & ");" & vbNewLine &
                    "var infowindow = null;" & vbNewLine &
                    "google.maps.event.addListener(marker_" & i & ", 'click', function() {" & vbNewLine &
                        "if (infowindow) {" & vbNewLine &
                            "infowindow.close();" & vbNewLine &
                        "}" & vbNewLine &
                        "infowindow = new google.maps.InfoWindow({" & vbNewLine &
                            "content:'災害地點：" & dr.Item("災害地點") & "<br/>災情描述：" & dr.Item("災情描述") & "'" & vbNewLine &
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
</asp:Content>
<asp:Content ID="toggle" ContentPlaceHolderID="toggle" runat="server">   
    var markers_rain_2016_05_16=[];
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
</asp:Content>

       
