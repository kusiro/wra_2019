<h1>XLSX</h1>

<table border="1">
<%
Dim i As Integer=0
Dim s_1 As String=""
Dim s_2 As String=""
Dim s_3 As String=""
Dim s_4 As String=""
Dim s_5 As String=""

Dim con_excel As New OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" & server.MapPath("x.xlsx") & ";Extended Properties='Excel 12.0; HDR=NO; IMEX=1'")
con_excel.open()
Dim cmd_excel As New OleDbCommand("select * from [工作表1$]",con_excel)
Dim dr_excel As OleDbDataReader=cmd_excel.ExecuteReader()
while dr_excel.read()
	i=i+1
	
	s_1=Trim(dr_excel.item(0).ToString())
	s_2=Trim(dr_excel.item(1).ToString())
	s_3=Trim(dr_excel.item(2).ToString())
	s_4=Trim(dr_excel.item(3).ToString())
	s_5=Trim(dr_excel.item(4).ToString())

	response.write("<tr>" & VBNewLine)
		response.write("<td>" & i & "</td>" & VBNewLine)
		response.write("<td>" & s_1 & "</td>" & VBNewLine)
		response.write("<td>" & s_2 & "</td>" & VBNewLine)
		response.write("<td>" & s_3 & "</td>" & VBNewLine)
		response.write("<td>" & s_4 & "</td>" & VBNewLine)
		response.write("<td>" & s_5 & "</td>" & VBNewLine)
	response.write("</tr>" & VBNewLine)
end while
dr_excel.close()
con_excel.close()
con_excel.dispose()
con_excel=nothing
%>
</table>