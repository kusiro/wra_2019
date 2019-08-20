<script runat="server">
    Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        If not isPostBack Then
            Dim s As String=""
            Dim con As MySqlConnection=New MySqlConnection(Application("DB"))
            con.open()
            Dim cmd As New MySqlCommand()
            cmd.Connection=con
            cmd.Parameters.AddWithValue("@aid",request.QueryString("aid"))
            cmd.CommandText = "select * from cctv_tycg where aid=@aid"
            Dim dr As MySqlDataReader=cmd.ExecuteReader()
            If dr.read() Then
                s=s & "<div style='font-size:18px;font-weight:bold;'>" & dr.item("address").ToString() & "</div>"
                s = s & "<img src='" & dr.Item("url") & "' style='max-width:100%'>"
                s = s & "<h3 style='line-height: 1.2em;margin: 0.2em 0;font-size: 16px;'>觀測站: " & dr.Item("id") & "</h3>"
                s = s & "<h3 style='line-height: 1.2em;margin: 0.2em 0;font-size: 16px;'>觀測時間: " & dr.Item("realtime") & "</h3>"
                s = s & "<h3 style='line-height: 1.2em;margin: 0.2em 0;font-size: 16px;'>IM_NAME: " & dr.Item("im_name") & "</h3>"
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