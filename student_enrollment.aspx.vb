Imports System.Data.SqlClient

Public Class student_enrollment
    Inherits System.Web.UI.Page
    Dim conn As String = ConfigurationManager.ConnectionStrings("admin").ConnectionString

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim conn1 As SqlConnection = New SqlConnection(conn)
        Dim query As String = "SELECT * from studentInformation"
        Dim adapter As New SqlDataAdapter(query, conn1)
        Dim dt As New DataTable()
        adapter.Fill(dt)

        dt.Columns.Add("Status", GetType(String))
        dt.Columns.Add("EffectiveFrom", GetType(String))
        dt.Columns.Add("EffectiveTo", GetType(String))

        For Each row As DataRow In dt.Rows
            row("Status") = GetStatus(row)
            row("EffectiveFrom") = GetEffectiveFrom(row)
            row("EffectiveTo") = GetEffectiveTo(row)
        Next

        GridView1.DataSource = dt
        GridView1.DataBind()
    End Sub

    Protected Function GetStatus(dataRow As DataRow) As String
        Dim status As String = "Y - Current"
        Dim admissionDate As Date = Convert.ToDateTime(dataRow("std_doj"))
        Dim currentDate As Date = DateTime.Today

        If admissionDate > currentDate Then
            status = "E - Exit Pending"
        ElseIf admissionDate.Year = currentDate.Year AndAlso admissionDate.Month = currentDate.Month Then
            status = "Y - Current"
        Else
            status = "P - Pass"
        End If

        Return status
    End Function

    Protected Function GetEffectiveFrom(dataRow As DataRow) As String
        Dim admissionDate As Date = Convert.ToDateTime(dataRow("std_doj"))
        Return admissionDate.ToString("yyyy-MM-dd")
    End Function

    Protected Function GetEffectiveTo(dataRow As DataRow) As String
        Dim admissionDate As Date = Convert.ToDateTime(dataRow("std_doj"))
        Dim effectiveToDate As Date = admissionDate.AddMonths(12)
        Return effectiveToDate.ToString("yyyy-MM-dd")
    End Function

    Protected Sub btnView_Click(sender As Object, e As EventArgs) Handles btnView.Click
        Dim searchText As String = txtSearch.Text.Trim()
        Dim selectedClass As String = DropDownList1.SelectedValue
        Dim selectedDate As String = dateDropdown.Text.Trim()
        Dim selectedSortBy As String = DropDownList2.SelectedValue

        Dim orderByClause As String = "" ' Initialize the orderByClause

        If Not String.IsNullOrEmpty(selectedSortBy) AndAlso selectedSortBy <> "None" Then
            Select Case selectedSortBy
                Case "Student Name"
                    orderByClause = "ORDER BY std_FirstName, std_LastName"
                Case "Class"
                    orderByClause = "ORDER BY std_class"
                Case "Admission Number"
                    orderByClause = "ORDER BY std_Admno"
            End Select
        End If

        Dim sqlQuery As String = "SELECT * FROM studentInformation WHERE 1=1"

        If Not String.IsNullOrEmpty(searchText) Then
            sqlQuery &= " AND (std_FirstName LIKE '" & searchText & "%')"
        End If

        If Not String.IsNullOrEmpty(selectedClass) AndAlso selectedClass <> "None" Then
            sqlQuery &= " AND std_class = '" & selectedClass & "'"
        End If

        If Not String.IsNullOrEmpty(selectedDate) Then
            sqlQuery &= " AND std_doj = '" & selectedDate & "'"
        End If

        If Not String.IsNullOrEmpty(orderByClause) Then
            sqlQuery &= " " & orderByClause
        End If
        Using connection As New SqlConnection(conn)
            Dim adapter As New SqlDataAdapter(sqlQuery, connection)
            Dim dataSet As New DataTable()
            adapter.Fill(dataSet)
            dataSet.Columns.Add("Status", GetType(String))
            dataSet.Columns.Add("EffectiveFrom", GetType(String))
            dataSet.Columns.Add("EffectiveTo", GetType(String))
            For Each row As DataRow In dataSet.Rows
                row("Status") = GetStatus(row)
                row("EffectiveFrom") = GetEffectiveFrom(row)
                row("EffectiveTo") = GetEffectiveTo(row)
            Next
            GridView1.DataSource = dataSet
            GridView1.DataBind()
        End Using
    End Sub

    Protected Sub btnView_Click2(sender As Object, e As EventArgs)
        Dim btnView As LinkButton = DirectCast(sender, LinkButton)
        Dim studentAdmin As String = btnView.CommandArgument
        Dim rowIndex As Integer = CType(btnView.NamingContainer, GridViewRow).RowIndex

        Dim studentNameLabel As Label = CType(GridView1.Rows(rowIndex).FindControl("lblFullName"), Label)
        Dim studentName As String = studentNameLabel.Text
        Dim admissionNumber As String = GridView1.Rows(rowIndex).Cells(2).Text ' Assuming std_applicationno is the 3rd column (index 2)
        Dim studentClass As String = GridView1.Rows(rowIndex).Cells(3).Text ' Assuming std_class is the 4th column (index 3)
        Dim status As String = GridView1.Rows(rowIndex).Cells(5).Text
        Session("name") = studentName
        Session("satus") = status
        Session("admission") = admissionNumber
        Session("class") = studentClass
        Response.Redirect("student_edit_information.aspx")
    End Sub

End Class
