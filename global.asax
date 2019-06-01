<SCRIPT LANGUAGE="VBScript" RUNAT="Server"> 
Sub Application_OnStart
	Application("DB")=System.Web.Configuration.WebConfigurationManager.connectionStrings("DB").connectionString
End Sub
</SCRIPT>