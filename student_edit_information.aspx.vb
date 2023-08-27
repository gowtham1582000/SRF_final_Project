Imports System.Data.Common
Imports System.Data.SqlClient
Imports Newtonsoft.Json.Linq
Imports System.Drawing
Imports System.IO
Imports System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel

Public Class student_edit_information
    Inherits System.Web.UI.Page
    Dim conn As String = ConfigurationManager.ConnectionStrings("admin").ConnectionString

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            displayingdetails()
            UpdateButtonStates()
        End If
    End Sub

    Private Sub UpdateButtonStates()
        Dim ds As DataSet = getTable()
        Dim currentAdmNo As String = Request.QueryString("AdmNo")
        Dim currentIndex As Integer = -1
        For i = 0 To ds.Tables(0).Rows.Count - 1
            If ds.Tables(0).Rows(i).Item("std_Admno") = currentAdmNo Then
                currentIndex = i
                Exit For
            End If
        Next
        btnView.Enabled = currentIndex > 0
        btnUpload.Enabled = currentIndex < ds.Tables(0).Rows.Count - 1
    End Sub

    Protected Sub displayingdetails()
        Dim fn As String = Request.QueryString("fname")
        Dim ln As String = Request.QueryString("lname")
        Dim adm As String = Request.QueryString("AdmNo")
        Dim cls As String = Request.QueryString("class")
        studentNameLabel.Text = fn + ln
        admNoLabel.Text = adm
        Labelclass.Text = cls
        Dim status As String = Session("status")
        If status = "Y - Current" Then
            statusLabel.Text = "Active"
        Else
            statusLabel.Text = "Passed Out"
        End If
        Dim query As String = "SELECT * FROM studentInformation WHERE std_Admno = @std_id"
        Using connection As New SqlConnection(conn)
            Dim adapter As New SqlDataAdapter(query, connection)
            adapter.SelectCommand.Parameters.AddWithValue("@std_id", adm)
            Dim table As New DataTable()
            adapter.Fill(table)
            If table.Rows.Count > 0 Then
                Dim row As DataRow = table.Rows(0)
                Dim std_id As Integer = Convert.ToInt32(row("std_id"))
                Dim std_FirstName As String = row("std_FirstName").ToString()
                Dim std_LastName As String = row("std_LastName").ToString()
                Dim std_phno As Long = Convert.ToInt64(row("std_phno"))
                Dim std_class As String = row("std_class").ToString()
                Dim std_gender As String = row("std_gender").ToString()
                Dim std_blood As String = row("std_blood").ToString()
                Dim std_dob As DateTime = Convert.ToDateTime(row("std_dob"))
                Dim std_address As String = row("std_address").ToString()
                Dim std_religion As String = row("std_religion").ToString()
                Dim std_fatherph As Long = Convert.ToInt64(row("std_fatherph"))
                Dim std_motherph As Long = Convert.ToInt64(row("std_motherph"))
                'Dim std_birth As Byte() = DirectCast(row("std_birth"), Byte())
                'Dim std_comunity As Byte() = DirectCast(row("std_comunity"), Byte())
                Dim stud_photo As Byte()
                Try
                    stud_photo = DirectCast(row("stud_photo"), Byte())
                    Dim base64Image As String = Convert.ToBase64String(stud_photo)
                    Dim imageUrl As String = $"data:image/jpeg;base64,{base64Image}"

                    profilePhoto.ImageUrl = imageUrl
                    If stud_photo IsNot Nothing Then
                        Dim contentType As String = "image/jpeg/jpg/png" ' Replace with the actual content type of the image
                        Dim base64Image1 As String = Convert.ToBase64String(stud_photo)

                        Dim Image As String = $"data:{contentType};base64,{base64Image1}"
                        Image1.ImageUrl = Image
                    End If
                Catch ex As Exception
                    MsgBox("The Student Doesn't have the Photo ")
                End Try

                Dim std_email As String = row("std_email").ToString()
                Dim std_city As String = row("std_city").ToString()
                Dim std_zipcode As Long = Convert.ToInt64(row("std_zipcode"))
                Dim std_addhar As String = row("std_addhar").ToString()
                Dim std_applicationno As String = row("std_applicationno").ToString()
                Dim std_registerno As String = row("std_registerno").ToString()
                Dim std_caste As String = row("std_caste").ToString()
                Dim std_subcaste As String = row("std_subcaste").ToString()
                Dim std_minority As String = row("std_minority").ToString()
                Dim std_doj As DateTime = Convert.ToDateTime(row("std_doj"))
                Dim std_fee_category As String = row("std_fee_category").ToString()
                Dim std_Admno As String = row("std_Admno").ToString()
                Dim std_exam_roll_no As String = row("std_exam_roll_no").ToString()
                Dim std_exam_reg_no As String = row("std_exam_reg_no").ToString()
                Dim std_parentRelation As String = row("std_parentRelation").ToString()
                Dim std_parentFirstName As String = row("std_parentFirstName").ToString()
                Dim std_parentMiddleName As String = row("std_parentMiddleName").ToString()
                Dim std_parentLastName As String = row("std_parentLastName").ToString()
                Dim std_parentMobileNumber As String = row("std_parentMobileNumber").ToString()
                Dim std_parentEmail As String = row("std_parentEmail").ToString()
                Dim std_primaryContact As String = row("std_primaryContact").ToString()
                Dim std_primaryFirstName As String = row("std_primaryFirstName").ToString()
                Dim std_primaryMiddleName As String = row("std_primaryMiddleName").ToString()
                Dim std_primaryLastName As String = row("std_primaryLastName").ToString()
                Dim std_primaryMobileNumber As String = row("std_primaryMobileNumber").ToString()
                Dim std_primaryEmail As String = row("std_primaryEmail").ToString()
                Dim std_secondaryContact As String = row("std_secondaryContact").ToString()
                Dim std_secondaryFirstName As String = row("std_secondaryFirstName").ToString()
                Dim std_secondaryMiddleName As String = row("std_secondaryMiddleName").ToString()
                Dim std_secondaryLastName As String = row("std_secondaryLastName").ToString()
                Dim std_secondaryMobileNumber As String = row("std_secondaryMobileNumber").ToString()
                Dim std_secondaryEmail As String = row("std_secondaryEmail").ToString()
                Dim std_docType As String = row("std_birthdocType").ToString()
                Dim std_docNumber As String = row("std_birthdocNumber").ToString()
                Dim std_issueDate As DateTime = Convert.ToDateTime(row("std_birthissueDate"))
                Dim std_expiryDate As DateTime = Convert.ToDateTime(row("std_birthexpiryDate"))
                'Dim std_docFile As Byte() = DirectCast(row("std_docFile"), Byte())
                Dim std_allergies As String = row("std_allergies").ToString()
                Dim std_medication As String = row("std_medication").ToString()
                Dim std_healthCondition As String = row("std_healthCondition").ToString()
                Dim std_height As Integer = Convert.ToInt32(row("std_height"))
                Dim std_weight As Integer = Convert.ToInt32(row("std_weight"))
                Dim std_mealPreference As String = row("std_mealPreference").ToString()
                Dim std_foodAllergies As String = row("std_foodAllergies").ToString()
                Dim std_preferredBeverage As String = row("std_preferredBeverage").ToString()
                Dim std_specialInstructions As String = row("std_specialInstructions").ToString()
                Dim sibling_Name As String = row("sibling_Name").ToString()
                Dim sibling_Age As Integer = Convert.ToInt32(row("sibling_Age"))
                Dim sibling_Gender As String = row("sibling_Gender").ToString()
                Dim school_college_Name As String = row("school_college_Name").ToString()
                Dim standard_course_Name As String = row("standard_course_Name").ToString()

                Admno.Text = std_Admno
                Appno.Text = std_applicationno
                Regno.Text = std_registerno
                doj.Text = std_doj.ToString("yyyy-MM-dd")
                Relgion.SelectedValue = std_religion
                Caste.SelectedValue = std_caste
                TextBox1.Text = std_subcaste
                If std_minority = "Yes" Then
                    minorityRadio1.Checked = True
                ElseIf std_minority = "No" Then
                    minorityRadio2.Checked = True
                End If
                fee.SelectedValue = std_fee_category
                roll.Text = std_exam_roll_no
                rege.Text = std_exam_reg_no
                aadh.Text = std_addhar
                siblingName.Text = sibling_Name
                siblingAge.Text = sibling_Age.ToString()
                siblingGender.SelectedValue = sibling_Gender
                schoo.Text = school_college_Name
                standard.Text = standard_course_Name
                bloodGroup.Text = std_blood
                allergies.Text = std_allergies
                medication.Text = std_medication
                healthCondition.Text = std_healthCondition
                height.Text = std_height.ToString()
                weight.Text = std_weight.ToString()
                mealPreference.SelectedValue = std_mealPreference
                foodAllergies.Text = std_foodAllergies
                preferredBeverage.SelectedValue = std_preferredBeverage
                specialInstructions.Text = std_specialInstructions
                'TextBox2.Text = std_docType
                'docNumber.Text = std_docNumber
                'issueDate.Text = std_issueDate.ToString("yyyy-MM-dd")
                'expiryDate.Text = std_expiryDate.ToString("yyyy-MM-dd")
                PrimaryCtnct.SelectedValue = std_primaryContact
                Fname.Text = std_primaryFirstName
                Mname.Text = std_primaryMiddleName
                Lname.Text = std_primaryLastName
                Mno.Text = std_primaryMobileNumber
                email.Text = std_primaryEmail
                SecondaryCtnct.SelectedValue = std_secondaryContact
                Fname1.Text = std_secondaryFirstName
                Mname2.Text = std_secondaryMiddleName
                Lname3.Text = std_secondaryLastName
                Mno4.Text = std_secondaryMobileNumber
                email5.Text = std_secondaryEmail
                parentRelation.SelectedValue = std_parentRelation
                parentFirstName.Text = std_parentFirstName
                parentMiddleName.Text = std_parentMiddleName
                parentLastName.Text = std_parentLastName
                parentMobile.Text = std_parentMobileNumber
                parentEmail.Text = std_parentEmail
                'Dim base64Image1 As String = Convert.ToBase64String(stud_photo)
                'If Not String.IsNullOrEmpty(base64Image1) Then
                '    uploadedImagePreview.Attributes("src") = "data:image/png;base64," & base64Image1
                'Else
                '    uploadedImagePreview.Attributes("src") = "path/to/placeholder-image.png"
                'End If
            End If
        End Using
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs)
        Dim ds As New DataSet()
        Dim tableName As String = "StudentInformationTable"
        Using connection As New SqlConnection(conn)
            Dim adapter As New SqlDataAdapter()
            adapter.SelectCommand = New SqlCommand("UpdateStudentInformation", connection)
            adapter.SelectCommand.CommandType = CommandType.StoredProcedure
            adapter.SelectCommand.Parameters.AddWithValue("@Admno", Admno.Text)
            adapter.SelectCommand.Parameters.AddWithValue("@Appno", Appno.Text)
            adapter.SelectCommand.Parameters.AddWithValue("@Regno", Regno.Text)
            adapter.SelectCommand.Parameters.AddWithValue("@doj", DateTime.Parse(doj.Text))
            adapter.SelectCommand.Parameters.AddWithValue("@Religion", Relgion.SelectedValue)
            adapter.SelectCommand.Parameters.AddWithValue("@Caste", Caste.SelectedValue)
            adapter.SelectCommand.Parameters.AddWithValue("@SubCaste", TextBox1.Text)
            adapter.SelectCommand.Parameters.AddWithValue("@Minority", IIf(minorityRadio1.Checked, "Yes", "No"))
            adapter.SelectCommand.Parameters.AddWithValue("@FeeCategory", fee.SelectedValue)
            adapter.SelectCommand.Parameters.AddWithValue("@ExamRollNo", roll.Text)
            adapter.SelectCommand.Parameters.AddWithValue("@ExamRegNo", rege.Text)
            adapter.SelectCommand.Parameters.AddWithValue("@Aadhaar", aadh.Text)
            adapter.Fill(ds, tableName)
        End Using
        If ds.Tables.Contains(tableName) AndAlso ds.Tables(tableName).Rows.Count > 0 Then
            Dim row As DataRow = ds.Tables(tableName).Rows(0)
        End If

    End Sub

    Protected Sub Button13_Click(sender As Object, e As EventArgs)
        Dim ds As New DataSet()
        Dim tableName As String = "StudentInformationTable"
        Using connection As New SqlConnection(conn)
            Dim adapter As New SqlDataAdapter()
            adapter.SelectCommand = New SqlCommand("UpdateContactInformation", connection)
            adapter.SelectCommand.CommandType = CommandType.StoredProcedure
            adapter.SelectCommand.Parameters.AddWithValue("@Admno", Admno.Text)
            adapter.SelectCommand.Parameters.AddWithValue("@PrimaryContact", PrimaryCtnct.SelectedValue)
            adapter.SelectCommand.Parameters.AddWithValue("@PrimaryFirstName", Fname.Text)
            adapter.SelectCommand.Parameters.AddWithValue("@PrimaryMiddleName", Mname.Text)
            adapter.SelectCommand.Parameters.AddWithValue("@PrimaryLastName", Lname.Text)
            adapter.SelectCommand.Parameters.AddWithValue("@PrimaryMobileNumber", Mno.Text)
            adapter.SelectCommand.Parameters.AddWithValue("@PrimaryEmail", email.Text)
            adapter.SelectCommand.Parameters.AddWithValue("@SecondaryContact", SecondaryCtnct.SelectedValue)
            adapter.SelectCommand.Parameters.AddWithValue("@SecondaryFirstName", Fname1.Text)
            adapter.SelectCommand.Parameters.AddWithValue("@SecondaryMiddleName", Mname2.Text)
            adapter.SelectCommand.Parameters.AddWithValue("@SecondaryLastName", Lname3.Text)
            adapter.SelectCommand.Parameters.AddWithValue("@SecondaryMobileNumber", Mno4.Text)
            adapter.SelectCommand.Parameters.AddWithValue("@SecondaryEmail", email5.Text)
            adapter.Fill(ds, tableName)
        End Using
    End Sub

    Protected Sub Button15_Click(sender As Object, e As EventArgs)
        Dim ds As New DataSet()
        Dim tableName As String = "StudentInformationTable"
        Using connection As New SqlConnection(conn)
            Dim adapter As New SqlDataAdapter()
            adapter.SelectCommand = New SqlCommand("UpdateParentInformation", connection)
            adapter.SelectCommand.CommandType = CommandType.StoredProcedure
            adapter.SelectCommand.Parameters.AddWithValue("@Admno", Admno.Text)
            adapter.SelectCommand.Parameters.AddWithValue("@ParentRelation", parentRelation.SelectedValue)
            adapter.SelectCommand.Parameters.AddWithValue("@ParentFirstName", parentFirstName.Text)
            adapter.SelectCommand.Parameters.AddWithValue("@ParentMiddleName", parentMiddleName.Text)
            adapter.SelectCommand.Parameters.AddWithValue("@ParentLastName", parentLastName.Text)
            adapter.SelectCommand.Parameters.AddWithValue("@ParentMobileNumber", parentMobile.Text)
            adapter.SelectCommand.Parameters.AddWithValue("@ParentEmail", parentEmail.Text)
            adapter.Fill(ds, tableName)
        End Using

    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs)
        Dim ds As New DataSet()
        Dim tableName As String = "StudentInformationTable"
        Using connection As New SqlConnection(conn)
            Dim adapter As New SqlDataAdapter()
            adapter.SelectCommand = New SqlCommand("UpdateSiblingInformation", connection)
            adapter.SelectCommand.CommandType = CommandType.StoredProcedure
            adapter.SelectCommand.Parameters.AddWithValue("@Admno", Admno.Text)
            adapter.SelectCommand.Parameters.AddWithValue("@SiblingName", siblingName.Text)
            adapter.SelectCommand.Parameters.AddWithValue("@SiblingAge", Integer.Parse(siblingAge.Text))
            adapter.SelectCommand.Parameters.AddWithValue("@SiblingGender", siblingGender.SelectedValue)
            adapter.SelectCommand.Parameters.AddWithValue("@SchoolCollegeName", schoo.Text)
            adapter.SelectCommand.Parameters.AddWithValue("@StandardCourseName", standard.Text)
            adapter.Fill(ds, tableName)
        End Using
    End Sub

    Protected Sub Button7_Click(sender As Object, e As EventArgs)
        Dim ds As New DataSet()
        Dim tableName As String = "StudentInformationTable"
        Using connection As New SqlConnection(conn)
            Dim adapter As New SqlDataAdapter()
            adapter.SelectCommand = New SqlCommand("UpdateHealthInformation", connection)
            adapter.SelectCommand.CommandType = CommandType.StoredProcedure
            adapter.SelectCommand.Parameters.AddWithValue("@Admno", Admno.Text)
            adapter.SelectCommand.Parameters.AddWithValue("@BloodGroup", bloodGroup.Text)
            adapter.SelectCommand.Parameters.AddWithValue("@Allergies", allergies.Text)
            adapter.SelectCommand.Parameters.AddWithValue("@Medication", medication.Text)
            adapter.SelectCommand.Parameters.AddWithValue("@HealthCondition", healthCondition.Text)
            adapter.SelectCommand.Parameters.AddWithValue("@Height", Integer.Parse(height.Text))
            adapter.SelectCommand.Parameters.AddWithValue("@Weight", Integer.Parse(weight.Text))
            adapter.Fill(ds, tableName)
        End Using
    End Sub

    Protected Sub Button9_Click(sender As Object, e As EventArgs)
        Dim ds As New DataSet()
        Dim tableName As String = "StudentInformationTable"

        Using connection As New SqlConnection(conn)
            Dim adapter As New SqlDataAdapter()
            adapter.SelectCommand = New SqlCommand("UpdateDietaryInformation", connection)
            adapter.SelectCommand.CommandType = CommandType.StoredProcedure
            adapter.SelectCommand.Parameters.AddWithValue("@Admno", Admno.Text)
            adapter.SelectCommand.Parameters.AddWithValue("@MealPreference", mealPreference.SelectedValue)
            adapter.SelectCommand.Parameters.AddWithValue("@FoodAllergies", foodAllergies.Text)
            adapter.SelectCommand.Parameters.AddWithValue("@PreferredBeverage", preferredBeverage.SelectedValue)
            adapter.SelectCommand.Parameters.AddWithValue("@SpecialInstructions", specialInstructions.Text)
            adapter.Fill(ds, tableName)
        End Using
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        If formFile.HasFile Then
            Dim fileExtension As String = Path.GetExtension(formFile.FileName)
            Dim allowedExtensions As String() = {".jpg", ".jpeg", ".png"}
            If allowedExtensions.Contains(fileExtension.ToLower()) Then
                Dim imageSize As Integer = formFile.PostedFile.ContentLength
                Dim imageData As Byte() = New Byte(imageSize - 1) {}
                formFile.PostedFile.InputStream.Read(imageData, 0, imageSize)
                Dim query As String = "SELECT * FROM studentInformation WHERE std_Admno = @std_id"
                Dim admin As Integer = Request.QueryString("AdmNo")
                Dim ds As New DataSet()
                Using connection As New SqlConnection(conn)
                    Dim adapter As New SqlDataAdapter(query, connection)
                    adapter.SelectCommand.Parameters.AddWithValue("@std_id", admin)
                    adapter.Fill(ds)
                    For i = 0 To ds.Tables(0).Rows.Count - 1
                        ds.Tables(0).Rows(i).Item("stud_photo") = imageData
                    Next
                    Dim commandBuilder As New SqlCommandBuilder(adapter)
                    Dim changes As Integer = adapter.Update(ds, ds.Tables(0).ToString())
                    If changes > 0 Then
                        ClientScript.RegisterStartupScript(Me.GetType(), "UpdateSuccess", "alert('Successfully Updated the Database');", True)
                    Else
                        ClientScript.RegisterStartupScript(Me.GetType(), "UpdateSuccess", "alert('Facing Some Error On Updating The DataBase');", True)
                    End If
                    displayingdetails()
                End Using
            Else
                ClientScript.RegisterStartupScript(Me.GetType(), "UpdateSuccess", "alert('Invalid file format. Please upload a valid image file.');", True)
            End If
        Else
            ClientScript.RegisterStartupScript(Me.GetType(), "UpdateSuccess", "alert('Please choose a file to upload.');", True)
        End If
    End Sub

    Protected Sub Button11_Click(sender As Object, e As EventArgs)
        If FileUpload1.HasFile And FileUpload2.HasFile Then
            Dim fileExtension As String = Path.GetExtension(FileUpload1.FileName)
            Dim fileExtension1 As String = Path.GetExtension(FileUpload2.FileName)
            Dim allowedExtensions As String() = {".jpg", ".jpeg", ".png", ".pdf", ".word"}
            Dim docType1 As String = TextBox2.Text
            Dim docNumber1 As String = docNumber.Text
            Dim issueDate1 As Date = Date.Parse(issueDate.Text)
            Dim expiryDate1 As Date = Date.Parse(expiryDate.Text)
            Dim docType2 As String = TextBox3.Text
            Dim docNumber2 As String = TextBox4.Text
            Dim issueDate2 As Date = Date.Parse(TextBox5.Text)
            Dim expiryDate2 As Date = Date.Parse(TextBox6.Text)
            If allowedExtensions.Contains(fileExtension.ToLower()) And allowedExtensions.Contains(fileExtension1.ToLower()) Then
                Dim imageSize As Integer = FileUpload1.PostedFile.ContentLength
                Dim imageData As Byte() = New Byte(imageSize - 1) {}
                FileUpload1.PostedFile.InputStream.Read(imageData, 0, imageSize)
                Dim imageSize1 As Integer = FileUpload2.PostedFile.ContentLength
                Dim imageData1 As Byte() = New Byte(imageSize - 1) {}
                FileUpload2.PostedFile.InputStream.Read(imageData1, 0, imageSize1)
                Dim query As String = "SELECT * FROM studentInformation WHERE std_Admno = @std_id"
                Dim admin As Integer = Request.QueryString("AdmNo")
                Dim ds As New DataSet()
                Using connection As New SqlConnection(conn)
                    Dim adapter As New SqlDataAdapter(query, connection)
                    adapter.SelectCommand.Parameters.AddWithValue("@std_id", admin)
                    adapter.Fill(ds)
                    For i = 0 To ds.Tables(0).Rows.Count - 1
                        ds.Tables(0).Rows(i).Item("std_birth") = imageData
                        ds.Tables(0).Rows(i).Item("std_birthdocType") = docType1
                        ds.Tables(0).Rows(i).Item("std_birthissueDate") = issueDate1
                        ds.Tables(0).Rows(i).Item("std_birthdocNumber") = docNumber1
                        ds.Tables(0).Rows(i).Item("std_birthexpiryDate") = expiryDate1
                        ds.Tables(0).Rows(i).Item("std_comunity") = imageData1
                        ds.Tables(0).Rows(i).Item("std_comudocType") = docType2
                        ds.Tables(0).Rows(i).Item("std_commuissueDate") = issueDate2
                        ds.Tables(0).Rows(i).Item("std_commuexpiryDate") = expiryDate2
                    Next
                    Dim commandBuilder As New SqlCommandBuilder(adapter)
                    Dim changes As Integer = adapter.Update(ds, ds.Tables(0).ToString())
                    If changes > 0 Then
                        ClientScript.RegisterStartupScript(Me.GetType(), "UpdateSuccess", "alert('Successfully Updated the Database');", True)
                    Else
                        ClientScript.RegisterStartupScript(Me.GetType(), "UpdateSuccess", "alert('Facing Some Error On Updating The DataBase');", True)
                    End If
                    displayingdetails()
                End Using
            Else
                ClientScript.RegisterStartupScript(Me.GetType(), "UpdateSuccess", "alert('Invalid file format. Please upload a valid image file.');", True)
            End If
        Else
            ClientScript.RegisterStartupScript(Me.GetType(), "UpdateSuccess", "alert('Please choose a file to upload.');", True)
        End If
    End Sub


    Protected Sub btnView_Click1(sender As Object, e As EventArgs)
        Dim fname As String = Request.QueryString("fname")
        Dim lname As String = Request.QueryString("lname")
        Dim adm As String = Request.QueryString("AdmNo")

        Dim classnamesvg As String = Request.QueryString("class")

        Dim ds As DataSet = getTable()
        For i = ds.Tables(0).Rows.Count - 1 To 0 Step -1
            If ds.Tables(0).Rows(i).Item("std_Admno") = Request.QueryString("AdmNo") Then
                If i = 0 Then
                    btnView.Enabled = False
                Else
                    Dim previd As String = ds.Tables(0).Rows(i - 1).Item("std_Admno")
                    Dim cls As String = ds.Tables(0).Rows(i - 1).Item("std_class")
                    Dim fme As String = ds.Tables(0).Rows(i - 1).Item("std_FirstName")
                    Dim lne As String = ds.Tables(0).Rows(i - 1).Item("std_LastName")
                    Response.Redirect("student_edit_information.aspx?AdmNo=" + previd + "&fname=" + fme + "&lname=" + lne + "&class=" + cls)
                End If
            End If
        Next
        UpdateButtonStates()
    End Sub

    Protected Sub btnUpload_Click(sender As Object, e As EventArgs)
        Dim fname As String = Request.QueryString("fname")
        Dim lname As String = Request.QueryString("lname")
        Dim adm As String = Request.QueryString("AdmNo")
        Dim classnamesvg As String = Request.QueryString("class")
        Dim ds As DataSet = getTable()
        For i = 0 To ds.Tables(0).Rows.Count - 1
            If ds.Tables(0).Rows(i).Item("std_Admno") = Request.QueryString("AdmNo") Then
                If i + 1 = ds.Tables(0).Rows.Count Then
                    btnUpload.Enabled = False
                Else
                    Dim nextid As String = ds.Tables(0).Rows(i + 1).Item("std_Admno")
                    Dim cls As String = ds.Tables(0).Rows(i + 1).Item("std_class")
                    Dim fme As String = ds.Tables(0).Rows(i + 1).Item("std_FirstName")
                    Dim lne As String = ds.Tables(0).Rows(i + 1).Item("std_LastName")
                    Response.Redirect("student_edit_information.aspx?AdmNo=" + nextid + "&fname=" + fme + "&lname=" + lne + "&class=" + cls)
                End If
            End If
        Next
        UpdateButtonStates()
    End Sub

    Function getTable() As DataSet
        Dim conn1 As New SqlConnection(conn)
        Dim cmd As New SqlCommand("select * from studentInformation", conn1)
        Dim adapter As New SqlDataAdapter(cmd)
        Dim studentlist As New DataSet()
        adapter.Fill(studentlist)
        Return studentlist
    End Function

End Class