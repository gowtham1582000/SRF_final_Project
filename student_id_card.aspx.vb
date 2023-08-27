Imports System.Data.SqlClient
Imports CrystalDecisions.CrystalReports.Engine

Public Class student_id_card
    Inherits System.Web.UI.Page
    Dim conn As String = ConfigurationManager.ConnectionStrings("admin").ConnectionString

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim admissionnumber As Integer = Convert.ToInt32(Session("admission1"))
            Dim ds As DataSet1 = getdata(admissionnumber)
            Dim reportdocument As New ReportDocument()
            reportdocument.Load(Server.MapPath("~\student_id_cards.rpt"))
            reportdocument.SetDataSource(ds)
            CrystalReportViewer1.ReportSource = reportdocument

    End Sub

    Function getdata(admin As Integer)
        Dim query As String = $"select * from studentInformation where std_admno={admin}"
        Dim connection As New SqlConnection(conn)
        Dim adapter As New SqlDataAdapter(query, connection)
        Dim ds As New DataSet1()
        adapter.Fill(ds, "studentinformation")
        Return ds
    End Function
End Class
