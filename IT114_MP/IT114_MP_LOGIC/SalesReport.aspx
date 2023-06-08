<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SalesReport.aspx.cs" Inherits="IT114_MP_LOGIC.SalesReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SALES REPORT</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%--<div id="daily-sales-container">
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
            </div>--%>

            <asp:DropDownList ID="ddlMonths" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlMonths_SelectedIndexChanged">
                <asp:ListItem Text="January" Value="1"></asp:ListItem>
                <asp:ListItem Text="February" Value="2"></asp:ListItem>
                <asp:ListItem Text="March" Value="3"></asp:ListItem>
                <asp:ListItem Text="April" Value="4"></asp:ListItem>
                <asp:ListItem Text="May" Value="5"></asp:ListItem>
                <asp:ListItem Text="June" Value="6"></asp:ListItem>
                <asp:ListItem Text="July" Value="7"></asp:ListItem>
                <asp:ListItem Text="August" Value="8"></asp:ListItem>
                <asp:ListItem Text="September" Value="9"></asp:ListItem>
                <asp:ListItem Text="October" Value="10"></asp:ListItem>
                <asp:ListItem Text="November" Value="11"></asp:ListItem>
                <asp:ListItem Text="December" Value="12"></asp:ListItem>
            </asp:DropDownList>
            <asp:Table ID="MyTableMonthly" runat="server"></asp:Table>
            <asp:Table ID="MyTableDaily" runat="server"></asp:Table>
            <asp:Table ID="MyTableOverall" runat="server"></asp:Table>
            <asp:Button ID="btn" runat="server" Text="Back" OnClick="btn_Click" />
        </div>
    </form>
</body>
</html>