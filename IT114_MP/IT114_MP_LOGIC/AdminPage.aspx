<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="IT114_MP_LOGIC.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ADMIN</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />

            <asp:Button ID="btnAddProd" runat="server" Text="Add Product" OnClick="btnAddProd_Click" /><br />
            <asp:Button ID="btnUpdatedProd" runat="server" Text="Update Product" /><br />
            <asp:Button ID="btnEditMyAcc" runat="server" Text="Edit My Account" /><br />
            <asp:Button ID="btnAddAcc" runat="server" Text="Add User Account" /><br />
            <asp:Button ID="btnLogout" runat="server" Text="Logout Account" /><br />
        </div>
    </form>
</body>
</html>
