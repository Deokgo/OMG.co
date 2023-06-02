<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportPage.aspx.cs" Inherits="IT114_MP_LOGIC.ReportPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>REPORT</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblRole" runat="server" Text="Label"></asp:Label><br />
            <asp:Label ID="lblUname" runat="server" Text="Label"></asp:Label><br />
            <br />

            <asp:Button ID="btnBestLeastProduct" runat="server" Text="Best And Least Product Report" OnClick="btnBestLeastProduct_Click" /><br />
            <asp:Button ID="btnSales" runat="server" Text="Sales Report" />
            <br />
            <asp:Button ID="btnEditAcc" runat="server" Text="Edit My Account" OnClick="btnEditAcc_Click" />
            <br />
            <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
        </div>
    </form>
</body>
</html>
