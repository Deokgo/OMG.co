<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TransactionPage.aspx.cs" Inherits="IT114_MP_LOGIC.TransactionPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TRANSACTION</title>
    <style>
        #tableContainer {
            width: 500px;
            height: 500px;
            overflow: auto;
        }
        
        #prodTable {
            width: 100%;
            border-collapse: collapse;
        }
        
        #prodTable th,
        #prodTable td {
            border: 1px solid #000;
            padding: 5px;
        }
        
        .prodImage img {
            width: 100px;
            height: 100px;
        }
        #cartContainer {
            width: 500px;
            height: 500px;
            overflow: auto;
        }
        
        #cart {
            width: 100%;
            height: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="tableContainer">
                <asp:Table runat="server" ID="prodTable">
                <asp:TableHeaderRow>
                    <asp:TableCell ID="prodImage"></asp:TableCell>
                    <asp:TableCell ID="prodName">Name</asp:TableCell>
                    <asp:TableCell ID="prodPrice">Price</asp:TableCell>
                </asp:TableHeaderRow>
            </asp:Table>
            </div>
            <asp:DropDownList runat="server" ID="prodDdl"></asp:DropDownList>
            <asp:TextBox runat="server" ID="qtyTxt"></asp:TextBox>
            <asp:Button runat="server" ID="addCartBtn" Text="Add To Cart" OnClick="AddToCart"/>
            <div id="cartContainer">
                <asp:Label runat="server">Name</asp:Label>
                <asp:Label runat="server">Price</asp:Label>
                <asp:Label runat="server">Quantity</asp:Label>
                <asp:Label runat="server">Subtotal</asp:Label>
                <asp:ListBox runat="server" ID="cart"></asp:ListBox>
            </div>
        </div>
    </form>
</body>
</html>
