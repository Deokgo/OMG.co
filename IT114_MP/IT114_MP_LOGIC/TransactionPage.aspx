<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TransactionPage.aspx.cs" Inherits="IT114_MP_LOGIC.TransactionPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TRANSACTION</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous"/>
    <style>
        #tableContainer {
            width: 500px;
            height: 500px;
            overflow: auto;
            float: left;
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
        #container {
            width: 500px;
            height: 600px;
            float: left;
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
        body {
            border: 20px;
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
            <asp:Button runat="server" ID="addCartBtn" Text="Add To Cart" OnClick="AddToCart" CssClass="btn btn-primary"/>
            <div id="container">
                <div class="row label-container">
                    <div class="col-3">
                        <asp:Label runat="server">Name</asp:Label>
                    </div>
                    <div class="col-3">
                        <asp:Label runat="server">Price</asp:Label>
                    </div>
                    <div class="col-3">
                        <asp:Label runat="server">Quantity</asp:Label>
                    </div>
                    <div class="col-3">
                        <asp:Label runat="server">Subtotal</asp:Label>
                    </div>
                </div>
                <div id="cartContainer">
                    <asp:ListBox runat="server" ID="cart"></asp:ListBox>
                </div>
                <asp:Label runat="server" ID="totalLbl">Total: 0.0</asp:Label>
                <asp:Button runat="server" OnClick="RemoveToCart" ID="removeCartBtn" CssClass="btn btn-secondary" Text="Remove To Cart"/>
            </div>
        </div>
    </form>
</body>
</html>
