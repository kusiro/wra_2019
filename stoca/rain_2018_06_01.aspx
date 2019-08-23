<%@ Page Title="" Language="vb" AutoEventWireup="false"  MasterPageFile="./main.Master"%>
<asp:Content ID="input" ContentPlaceHolderID="input" runat="server">
    <input type="checkbox" id="CB_rain_2018_06_01" onclick="toggle_rain_2018_06_01();" checked> 2018-06-01 豪雨災點<br />
</asp:Content>
<asp:Content ID="script" ContentPlaceHolderID="script" runat="server">
        
        <%
            Dim i As Integer=0
            Dim con As MySqlConnection=New MySqlConnection(Application("DB"))
            con.open()
            Dim cmd As New MySqlCommand()
            cmd.Connection=con
            cmd.CommandText="select * from rain_2018_06_01 where not isNull(lon);"
            Dim dr As MySqlDataReader=cmd.ExecuteReader()
            while dr.read()
                i=i+1
                response.write("var marker_" & i & "=new google.maps.Marker({" & VBNewLine)
                response.write("position:{lat:" & dr.item("lat") & ",lng:" & dr.item("lon") & "}," & VBNewLine)
                response.write("map:map," & VBNewLine)
                response.write("icon:'../img/map_icon/flood.png'," & VBNewLine)
                response.write("});" & VBNewLine)
                response.write("markers_rain_2018_06_01.push(marker_" & i & ");" & VBNewLine)
                response.write(
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
            end while
            dr.close()
            con.close()
            con.dispose()
            con=nothing
        %>
</asp:Content>
<asp:Content ID="toggle" ContentPlaceHolderID="toggle" runat="server">
    var markers_rain_2018_06_01=[];

    function toggle_rain_2018_06_01() {
        if (document.getElementById('CB_rain_2018_06_01').checked) {
            for (var i=0;i < markers_rain_2018_06_01.length;i++) {
                markers_rain_2018_06_01[i].setMap(map);
            }
        }else{
            for (var i=0;i < markers_rain_2018_06_01.length;i++) {
                markers_rain_2018_06_01[i].setMap(null);
            }
        }
    }
</asp:Content>

       
