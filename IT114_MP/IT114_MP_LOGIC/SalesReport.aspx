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
                <asp:Label runat="server" ID="dailySales" Text="0"></asp:Label>
            </div>
            <div id="monthly-sales-container">
                <asp:Label runat="server" ID="monthlyLbl">Monthly Sales</asp:Label><br />
                <asp:Label runat="server" ID="monthLbl"></asp:Label><br />
                <asp:Label runat="server" ID="monthlySales">0</asp:Label>
            </div>
            <div id="overall-sales-container">
                <asp:Label runat="server" ID="overallLbl">Overall Sales</asp:Label><br />
                <asp:Label runat="server" ID="overallSales">0</asp:Label>
            </div>
        </div>
    </form>
</body>
</html>