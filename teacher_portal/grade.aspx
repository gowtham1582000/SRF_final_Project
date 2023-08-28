<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="grade.aspx.vb" Inherits="SRF_final_Project.grade" %>

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
     <style>
        body {
            font-family: Arial, sans-serif;
        }
      
        .input-container {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }
        #txtSearch {
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        #btnSearch {
            margin-left: 10px;
            padding: 8px 15px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        #GridView1 {
            width: 100%;
            border-collapse: collapse;
        }
        #GridView1 th, #GridView1 td {
            padding: 8px;
            border: 1px solid #ccc;
        }
        
        #GridView1 input[type="text"] {
            width: 80px;
            padding: 5px;
        }
        #Button1 {
            margin-top: 10px;
            padding: 8px 15px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .search-heading {
            font-size: 24px;
            margin-bottom: 20px;
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
                        <h1 class="recent-Articles">Grade Entry</h1>
                    </div>

                    <div class="report-body">
                        <div class="assignment-list">

        
            <div>
            <h1 class="search-heading">Student Attendance Management</h1>
            <asp:TextBox ID="txtSearch" runat="server" placeholder="Enter Student ID"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="Search"/><br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" BackColor="White">
                <Columns>
                    <asp:BoundField DataField="StudentID" HeaderText="Student ID" />
                    <asp:BoundField DataField="StudentName" HeaderText="Student Name" />
                    <asp:TemplateField HeaderText="Marks Id">
                        <ItemTemplate>
                            <asp:TextBox ID="txtMarks6" runat="server"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="class" HeaderText="Class" />
                    <asp:TemplateField HeaderText="Tamil">
                        <ItemTemplate>
                            <asp:TextBox ID="txtMarks1" runat="server"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Tcience">
                        <ItemTemplate>
                            <asp:TextBox ID="txtMarks2" runat="server"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Maths">
                        <ItemTemplate>
                            <asp:TextBox ID="txtMarks3" runat="server"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Social">
                        <ItemTemplate>
                            <asp:TextBox ID="txtMarks4" runat="server"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="English">
                        <ItemTemplate>
                            <asp:TextBox ID="txtMarks5" runat="server"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Save The Grades" />
        
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </form>
</body>
</html>
