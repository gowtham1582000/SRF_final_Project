<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="student_enrollment.aspx.vb" Inherits="SRF_final_Project.student_enrollment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style type="text/css">
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
            color: #007bff;
            border-radius: 15px;
            border: 2px solid #007bff;
            text-align: center;
            text-decoration: none;
            padding: 5px 10px;
            font-size: 16px;
            cursor: pointer;
            margin-right: 10px;
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

        .article--viewer .v-divider-gfg {
            position: absolute;
            width: 1px;
            left: 50%;
            transform: translate(-50%, -20%);
            top: 20%;
            height: 70%;
            background-color: blue;
            opacity: 0.25;
            content: "";
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container1">
            <span class="article--viewer v-divider-gfg"></span>General Information
        </div>
        <div class="container mt-4">
            <div class="row">
                <div class="col-md-2 mb-2">
                    <div class="input-group" style="margin-top: 20px">
                        <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" placeholder="Search by Student Name"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-2 mb-1">
                    <div class="form-group">
                        <label for="classDropdown">Class</label>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-select dropdown">
                            <asp:ListItem>XII-A</asp:ListItem>
                            <asp:ListItem>XI-B</asp:ListItem>
                            <asp:ListItem>XI-C</asp:ListItem>
                            <asp:ListItem>XI-D</asp:ListItem>
                            <asp:ListItem>None</asp:ListItem>

                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-md-2 mb-1">
                    <div class="form-group">
                        <label for="sortByDropdown">Sort By</label>
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-select dropdown">
                            <asp:ListItem>Student Name</asp:ListItem>
                            <asp:ListItem>Class</asp:ListItem>
                            <asp:ListItem>Admission Number</asp:ListItem>
                            <asp:ListItem>None</asp:ListItem>

                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-md-2 mb-1">
                    <div class="form-group">
                        <label for="dateDropdown">As On Date</label>
                        <asp:TextBox ID="dateDropdown" runat="server" TextMode="Date" CssClass="form-control" Height="29px"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-3 mb-1">
                    <div class="form-group">
                        <div class="d-flex justify-content-end" style="margin-top: 20px">
                            <asp:Button ID="btnView" runat="server" Text="View" CssClass="custom-button" />
                            <asp:Button ID="btnUpload" runat="server" Text="Upload Student Photo" CssClass="custom-button" />
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <div class="alert alert-info" role="alert">
                Status: Y - Current, P - Pass, F - Fail, W - Withdrawn, L - Long Leave, E - Exit Pending, C - Class Changed
            </div>
        </div>
        <br />
        <div class="container">
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-responsive" AutoGenerateColumns="False">
                <Columns>
                    <asp:TemplateField HeaderText="S.No">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Student Name">
                        <ItemTemplate>
                            <asp:Label ID="lblFullName" runat="server" Text='<%# Eval("std_FirstName") & " " & Eval("std_LastName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText="Admission Number" DataField="std_Admno" />
                    <asp:BoundField HeaderText="Class" DataField="std_class" />
                    <asp:BoundField HeaderText="Date Of Joining" DataField="std_doj" DataFormatString="{0:yyyy-MM-dd}" />

                    <asp:BoundField HeaderText="Status" DataField="Status" />
                    <asp:BoundField HeaderText="Effective From" DataField="EffectiveFrom" />
                    <asp:BoundField HeaderText="Effective To" DataField="EffectiveTo" />
                    <asp:TemplateField HeaderText="View">
                        <ItemTemplate>
                            <asp:LinkButton ID="btnView1" runat="server" OnClick="btnView_Click2" CommandName="View" CommandArgument='<%# Eval("std_applicationno") %>' CssClass="btn-icon">
                            <i class="fa fa-eye" style="color:red"></i>
                            </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
            </asp:GridView>
        </div>




    </form>
</body>
</html>
