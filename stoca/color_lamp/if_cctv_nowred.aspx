<script runat="server">
    Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        If not isPostBack Then
            Dim s As String=""
            Dim con As MySqlConnection=New MySqlConnection(Application("DB"))
            con.open()
            Dim cmd As New MySqlCommand()
            cmd.Connection=con
            cmd.Parameters.AddWithValue("@aid",request.QueryString("aid"))
            cmd.CommandText = "select * from nowred where aid=@aid"
            Dim dr As MySqlDataReader=cmd.ExecuteReader()
            If dr.read() Then
                Dim station As String = dr.item("id")
                s = s & "<div style='font-size:18px;font-weight:bold;'>" & dr.item("address").ToString() & "</div>"
                If station.Substring(0,7) = "thbCCTV" Then
                    s = s & "<h3 style='line-height: 1.2em;margin: 0.2em 0;font-size: 16px;'>觀測站: CCTV 公路總局</h1>"
                ElseIf station.Substring(0,3) = "TNb" Then
                    s = s & "<h3 style='line-height: 1.2em;margin: 0.2em 0;font-size: 16px;'>觀測站: CCTV 台南市 警察局</h1>"
                ElseIf station.Substring(0,3) = "TNa" Then
                    s = s & "<h3 style='line-height: 1.2em;margin: 0.2em 0;font-size: 16px;'>觀測站: CCTV 台南市 交通局</h1>"
                ElseIf station.Substring(0,3) = "C00" Then
                    s = s & "<h3 style='line-height: 1.2em;margin: 0.2em 0;font-size: 16px;'>觀測站: CCTV 新北市 交通局</h1>"
                ElseIf station.Substring(0,2) = "TY" Then
                    s = s & "<h3 style='line-height: 1.2em;margin: 0.2em 0;font-size: 16px;'>觀測站: CCTV 桃園市 交通局</h1>"
                ElseIf station.Substring(0,2) = "NT" Then
                    s = s & "<h3 style='line-height: 1.2em;margin: 0.2em 0;font-size: 16px;'>觀測站: CCTV 南投市 交通局</h1>"
                ElseIf station.Substring(0,4) = "6400" Then
                    s = s & "<h3 style='line-height: 1.2em;margin: 0.2em 0;font-size: 16px;'>觀測站: CCTV 高雄市 交通局</h1>"
                Else
                    s = s & "<h3 style='line-height: 1.2em;margin: 0.2em 0;font-size: 16px;'>觀測站: CCTV 桃園智慧下水道</h1>"
                End If
                s = s & "<h3 style='line-height: 1.2em;margin: 0.2em 0;font-size: 16px;'>觀測時間: " & dr.Item("realtime") & "</h1>"
                s = s & "<img src='" & dr.Item("url") & "' style='max-width:100%'>"
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