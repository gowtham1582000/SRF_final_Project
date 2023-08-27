<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="student_edit_information.aspx.vb" Inherits="SRF_final_Project.student_edit_information" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous" />

    <style>
        body {
            background-color: #f4f4f4;
            font-family: Arial, sans-serif;
        }

        .custom-box {
            background-color: #07beb8;
            color: white;
            padding: 5px;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease-in-out;
        }

            .custom-box:hover {
                transform: translateY(-5px);
            }

        .dropdown {
            height: 32px;
            width: 185px;
            border-radius: 2px;
        }

        .custom-button {
            background-color: white;
            color: #198754;
            border-radius: 15px;
            border: 2px solid #198754;
            text-align: center;
            text-decoration: none;
            padding: 5px 10px;
            font-size: 16px;
            cursor: pointer;
            margin-right: 10px;
            width: 100px;
        }

        .container {
            background-color: white;
            padding: 25px;
            width: 100%;
            max-width: 1500px;
        }

        .container1 {
            width: 100%;
            max-width: 1500px;
            padding-top: 25px;
            padding-left: 25px;
        }

        .center-content {
            display: flex;
            align-items: center;
            height: 100%;
        }

        .custom-row {
            margin-bottom: -10px;
        }

        .custom-col {
            margin-bottom: 10px;
        }

        .uploaded-image-preview {
            width: 150px;
            height: 150px;
            background-color: #f4f4f4;
            background-image: none;
            background-size: cover;
            background-position: center;
            border: 2px solid #07beb8;
        }

        .profile-photo {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            object-fit: cover;
        }

        .form-control {
            background-color: #f8f9fa; /* Light gray background color */
            padding: 10px;
        }

            /* Add animation to form fields on hover */
            .form-control:hover {
                transform: translateY(-5px);
                transition: transform 0.3s ease-in-out;
            }

        /* Style the submit button */
        .btn-submit {
            background-color: #007bff; /* Blue background color */
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out;
        }

            /* Style the submit button on hover */
            .btn-submit:hover {
                background-color: #0056b3; /* Darker blue on hover */
            }
    </style>


