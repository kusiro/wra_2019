<script runat="server">
Private Function Cal_TWD97_To_lonlat(x As Double, y As Double) As String
	Dim a As Double = 6378137.0
	Dim b As Double = 6356752.314245
	Dim lon0 As Double = 121 * Math.PI / 180
	Dim k0 As Double = 0.9999
	Dim dx As Integer = 250000

	Dim dy As Double = 0
	Dim e As Double = Math.Pow((1 - Math.Pow(b, 2) / Math.Pow(a, 2)), 0.5)

	x -= dx
	y -= dy

	' Calculate the Meridional Arc
	Dim M As Double = y / k0

	' Calculate Footprint Latitude
	Dim mu As Double = M / (a * (1.0 - Math.Pow(e, 2) / 4.0 - 3 * Math.Pow(e, 4) / 64.0 - 5 * Math.Pow(e, 6) / 256.0))
	Dim e1 As Double = (1.0 - Math.Pow((1.0 - Math.Pow(e, 2)), 0.5)) / (1.0 + Math.Pow((1.0 - Math.Pow(e, 2)), 0.5))

	Dim J1 As Double = (3 * e1 / 2 - 27 * Math.Pow(e1, 3) / 32.0)
	Dim J2 As Double = (21 * Math.Pow(e1, 2) / 16 - 55 * Math.Pow(e1, 4) / 32.0)
	Dim J3 As Double = (151 * Math.Pow(e1, 3) / 96.0)
	Dim J4 As Double = (1097 * Math.Pow(e1, 4) / 512.0)

	Dim fp As Double = mu + J1 * Math.Sin(2 * mu) + J2 * Math.Sin(4 * mu) + J3 * Math.Sin(6 * mu) + J4 * Math.Sin(8 * mu)

	' Calculate Latitude and Longitude

	Dim e2 As Double = Math.Pow((e * a / b), 2)
	Dim C1 As Double = Math.Pow(e2 * Math.Cos(fp), 2)
	Dim T1 As Double = Math.Pow(Math.Tan(fp), 2)
	Dim R1 As Double = a * (1 - Math.Pow(e, 2)) / Math.Pow((1 - Math.Pow(e, 2) * Math.Pow(Math.Sin(fp), 2)), (3.0 / 2.0))
	Dim N1 As Double = a / Math.Pow((1 - Math.Pow(e, 2) * Math.Pow(Math.Sin(fp), 2)), 0.5)

	Dim D As Double = x / (N1 * k0)

	' 計算緯度
	Dim Q1 As Double = N1 * Math.Tan(fp) / R1
	Dim Q2 As Double = (Math.Pow(D, 2) / 2.0)
	Dim Q3 As Double = (5 + 3 * T1 + 10 * C1 - 4 * Math.Pow(C1, 2) - 9 * e2) * Math.Pow(D, 4) / 24.0
	Dim Q4 As Double = (61 + 90 * T1 + 298 * C1 + 45 * Math.Pow(T1, 2) - 3 * Math.Pow(C1, 2) - 252 * e2) * Math.Pow(D, 6) / 720.0
	Dim lat As Double = fp - Q1 * (Q2 - Q3 + Q4)

	' 計算經度
	Dim Q5 As Double = D
	Dim Q6 As Double = (1 + 2 * T1 + C1) * Math.Pow(D, 3) / 6
	Dim Q7 As Double = (5 - 2 * C1 + 28 * T1 - 3 * Math.Pow(C1, 2) + 8 * e2 + 24 * Math.Pow(T1, 2)) * Math.Pow(D, 5) / 120.0
	Dim lon As Double = lon0 + (Q5 - Q6 + Q7) / Math.Cos(fp)

	lat = (lat * 180) / Math.PI
	'緯
	lon = (lon * 180) / Math.PI
	'經

	Dim lonlat As String=CStr(lat) + "," + CStr(lon)
	Return lonlat
End Function
	
Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
	If not isPostBack Then
		Dim dt As Datetime=now

		Dim s As String=""
		Dim o As Object
		
		Dim con2 As MySqlConnection=New MySqlConnection(Application("DB"))
		con2.open()
		Dim cmd2 As New MySqlCommand()
		cmd2.Connection=con2

		Dim con As MySqlConnection=New MySqlConnection(Application("DB"))
		con.open()
		Dim cmd As New MySqlCommand()
		cmd.Connection=con
		cmd.CommandText="select * from rain_2016_艾利 where x <> '#N/A' and y <> '#N/A' and  isNull(lon)"
		Dim dr As MySqlDataReader=cmd.ExecuteReader()
		while dr.read()
			s=Cal_TWD97_To_lonlat(dr.item("x"),dr.item("y"))
			o=split(s,",")

			cmd2.CommandText="update rain_2016_艾利 set lat=" & o(0) & ",lon=" & o(1) & " where id='" & dr.item("id") & "';"
			cmd2.ExecuteNonQuery()			
		end while
		dr.close()
		con.close()
		con.dispose()
		con=nothing
		
		con2.close()
		con2.dispose()
		con2=nothing
		
		response.write("<h1>Duration : " &  DateDiff("s",dt,now()) & "</h1>")
	End If
End Sub
</script>