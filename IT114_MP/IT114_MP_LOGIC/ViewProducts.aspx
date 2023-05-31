<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProducts.aspx.cs" Inherits="IT114_MP_LOGIC.ViewProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="input-group mb-3">
             <asp:TextBox ID="txtSearch" runat="server" ></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click"/><br />
            <br />

            PRODUCT STATUS:
            <asp:DropDownList ID="ddlProdStatus" runat="server" >
                <asp:ListItem Text="Available" Value="available"></asp:ListItem>
                <asp:ListItem Text="Not Available" Value="not available"></asp:ListItem>
             </asp:DropDownList>
            <br />
            <br />

            <asp:Table ID="MyTable" runat="server" style="height: 25px"></asp:Table>
            <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" />
        </div>
    </form>
</body>
</html>
