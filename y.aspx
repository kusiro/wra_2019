<script runat="server">
Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
	If not isPostBack Then
		Dim i As Integer=0
		Dim o As Object
		Dim s As String=""
		Dim AL As New ArrayList()
		Dim BL As New ArrayList()
		
		Dim con As MySqlConnection=New MySqlConnection(Application("DB"))
		con.open()
		Dim cmd As New MySqlCommand()
		cmd.Connection=con
		cmd.CommandText="select * from cctv_taoyuan where not isNull(xy)"
		Dim dr As MySqlDataReader=cmd.ExecuteReader()
		while dr.read()
			AL.Add(dr.item("aid"))
			BL.Add(dr.item("xy"))
		end while
		dr.close()
		response.write("<ol>" & VBNewLine)
		For i=0 to AL.count-1
			s=BL(i)
			o=split(s," ")
			s="update cctv_taoyuan set lon=" & o(0) & ",lat=" & o(1) & " where aid=" & AL(i) & ";"
			response.write("<li>" & s & "</li>" & VBNewLine)
			cmd.CommandText=s
			cmd.ExecuteNonQuery()
		Next
		response.write("</ol>" & VBNewLine)
		con.close()
		con.dispose()
		con=nothing
	End If
End Sub
</script>