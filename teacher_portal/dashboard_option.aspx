<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="dashboard_option.aspx.vb" Inherits="SRF_final_Project.dashboard_option" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <link rel="stylesheet" href="/css/style.css" />
    <style>
        a {
            color: White;
            transition: color 0.3s ease;
        }
    </style>
    <script src="/js/index.js"></script>
</head>

<body>
    <nav class="nav">
        <div class="nav-upper-options">
            <div class="nav-option option1">
                <img src="https://media.geeksforgeeks.org/wp-content/uploads/20221210182148/Untitled-design-(29).png"
                    class="nav-img" alt="dashboard" />
                <h3><a href="teacher_profile.aspx">Profile</a></h3>
            </div>
            <div class="nav-option option1">
                <img src="https://media.geeksforgeeks.org/wp-content/uploads/20221210182148/Untitled-design-(29).png"
                    class="nav-img" alt="dashboard" />
                <h3><a href="attendance.aspx">Attendance</a></h3>
            </div>
            <div class="nav-option option1">
                <img src="https://media.geeksforgeeks.org/wp-content/uploads/20221210182148/Untitled-design-(29).png"
                    class="nav-img" alt="dashboard" />
                <h3><a href="grade.aspx">Grade</a></h3>
            </div>
            <div class="nav-option option1">
                <img src="https://media.geeksforgeeks.org/wp-content/uploads/20221210182148/Untitled-design-(29).png"
                    class="nav-img" alt="dashboard" />
                <h3><a href="student_performance.aspx">Student Mark Report</a></h3>
            </div>
            <div class="nav-option option1">
                <img src="https://media.geeksforgeeks.org/wp-content/uploads/20221210182148/Untitled-design-(29).png"
                    class="nav-img" alt="dashboard" />
                <h3><a href="showing_student_details.aspx">Student Details</a></h3>
            </div>
            <div class="nav-option logout">
                <img src="https://media.geeksforgeeks.org/wp-content/uploads/20221210183321/7.png"
                    class="nav-img" alt="logout" />
                <h3 style="color: black"><a href="/admin_login_page.aspx">Log Out</a></h3>
            </div>
        </div>
    </nav>
</body>
</html>

