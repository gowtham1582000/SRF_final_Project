Imports System.Data.SqlClient

Public Class admin_login_page
    Inherits System.Web.UI.Page
    Dim conn As String = ConfigurationManager.ConnectionStrings("admin").ConnectionString

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        Dim username As String = txtLoginEmail.Text
        Dim password As String = txtLoginPassword.Text

        If IsValidUser(username, password) Then
            FormsAuthentication.RedirectFromLoginPage(username, False)
        Else
            MsgBox("Invalid UserName And Password")
        End If
    End Sub

    Function IsValidUser(username1 As String, password1 As String) As Boolean
        Dim isValid As Boolean = False
        Using connection As New SqlConnection(conn)
            Dim query As String = "SELECT * FROM admin_user_pass WHERE userid = @Username AND admin_password = @Password"
            Using command As New SqlCommand(query, connection)
                command.Parameters.AddWithValue("@Username", username1)
                command.Parameters.AddWithValue("@Password", password1)
                connection.Open()
                Dim reader As SqlDataReader = command.ExecuteReader()
                If reader.Read() Then
                    isValid = True
                End If
                reader.Close()
            End Using
        End Using
        Return isValid
    End Function
End Class