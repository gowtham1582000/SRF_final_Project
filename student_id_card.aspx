<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="student_id_card.aspx.vb" Inherits="SRF_final_Project.student_id_card" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ID Card Generator</title>
</head>
<body>
    <form id="form1" runat="server">
            <div>
                <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
            </div>
    </form>
</body>
</html>