</head>
<body>
    <!-- Your HTML content here -->

    <form id="form1" runat="server">
        <div class="container mt-4">
            <div class="row">
                <div class="col-md-3 mb-2">
                    <div class="input-group" style="margin-top: 20px">
                        <span style="font-weight: bold; font-size: 17px">Profile Details </span>&nbsp|&nbsp&nbsp<span style="color: #007bff"> Students List</span>
                    </div>
                </div>


                <div class="col-md-9 mb-2">
                    <div class="form-group">
                        <div class="d-flex justify-content-end" style="margin-top: 20px">
                            <asp:Button ID="btnView" runat="server" Text="Previous" OnClick="btnView_Click1" CssClass="custom-button" />
                            <asp:Button ID="btnUpload" runat="server" Text="Next" OnClick="btnUpload_Click" CssClass="custom-button" />
                        </div>
                    </div>
                </div>
            </div>
            <hr />
            <br />
            <div class="row custom-row">
                <div class="col-md-1 col-2 custom-col">
                    <asp:Image ID="profilePhoto" runat="server" ImageUrl="path_to_image.jpg" AlternateText="Profile Photo" CssClass="profile-photo" />
                </div>
                <div class="col-md-2 col-3 custom-col">
                    <strong>Student Name:</strong><br />
                    <asp:Label ID="studentNameLabel" runat="server" Text="" />
                </div>
                <div class="col-md-2 col-2 custom-col">
                    <strong>Adm. No:</strong><br />
                    <asp:Label ID="admNoLabel" runat="server" Text="" />
                </div>
                <div class="col-md-2 col-2 custom-col">
                    <strong>Status:</strong><br />
                    <asp:Label ID="statusLabel" runat="server" Text="Active" />
                </div>
                <div class="col-md-2 col-3 custom-col">
                    <strong>Current Class:</strong><br />
                    <asp:Label ID="Labelclass" runat="server" Text="Label"></asp:Label>


                </div>
            </div>

        </div>
        <div class="container mt-4">
            <ul class="nav nav-tabs" id="myTabs">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" data-bs-toggle="tab" id="tab0" href="#tab1">ENROLLEMENT</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-bs-toggle="tab" href="#tab3">PHOTO</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-bs-toggle="tab" href="#tab2">CONTACT DETAILS</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" data-bs-toggle="tab" href="#tab4">PARENT DETAILS</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-bs-toggle="tab" href="#tab5">SIBLING</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-bs-toggle="tab" href="#tab6">HEALTH</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-bs-toggle="tab" href="#tab7">LUNCH</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-bs-toggle="tab" href="#tab8">DOCUMENT</a>
                </li>
            </ul>

            <div class="tab-content" id="myTabContent">
                <div id="tab1" class="tab-pane fade show active">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="country" class="form-label"><strong>Student Profile Entry</strong></label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="country" class="form-label">Current Admission Number</label>
                                <asp:TextBox ID="Admno" runat="server" CssClass="form-control" Enabled="false" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="state" class="form-label">Application Number</label>
                                <asp:TextBox ID="Appno" runat="server" CssClass="form-control" Enabled="false" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="city" class="form-label">Registration Number</label>
                                <asp:TextBox ID="Regno" runat="server" CssClass="form-control" Enabled="false" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="country" class="form-label">Joining Year</label>
                                <asp:TextBox ID="doj" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="state" class="form-label">Religion</label>
                                <asp:DropDownList ID="Relgion" runat="server" CssClass="form-select">
                                    <asp:ListItem>Hindu</asp:ListItem>
                                    <asp:ListItem>Muslim</asp:ListItem>
                                    <asp:ListItem>Christian</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="city" class="form-label">Caste Group</label>
                                <asp:DropDownList ID="Caste" runat="server" CssClass="form-select">
                                    <asp:ListItem>BC</asp:ListItem>
                                    <asp:ListItem>SC</asp:ListItem>
                                    <asp:ListItem>OBC</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="country" class="form-label">Sub Caste</label>
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label class="form-label">Minority</label>
                                <div class="row">
                                    <div class="col-2">
                                        <div class="form-check">
                                            <asp:RadioButton ID="minorityRadio1" runat="server" CssClass="form-check-input" GroupName="minorityRadio" Text="Yes" />
                                        </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="form-check">
                                            <asp:RadioButton ID="minorityRadio2" runat="server" CssClass="form-check-input" GroupName="minorityRadio" Text="No" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="country" class="form-label">FeeRate Category</label>
                                <asp:DropDownList ID="fee" runat="server" CssClass="form-select">
                                    <asp:ListItem>General</asp:ListItem>
                                    <asp:ListItem>Term Wise</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="state" class="form-label">Exam Roll No</label>
                                <asp:TextBox ID="roll" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="city" class="form-label">Exam Registration No</label>
                                <asp:TextBox ID="rege" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="country" class="form-label">Aadhaar Number</label>
                                <asp:TextBox ID="aadh" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-1">
                            <div class="mb-3">
                                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Insert" CssClass="custom-button" />
                            </div>
                        </div>
                        
                    </div>
                </div>

                <div id="tab2" class="tab-pane fade">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="PrimaryCtnct" class="form-label">Primary Contact</label>
                                <asp:DropDownList ID="PrimaryCtnct" runat="server" CssClass="form-select">
                                    <asp:ListItem Text="Father" />
                                    <asp:ListItem Text="Mother" />
                                    <asp:ListItem Text="Guardian" />
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="Fname" class="form-label">First Name</label>
                                <asp:TextBox ID="Fname" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="Mname" class="form-label">Middle Name</label>
                                <asp:TextBox ID="Mname" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="Lname" class="form-label">Last Name</label>
                                <asp:TextBox ID="Lname" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="Mno" class="form-label">Mobile Number</label>
                                <asp:TextBox ID="Mno" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="email" class="form-label">E-mail</label>
                                <asp:TextBox ID="email" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="SecondaryCtnct" class="form-label">Secondary Contact</label>
                                <asp:DropDownList ID="SecondaryCtnct" runat="server" CssClass="form-select">
                                    <asp:ListItem Text="Father" />
                                    <asp:ListItem Text="Mother" />
                                    <asp:ListItem Text="Guardian" />
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="Fname1" class="form-label">First Name</label>
                                <asp:TextBox ID="Fname1" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="Mname2" class="form-label">Middle Name</label>
                                <asp:TextBox ID="Mname2" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="Lname3" class="form-label">Last Name</label>
                                <asp:TextBox ID="Lname3" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="Mno4" class="form-label">Mobile Number</label>
                                <asp:TextBox ID="Mno4" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="email5" class="form-label">E-mail</label>
                                <asp:TextBox ID="email5" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-1">
                            <div class="mb-3">
                                <asp:Button ID="Button13" runat="server" OnClick="Button13_Click" Text="Update" CssClass="custom-button" />
                            </div>
                        </div>
                      
                    </div>
                </div>
                <div id="tab3" class="tab-pane fade">
                    <div class="container mt-4">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="formFile" class="form-label">
                                        <h4>Upload Photo Here</h4>
                                    </label>
                                    <asp:FileUpload ID="formFile" runat="server" CssClass="form-control" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="d-flex justify-content-center align-items-center" style="height: 100%;">
                                    <asp:Image ID="Image1" runat="server" ImageUrl="path_to_image.jpg" AlternateText="Profile Photo" CssClass="img-thumbnail rounded-circle" Width="150" Height="150" />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-1">
                                <div class="mb-3">
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" CssClass="custom-button" />
                                </div>
                            </div>
                           
                        </div>
                    </div>
                </div>

                <div id="tab4" class="tab-pane fade">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="parentRelation" class="form-label">Relation to Student</label>
                                <asp:DropDownList ID="parentRelation" runat="server" CssClass="form-select">
                                    <asp:ListItem Text="Select Relation" />
                                    <asp:ListItem Text="Father" />
                                    <asp:ListItem Text="Mother" />
                                    <asp:ListItem Text="Guardian" />
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="parentFirstName" class="form-label">First Name</label>
                                <asp:TextBox ID="parentFirstName" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="parentMiddleName" class="form-label">Middle Name</label>
                                <asp:TextBox ID="parentMiddleName" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="parentLastName" class="form-label">Last Name</label>
                                <asp:TextBox ID="parentLastName" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="parentMobile" class="form-label">Mobile Number</label>
                                <asp:TextBox ID="parentMobile" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="parentEmail" class="form-label">Email</label>
                                <asp:TextBox ID="parentEmail" runat="server" CssClass="form-control" TextMode="Email" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-1">
                            <div class="mb-3">
                                <asp:Button ID="Button15" runat="server" OnClick="Button15_Click" Text="Update" CssClass="custom-button" />
                            </div>
                        </div>
                        
                    </div>
                </div>
                <div id="tab5" class="tab-pane fade">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="siblingName" class="form-label">Sibling's Name</label>
                                <asp:TextBox ID="siblingName" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="siblingAge" class="form-label">Sibling's Age</label>
                                <asp:TextBox ID="siblingAge" runat="server" CssClass="form-control" TextMode="Number" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="siblingGender" class="form-label">Sibling's Gender</label>
                                <asp:DropDownList ID="siblingGender" runat="server" CssClass="form-select">
                                    <asp:ListItem Text="Male" />
                                    <asp:ListItem Text="Female" />
                                    <asp:ListItem Text="Other" />
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="siblingName" class="form-label">School/College Name</label>
                                <asp:TextBox ID="schoo" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="siblingAge" class="form-label">Standard/Course Name</label>
                                <asp:TextBox ID="standard" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-1">
                            <div class="mb-3">
                                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Update" CssClass="custom-button" />
                            </div>
                        </div>
                       
                    </div>
                </div>
                <div id="tab6" class="tab-pane fade">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="bloodGroup" class="form-label">Blood Group</label>
                                <asp:TextBox ID="bloodGroup" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="allergies" class="form-label">Allergies</label>
                                <asp:TextBox ID="allergies" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="medication" class="form-label">Medication</label>
                                <asp:TextBox ID="medication" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="healthCondition" class="form-label">Health Condition</label>
                                <asp:TextBox ID="healthCondition" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="height" class="form-label">Height (cm)</label>
                                <asp:TextBox ID="height" runat="server" CssClass="form-control" TextMode="Number" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mb-3">
                                <label for="weight" class="form-label">Weight (kg)</label>
                                <asp:TextBox ID="weight" runat="server" CssClass="form-control" TextMode="Number" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-1">
                            <div class="mb-3">
                                <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Update" CssClass="custom-button" />
                            </div>
                        </div>
                       
                    </div>
                </div>



                <div id="tab7" class="tab-pane fade">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="mealPreference" class="form-label">Meal Preference</label>
                                <asp:DropDownList ID="mealPreference" runat="server" CssClass="form-select">
                                    <asp:ListItem Text="Select Preference" />
                                    <asp:ListItem Text="Vegetarian" />
                                    <asp:ListItem Text="Non-Vegetarian" />
                                    <asp:ListItem Text="Vegan" />
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="allergies" class="form-label">Food Allergies</label>
                                <asp:TextBox ID="foodAllergies" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="preferredBeverage" class="form-label">Preferred Beverage</label>
                                <asp:DropDownList ID="preferredBeverage" runat="server" CssClass="form-select">
                                    <asp:ListItem Text="Select Beverage" />
                                    <asp:ListItem Text="Water" />
                                    <asp:ListItem Text="Juice" />
                                    <asp:ListItem Text="Tea" />
                                    <asp:ListItem Text="Coffee" />
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="specialInstructions" class="form-label">Special Instructions</label>
                                <asp:TextBox ID="specialInstructions" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-1">
                            <div class="mb-3">
                                <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="Update" CssClass="custom-button" />
                            </div>
                        </div>
                       
                    </div>
                </div>


                <div id="tab8" class="tab-pane fade">
                    <div class="row">
                        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="docType" class="form-label">Document Type</label>
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Text="Birth Certificate"/>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="docNumber" class="form-label">Document Number</label>
                                <asp:TextBox ID="docNumber" runat="server" CssClass="form-control"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="issueDate" class="form-label">Issue Date</label>
                                <asp:TextBox ID="issueDate" runat="server" CssClass="form-control" TextMode="Date"/>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="expiryDate" class="form-label">Expiry Date</label>
                                <asp:TextBox ID="expiryDate" runat="server" CssClass="form-control" TextMode="Date"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="mb-3">
                                <label for="docFile" class="form-label">Upload Document</label>
                                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="docType" class="form-label">Document Type</label>
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Text="Community Certificate" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="docNumber" class="form-label">Document Number</label>
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="issueDate" class="form-label">Issue Date</label>
                                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" TextMode="Date" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="expiryDate" class="form-label">Expiry Date</label>
                                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" TextMode="Date" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="mb-3">
                                <label for="docFile" class="form-label">Upload Document</label>
                                <asp:FileUpload ID="FileUpload2" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-1">
                            <div class="mb-3">
                                <asp:Button ID="Button11" runat="server" OnClick="Button11_Click" Text="Update" CssClass="custom-button" />
                            </div>
                        </div>
                      
                    </div>
                </div>

            </div>
        </div>
        <%--                 <div id="tab8" class="tab-pane fade">
                    <div class="ad">
                        <div class="container mt-3">
                            <div class="row jumbotron box8">
                                <div class="col-sm-12">
                                    <div class="text-end mb-3">
                                        <asp:Button ID="adddoc" runat="server" Text="ADD NEW DOCUMENT" onclick="adddoc_Click" CssClass="btn btn-warning" />
                                    </div>
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                                        <Columns>
                                            <asp:BoundField DataField="std_birthdocType" HeaderText="std_birthdocType" SortExpression="std_birthdocType"></asp:BoundField>
                                            <asp:BoundField DataField="std_birthdocNumber" HeaderText="std_birthdocNumber" SortExpression="std_birthdocNumber"></asp:BoundField>
                                            <asp:BoundField DataField="std_birthissueDate" HeaderText="std_birthissueDate" SortExpression="std_birthissueDate"></asp:BoundField>
                                            <asp:BoundField DataField="std_birthexpiryDate" HeaderText="std_birthexpiryDate" SortExpression="std_birthexpiryDate"></asp:BoundField>
                                        </Columns>
                                    </asp:GridView>

                                    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:admin %>' SelectCommand="SELECT [std_birthdocType], [std_birth], [std_birthdocNumber], [std_birthissueDate], [std_birthexpiryDate] FROM [studentInformation]"></asp:SqlDataSource>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="tab" id="addTab" style="display: none;">
                    <div class="container mt-3">
                        <div class="row custom-jumbotron custom-box">
                            <div class="col-sm-12">
                                <h2 class="text-center mb-4">ADD NEW DOCUMENT</h2>
                                <div class="form-group">
                                    <label for="newFileType">File Type</label>
                                    <input class="form-control" type="text" id="newFileType" runat="server" />
                                </div>
                                <div class="form-group">
                                    <label for="newFileDescription">File Description</label>
                                    <input class="form-control" type="text" id="newFileDescription" runat="server" />
                                </div>
                                <div class="form-group">
                                    <label for="newDocumentType">Document Type</label>

                                    <asp:DropDownList ID="doctype" runat="server">
                                        <asp:ListItem>jpg</asp:ListItem>
                                        <asp:ListItem>png</asp:ListItem>
                                        <asp:ListItem>jpeg</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <label for="newComments">Comments</label>
                                    <textarea class="form-control" runat="server" id="newComments" rows="3"></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="newFileUpload">Upload File</label>
                                    <asp:FileUpload ID="uploaddoc" runat="server" />
                                </div>
                                <div class="text-center">
                                    <asp:Button ID="ins" runat="server" CssClass="btn btn-primary" OnClick="ins_Click" Text="Insert" />
                                    <asp:Button ID="cancelBtn" runat="server" CssClass="btn btn-dark" OnClick="cancelBtn_Click" Text="Cancel" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>--%>





        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>

        <script>
            const tabContent = document.querySelector('.tab-content');

            document.querySelectorAll('[data-bs-toggle="tab"]').forEach(tabLink => {
                tabLink.addEventListener('click', () => {
                    const tabId = tabLink.getAttribute('href'); // Get the href attribute value (tab ID)
                    switchTabContent(tabId);
                });
            });

            function switchTabContent(tabId) {
                tabContent.querySelectorAll('.tab-pane').forEach(tabPane => {
                    tabPane.classList.remove('show', 'active');
                });

                const activeTabPane = document.querySelector(tabId);
                activeTabPane.classList.add('show', 'active');
            }
        </script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script>
            $(document).ready(function () {
                $("#adddoc").click(function () {
                    // Hide the content associated with href "#tab1"
                    $("#tab1").hide();
                    $("#addTab").show();
                    $("#tab8").hide();
                    return false
                });
                $('#cancelBtn').click(function () {
                    $('#addTab').hide();
                    $('#tab1').show();
                    $('#tab8').show();
                    return false
                });
            });


        </script>
        <%--  $('#adddoc').click(function () {
            $('#documentsTab').hide();
            $('#addTab').show();
            $('#studentTab').hide(); 
            return false;--%>
    </form>
</body>
</html>
