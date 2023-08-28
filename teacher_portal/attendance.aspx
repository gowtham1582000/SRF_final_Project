<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="attendance.aspx.vb" Inherits="SRF_final_Project.attendance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script
        src="https://code.jquery.com/jquery-3.3.1.js"
        integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
        crossorigin="anonymous">
    </script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="/css/style.css" />
    <style>
        h3 {
            font-size: 18px;
        }

        a:hover {
            color: White;
            transition: color 0.3s ease;
        }

        .grid-container {
            margin-top: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #fff;
        }

        .gridview {
            width: 50%;
        }

            .gridview th,
            .gridview td {
                padding: 10px;
                border: 1px solid #ccc;
                text-align: left;
            }

            .gridview th {
                background-color: #f2f2f2;
                font-weight: bold;
            }

        /* Style for CheckBoxes in GridView */
        .checkbox-label {
            display: inline-block;
            margin-right: 10px;
        }

        /* Style for Save Button */
        .btn-container {
            text-align: center;
            margin-top: 20px;
        }

        .btn-primary {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

            .btn-primary:hover {
                background-color: #0056b3;
            }
    </style>
    <script> 
        $(function () {
            $("#header").load("dashboard_header_teacher.aspx");
            $("#options").load("dashboard_option.aspx");
        });

    </script>
</head>
<body>
    <form id="form2" runat="server">
        <div id="header"></div>
        <div class="main-container">
            <div class="navcontainer">
                <div id="options"></div>
            </div>
            <div class="main">
                <div class="report-container">
                    <div class="report-header">
                        <h1 class="recent-Articles">Attendance Entry</h1>
                    </div>

                    <div class="report-body">
                        <div class="assignment-list">


                            <div id="container">
                                <h1>Attendance Page</h1>
                                <div class="grid-container">
                                    <asp:GridView ID="GridViewAttendance" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Height="181px" Width="1434px">
                                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                        <Columns>
                                            <asp:BoundField DataField="StudentID" HeaderText="Student ID" />
                                            <asp:BoundField DataField="StudentName" HeaderText="Student Name" />
                                            <asp:BoundField DataField="class" HeaderText="Class" />
                                            <asp:TemplateField HeaderText="Attendance Date">
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelAttendanceDate" runat="server" Text=""></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Attendance Mark">
                                                <ItemTemplate>
                                                    <asp:CheckBox ID="CheckBoxAttendancePresent" runat="server" Text="Present" />&nbsp&nbsp&nbsp&nbsp
                                <asp:CheckBox ID="CheckBoxAttendanceAbsent" runat="server" Text="Absent" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <FooterStyle BackColor="Tan" />
                                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                                    </asp:GridView>

                                </div>
                                <div class="btn-container">
                                    <asp:Button ID="Button1" runat="server" Text="Save Attendance" CssClass="btn-primary" />
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>






    </form>
</body>
</html>
