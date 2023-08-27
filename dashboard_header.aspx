<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="dashboard_header.aspx.vb" Inherits="SRF_final_Project.dashboard_header" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="/css/style.css" />
    <script src="/js/index.js"></script>
    <style>
        .icon-container {
            display: flex;
            align-items: center;
            position: relative;
        }

        .message-content {
            display: none;
            position: absolute;
            top: 40px; 
            right: 50px; 
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            padding: 20px;
            border-radius: 4px;
            z-index: 1;
            width:400px
        }
        .icon-container:hover .message-content {
            display: block;
        }
    </style>
</head>
<body>
    <header>
        <div class="logosec">
            <div class="logo" style="color: #5500cb">Admin Dashboard</div>
            
        </div>
       
    </header>
</body>
</html>

