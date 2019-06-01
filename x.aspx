<script runat="server">
Function my_dt(ByVal x As String) As String
	Dim s As String=""
	Dim dt As DateTime
	
	If inStr(x,"上午") Then
		s=replace(x,"上午","")
		dt=CDate(s)
		s=dt.ToString("yyyy-MM-dd HH:mm:ss")
	Else
		s=LEFT(x,10) & " " & right(x,8)
		dt=CDate(s)
		dt=dt.AddHours(12)
		s=dt.ToString("yyyy-MM-dd HH:mm:ss")
	End If
	return(s)
End Function

Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
	If not isPostBack Then
		Dim i As Integer=0
		Dim s As String=""
		Dim AL As New ArrayList()
		Dim BL As New ArrayList()
		
		Dim con As MySqlConnection=New MySqlConnection(Application("DB"))
		con.open()
		Dim cmd As New MySqlCommand()
		cmd.Connection=con
		cmd.CommandText="select * from rain_2018_10_11"
		Dim dr As MySqlDataReader=cmd.ExecuteReader()
		while dr.read()
			AL.Add(dr.item("id"))
			BL.Add(my_dt(dr.item("發生時間")))
		end while
		dr.close()
		response.write("<ol>" & VBNewLine)
		For i=0 to AL.count-1
			s="update rain_2018_10_11 set dt='" & BL(i) & "' where id='" & AL(i) & "';"
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