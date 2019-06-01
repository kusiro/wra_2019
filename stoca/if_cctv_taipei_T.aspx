<script runat="server">
Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
	If not isPostBack Then
		Dim s As String=""
		Dim con As MySqlConnection=New MySqlConnection(Application("DB"))
		con.open()
		Dim cmd As New MySqlCommand()
		cmd.Connection=con
		cmd.Parameters.AddWithValue("@aid",request.QueryString("aid"))
		cmd.CommandText="select * from cctv_taipei_T where aid=@aid"
		Dim dr As MySqlDataReader=cmd.ExecuteReader()
		If dr.read() Then
			s=s & "<div style='font-size:18px;font-weight:bold;'>" & dr.item("address").ToString() & "</div>"
			's=s & "<img src='" & dr.item("url") & "' style='max-width:100%'>"
			s=s & "<iframe src='" & dr.item("url") & "' width=480 height=480 frameborder=0></iframe>"
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