<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="showing_student_details.aspx.vb" Inherits="SRF_final_Project.showing_student_details" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="/css/style.css" />
    <style>
        #GridView1 {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
        }

            #GridView1 th, #GridView1 td {
                padding: 10px;
                border: 1px solid #ccc;
                text-align: center;
            }

            #GridView1 th {
                background-color: #f2f2f2;
            }

        

        #form1 {
            padding: 10px;
            background-color: #fff;
            border-radius: 5px;
            }

        h1, h2 {
            color: #333;
        }
        h3{
                   font-size:18px;

           }
           a:hover {
    color: White;
    transition: color 0.3s ease; 
}
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <div id="header"></div>
        <div class="main-container">
            <div class="navcontainer">
                <div id="options"></div>
            </div>
            <div class="main">
                <div class="report-container">
                    <div class="report-header">
                        <h1 class="recent-Articles">Student Details</h1>
                    </div>

                    <div class="report-body">
                        <div class="assignment-list">

        
            <h1 style="text-align: center;">Students</h1>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="StudentID" HeaderText="Student ID" />
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                    <asp:BoundField DataField="DateOfBirth" HeaderText="Date of Birth" DataFormatString="{0:d}" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" />
                    <asp:BoundField DataField="ContactNumber" HeaderText="Phone Number" />
                    <asp:BoundField DataField="Address" HeaderText="Address" />
                </Columns>
            </asp:GridView>
        
                        </div>
                    </div>
                </div>
            </div>
        </div>






    </form>
</body>
</html>