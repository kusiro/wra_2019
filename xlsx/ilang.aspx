<h1>XLSX</h1>
<table border="1">
<%
Dim con As MySqlConnection=New MySqlConnection(Application("DB"))
con.open()
Dim cmd As New MySqlCommand()
cmd.Connection=con
cmd.Parameters.AddWithValue("@address","")
cmd.Parameters.AddWithValue("@lon",0.0)
cmd.Parameters.AddWithValue("@lat",0.0)

Dim i As Integer=0
Dim s As String=""

Dim address As String=""
Dim lon As String=""
Dim lat As String=""

Dim con_excel As New OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" & server.MapPath("ilang.xlsx") & ";Extended Properties='Excel 12.0; HDR=NO; IMEX=1'")
con_excel.open()
Dim cmd_excel As New OleDbCommand("select * from [工作表1$]",con_excel)
Dim dr_excel As OleDbDataReader=cmd_excel.ExecuteReader()
while dr_excel.read()
	i=i+1
	
	address=Trim(dr_excel.item(0).ToString())
	lon=Trim(dr_excel.item(1).ToString())
	lat=Trim(dr_excel.item(2).ToString())
	
	If i > 1 Then
		cmd.Parameters("@address").value=address
		cmd.Parameters("@lon").value=lon
		cmd.Parameters("@lat").value=lat
		
		cmd.CommandText="insert ignore into cctv_ilang(address,lon,lat) values(@address,@lon,@lat)"
		cmd.ExecuteNonQuery()
	End If
end while
dr_excel.close()
con_excel.close()
con_excel.dispose()
con_excel=nothing

con.close()
con.dispose()
con=nothing
%>
</table>