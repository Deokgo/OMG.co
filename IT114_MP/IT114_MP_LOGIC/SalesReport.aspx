<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SalesReport.aspx.cs" Inherits="IT114_MP_LOGIC.SalesReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SALES REPORT</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="daily-sales-container">
                <asp:Label runat="server" ID="dailyLbl">Daily Sales</asp:Label><br />
                <asp:Label runat="server" ID="dateLbl"></asp:Label><br />
                <asp:Label runat="server" ID="dailySales"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
