<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="IT114_MP_LOGIC.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ADMIN</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblRole" runat="server" Text="Label"></asp:Label><br />
            <asp:Label ID="lblUname" runat="server" Text="Label"></asp:Label>
            <br />
            <br />

            <asp:Button ID="btnAddProd" runat="server" Text="Add Product" OnClick="btnAddProd_Click" /><br />
            <asp:Button ID="btnUpdatedProd" runat="server" Text="Update Product" OnClick="btnUpdatedProd_Click" /><br />
            <asp:Button ID="btnView" runat="server" Text="View Product" OnClick="btnView_Click" /><br />
            <asp:Button ID="btnEditMyAcc" runat="server" Text="Edit My Account" OnClick="btnEditMyAcc_Click" /><br />
            <asp:Button ID="btnAddAcc" runat="server" Text="Add User Account" /><br />
            <asp:Button ID="btnLogout" runat="server" Text="Logout Account" OnClick="btnLogout_Click" /><br />
        </div>
    </form>
</body>
</html>
