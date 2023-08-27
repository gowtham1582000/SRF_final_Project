Imports System.ComponentModel.DataAnnotations
Imports System.Data.SqlClient

Public Class teacher_profile
    Inherits System.Web.UI.Page
    Dim conn As String = "Data Source=LAPTOP-O7SMLF9R;Initial Catalog=schoolmanagement;Integrated Security=True"

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim loggedInEmail As String = Session("email")
            If Not String.IsNullOrEmpty(loggedInEmail) Then
                Dim conn1 As SqlConnection = New SqlConnection(conn)
                Dim ds As New DataSet()
                Dim adapter As New SqlDataAdapter("SELECT * FROM Teachers WHERE email=@email", conn1)
                adapter.SelectCommand.Parameters.AddWithValue("@email", loggedInEmail)
                adapter.Fill(ds, "Teacher")
                Dim builder As New SqlCommandBuilder(adapter)

                If ds.Tables("Teacher").Rows.Count > 0 Then

                    Dim row As DataRow = ds.Tables("Teacher").Rows(0)
                    Dim teac_id As String = row(0).ToString()
                    Dim name As String = row(1).ToString() + " " + row(2).ToString()
                    Dim dob As Date = Convert.ToDateTime(row(3))
                    Dim gender As String = row(4).ToString()
                    Dim ph As String = row(7).ToString()
                    Dim address As String = row(8).ToString()
                    studentName.Text = name
                    studentID.Text = teac_id
                    gender1.Text = gender
                    dofb.Text = dob.ToString("dd/MM/yyyy")
                    phno.Text = ph
                    Email1.Text = loggedInEmail
                    Address1.Text = address

                End If
            End If
        End If
    End Sub


End Class