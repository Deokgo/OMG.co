<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PerformanceReport.aspx.cs" Inherits="IT114_MP_LOGIC.PerformanceReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PRODUCTS REPORT</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="best-container">
                <asp:Label runat="server" Text="TOP PERFORMER"></asp:Label>
                <asp:Label runat="server" ID="bestNameLbl"></asp:Label>
                <asp:Image runat="server" ID="bestImage"/>
                <asp:Label runat="server" ID="bestPriceLbl"></asp:Label>
                <asp:Label runat="server" ID="bestSoldLbl"></asp:Label>
                <div id="second-best-container">
                    <asp:Label runat="server" ID="secNameLbl"></asp:Label>
                    <asp:Label runat="server" ID="secPriceLbl"></asp:Label>
                    <asp:Label runat="server" ID="secSoldLbl"></asp:Label>
                </div>
                <div id="third-best-container">
                    <asp:Label runat="server" ID="thirdNameLbl"></asp:Label>
                    <asp:Label runat="server" ID="thirdPriceLbl"></asp:Label>
                    <asp:Label runat="server" ID="thirdSoldLbl"></asp:Label>
                </div>
            </div>
            <div id="least-container">
                <asp:Label runat="server" Text="WORST PERFORMER"></asp:Label>
                <asp:Label runat="server" ID="worstNameLbl"></asp:Label>
                <asp:Image runat="server" ID="worstImage"/>
                <asp:Label runat="server" ID="worstPriceLbl"></asp:Label>
                <asp:Label runat="server" ID="worstSoldLbl"></asp:Label>
                <br />
                <br />
                <asp:Button ID="btn" runat="server" Text="Back" OnClick="btn_Click" />
            </div>
        </div>
    </form>
</body>
</html>
