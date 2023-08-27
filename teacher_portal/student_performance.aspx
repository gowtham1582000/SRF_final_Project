<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="student_performance.aspx.vb" Inherits="SRF_final_Project.student_performance" %>


<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>


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
        body {
            font-family: Arial, sans-serif;
        }

        .header {
            text-align: center;
            margin-top: 20px;
        }

        .container {
            margin-top: 30px;
        }

        .form-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #f8f9fa;
            margin-bottom: 20px;
            flex: 1; 
            margin-right: 20px;
        }

        .chart-container {
            display: flex;
            justify-content: center;
            width: 273px;
        }

        .button {
            background-color: #007bff;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }

        .gridview {
            width: 100%;
            border-collapse: collapse;
        }

            .gridview th,
            .gridview td {
                padding: 10px;
                border: 1px solid #ccc;
            }

        .form-chart-container {
            display: flex;
            align-items: flex-start;
            margin-top: 20px;
        }

        h3 {
            font-size: 18px;
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
                        <h1 class="recent-Articles">Your Assignments</h1>
                    </div>

                    <div class="report-body">
                        <div class="assignment-list">
                            <div class="header">
                                <h1>Student Performance Report</h1>
                            </div>
                            <div class="container">
                                <div class="form-chart-container">
                                    <div class="form-container">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label for="txtStudentID">Enter Student ID:</label>
                                                <input type="text" id="txtStudentID" runat="server" />
                                            </div>
                                            <div class="col-md-6">
                                                <label for="Text1">Enter Mark ID:</label>
                                                <input type="text" id="Text1" runat="server" />
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">

                                                <asp:Chart ID="Chart1" runat="server">
                                                    <series>
                                                        <asp:Series Name="Series1">
                                                        </asp:Series>
                                                    </series>
                                                    <chartareas>
                                                        <asp:ChartArea Name="ChartArea1">
                                                        </asp:ChartArea>
                                                    </chartareas>
                                                </asp:Chart>

                                               <%-- <asp:Chart ID="Chart1" runat="server" Height="190px" Width="273px">
                                                    <Series>
                                                        <asp:Series Name="Series1" ChartType="Pie" ChartArea="ChartArea1"></asp:Series>
                                                    </Series>
                                                    <ChartAreas>
                                                        <asp:ChartArea Name="ChartArea1">
                                                        </asp:ChartArea>
                                                    </ChartAreas>
                                                </asp:Chart>--%>
                                            </div>
                                            <div class="col-md-6">
                                                <asp:Button ID="btnGenerateReport" runat="server" Text="Generate Mark Report" OnClick="btnGenerateReport_Click" CssClass="button" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="container">

                                <asp:GridView ID="GridViewStudents" CssClass="gridview" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridViewStudents_SelectedIndexChanged">
                                    <Columns>
                                        <asp:BoundField DataField="StudentID" HeaderText="Student ID" />
                                        <asp:BoundField DataField="StudentName" HeaderText="Student Name" />
                                        <asp:BoundField DataField="marks_id" HeaderText="Mark ID" />
                                        <asp:BoundField DataField="class" HeaderText="Class" />
                                        <asp:TemplateField HeaderText="Generate Report">
                                            <ItemTemplate>
                                                <asp:Button ID="btnGenerateStudentReport" Text="Generate Mark Report" CommandName="Select" CommandArgument='<%# Eval("StudentID").ToString() + ";" + Eval("marks_id").ToString() %>' runat="server" CssClass="button" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>






    </form>
</body>
</html>
