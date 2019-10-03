<script runat="server">
    Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        If not isPostBack Then
            Dim s As String=""
            Dim con As MySqlConnection=New MySqlConnection(Application("DB"))
            con.open()
            Dim cmd As New MySqlCommand()
            cmd.Connection=con
            cmd.Parameters.AddWithValue("@aid",request.QueryString("aid"))
            cmd.CommandText = "select * from mobile_site where aid=@aid"
            Dim dr As MySqlDataReader=cmd.ExecuteReader()
            If dr.read() Then
                s=s & "<div style='font-size:18px;font-weight:bold;'>警示地點: " & dr.item("address").ToString() & "</div>"
                s = s & "<img src='" & dr.Item("imageURL") & "' style='width:430;height: 230px;' allowfullscreen='True' webkitallowfullscreen='True' mozallowfullscreen='True'></img>"
                s = s & "<h3 style='line-height: 1.2em;margin: 0.2em 0;font-size: 16px;'>事件ID: " & dr.Item("ID") & "</h1>"
                s = s & "<h3 style='line-height: 1.2em;margin: 0.2em 0;font-size: 16px;'>警示時間: " & dr.Item("datetime") & "</h1>"
               
                s = s & "<table style:'border: 1px solid black;'>"
                s = s & "<tr style:'border: 1px solid black;'>"
                s = s & "<th style='line-height: 1.2em;border: 1px solid black;padding: 8px;margin: 0;'>水位高度</th>"
                s = s & "<th style='line-height: 1.2em;border: 1px solid black;padding: 8px;margin: 0;'>警戒值(未定義)</th>"   
                s = s & "</tr>"
                s = s & "<tr style:'border: 1px solid black;'>"
                s = s & "<td style='line-height: 1.2em;text-align: center;border: 1px solid black;padding: 8px;margin: 0;'>" & dr.Item("flood_height") & "</td>"
                s = s & "<td style='line-height: 1.2em;text-align: center;border: 1px solid black;padding: 8px;margin: 0;'>" & dr.Item("alert_level") & "</td>"  
                s = s & "</tr>"
                s = s & "</table>"
                dr.close()
                con.close()
                con.dispose()
                con=nothing
                L1.text=s
            Else
                dr.close()
                con.close()
                con.dispose()
                con=nothing
                L1.text="Invalid aid!"
            End If
        End If
    End Sub
</script>	
<html>
<body style="font-family:微軟正黑體">

<asp:Literal id="L1" runat="server"/>

</body>
</html>