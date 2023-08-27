<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="student_profile.aspx.vb" Inherits="SRF_final_Project.student_profile" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Student Profile Page Design Example</title>
    <meta name="author" content="Codeconvey" />
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet" />
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css' />
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css' />
    <style>
         h3{
                   font-size:18px;

           }
           a:hover {
    color: White;
    transition: color 0.3s ease; 
}
        .card-header {
            background: linear-gradient(to right, #6a4aed, #4ca2cd);
            color: white;
        }

            .card-header h3 {
                animation: fadeInUp 0.5s ease;
            }

        .card-body {
            background-color: rgba(255, 255, 255, 0.9);
        }

        .table th,
        .table td {
            background-color: rgba(255, 255, 255, 0.8);
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="/css/style.css">
    <script
        src="https://code.jquery.com/jquery-3.3.1.js"
        integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
        crossorigin="anonymous">
    </script>
    <script> 
        $(function () {
            $("#header").load("dashboard_header_teacher.aspx");
            $("#options").load("dashboard_option.aspx");
        });

    </script>

</head>

<body>

    <div id="header"></div>
    <div class="main-container">
        <div class="navcontainer">
            <div id="options"></div>
        </div>
        <div class="main">
            <div class="report-container">
                <div class="report-header">
                    <h1 class="recent-Articles">Your Profile</h1>
                </div>

                <div class="report-body">
                    <div class="assignment-list">
                        <div class="report-body">
                            <div class="assignment-list">
                                <div class="card-header bg-transparent text-center">
                                    <img src="https://media.geeksforgeeks.org/wp-content/uploads/20221210180014/profile-removebg-preview.png" width="60px" class="profile_img" alt="Profile Image">
                                </div>
                                <div class="card-body">
                                    <p class="mb-0"><strong class="pr-1">Teacher Name:</strong><asp:Label ID="studentName" runat="server"></asp:Label></p>
                                    <p class="mb-0"><strong class="pr-1">Teacher ID:</strong><asp:Label ID="studentID" runat="server"></asp:Label></p>
                                    <p class="mb-0"><strong class="pr-1">Gender:</strong><asp:Label ID="gender1" runat="server"></asp:Label></p>
                                </div>
                            </div>

                            <div class="card-header bg-transparent border-0">
                                <h3 class="mb-0">General Information</h3>
                            </div>
                            <div class="card-body pt-0">
                                <table class="table table-bordered">
                                    <tr>
                                        <th width="30%">Phone Number</th>
                                        <td width="2%">:</td>
                                        <td>
                                            <asp:Label ID="phno" runat="server"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <th width="30%">Date Of Birth</th>
                                        <td width="2%">:</td>
                                        <td>
                                            <asp:Label ID="dofb" runat="server"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <th width="30%">Email</th>
                                        <td width="2%">:</td>
                                        <td>
                                            <asp:Label ID="Email1" runat="server"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <th width="30%">Address</th>
                                        <td width="2%">:</td>
                                        <td>
                                            <asp:Label ID="Address1" runat="server"></asp:Label></td>
                                    </tr>
                                </table>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>





</body>

</html>
