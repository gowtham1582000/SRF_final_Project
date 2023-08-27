Imports System.ComponentModel.DataAnnotations
Imports System.Data.SqlClient

Public Class student_profile
    Inherits System.Web.UI.Page
    Dim conn As String = "Data Source=LAPTOP-O7SMLF9R;Initial Catalog=schoolmanagement;Integrated Security=True"

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim loggedInEmail As String = Session("email")
            If Not String.IsNullOrEmpty(loggedInEmail) Then
                Dim conn1 As SqlConnection = New SqlConnection(conn)
                Dim ds As New DataSet()
                Dim adapter As New SqlDataAdapter("SELECT * FROM Students WHERE email=@email", conn1)
                adapter.SelectCommand.Parameters.AddWithValue("@email", loggedInEmail)
                adapter.Fill(ds, "Students")
                Dim builder As New SqlCommandBuilder(adapter)

                If ds.Tables("Students").Rows.Count > 0 Then

                    Dim row As DataRow = ds.Tables("Students").Rows(0)
                    Dim std_id As String = row(0).ToString()
                    Dim name As String = row(1).ToString() + " " + row(2).ToString()
                    Dim class1 As String = row(3).ToString()
                    Dim dob As Date = Convert.ToDateTime(row(4))
                    Dim gender As String = row(5).ToString()
                    Dim ph As String = row(6).ToString()
                    Dim address As String = row(9).ToString()
                    studentName.Text = name
                    studentID.Text = std_id
                    gender1.Text = gender
                    dofb.Text = dob.ToString("dd/MM/yyyy")
                    phno.Text = ph
                    Email1.Text = loggedInEmail
                    Address1.Text = address
                    Session("Name") = name
                    Session("Id") = std_id
                    Session("Class") = class1
                End If
            End If
        End If
    End Sub


End Class