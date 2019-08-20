<script runat="server">
    Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        If not isPostBack Then
            Dim s As String=""
            Dim con As MySqlConnection=New MySqlConnection(Application("DB"))
            con.open()
            Dim cmd As New MySqlCommand()
            cmd.Connection=con
            cmd.Parameters.AddWithValue("@aid", Request.QueryString("aid"))
            cmd.CommandText = "select * from cctv_gov_mseg where aid=@aid"
            Dim dr As MySqlDataReader=cmd.ExecuteReader()
            If dr.read() Then
                s = s & "<h1>" & dr.Item("normal").ToString() & "</h1>"
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