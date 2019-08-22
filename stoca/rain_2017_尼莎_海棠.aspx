<%@ Page Title="" Language="vb" AutoEventWireup="false"  MasterPageFile="./main.Master"%>
<asp:Content ID="input" ContentPlaceHolderID="input" runat="server">
    <input type="checkbox" id="CB_rain_2017_尼莎_海棠" onclick="toggle_rain_2017_尼莎_海棠();" checked> 2017-尼莎-海棠<br />
</asp:Content>
<asp:Content ID="script" ContentPlaceHolderID="script" runat="server">
        
        <%
            Dim i As Integer=0
            Dim con As MySqlConnection=New MySqlConnection(Application("DB"))
            con.open()
            Dim cmd As New MySqlCommand()
            cmd.Connection=con
            cmd.CommandText="select * from rain_2017_尼莎_海棠 where not isNull(lon);"
            Dim dr As MySqlDataReader=cmd.ExecuteReader()
            while dr.read()
                i=i+1
                response.write("var marker_" & i & "=new google.maps.Marker({" & VBNewLine)
                response.write("position:{lat:" & dr.item("lat") & ",lng:" & dr.item("lon") & "}," & VBNewLine)
                response.write("map:map," & VBNewLine)
                response.write("icon:'../img/map_icon/flood.png'," & VBNewLine)
                response.write("});" & VBNewLine)
                response.write("markers_rain_2017_尼莎_海棠.push(marker_" & i & ");" & VBNewLine)

                response.write("var infowindow_" & i & "=new google.maps.InfoWindow({" & VBNewLine)
                response.write("content:'災害地點：" & dr.item("災害地點") & "<br/>災情描述：" & dr.item("災情描述") & "'" & VBNewLine)
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
</asp:Content>
<asp:Content ID="toggle" ContentPlaceHolderID="toggle" runat="server">
    var markers_rain_2017_尼莎_海棠=[];

    function toggle_rain_2017_尼莎_海棠() {
        if (document.getElementById('CB_rain_2017_尼莎_海棠').checked) {
            for (var i=0;i < markers_rain_2017_尼莎_海棠.length;i++) {
                markers_rain_2017_尼莎_海棠[i].setMap(map);
            }
        }else{
            for (var i=0;i < markers_rain_2017_尼莎_海棠.length;i++) {
                markers_rain_2017_尼莎_海棠[i].setMap(null);
            }
        }
    }
</asp:Content>

       
