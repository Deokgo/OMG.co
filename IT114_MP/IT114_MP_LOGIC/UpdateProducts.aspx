<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateProducts.aspx.cs" Inherits="IT114_MP_LOGIC.UpdateProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>UPDATE PRODUCT</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" /><br />

            PRODUCT NAME:
            <asp:TextBox ID="txtProdName" runat="server"></asp:TextBox><br />

            PRODUCT PRICE:
            <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox><br />

            <asp:Image ID="imgProd" runat="server" Height="150px" Width="150px" /><br />
            <asp:FileUpload ID="fuPicture" runat="server" Width="312px" />
            <asp:Button ID="btnUploadPic" runat="server" Text="Upload" Width="126px" OnClick="btnUploadPic_Click" /><br />

            DESCRIPTION:
            <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine" AutoPostBack="True"></asp:TextBox><br />

            STATUS:
            <asp:DropDownList ID="ddlStatus" runat="server">
                <asp:ListItem Text="Available" Value="available"></asp:ListItem>
                <asp:ListItem Text="Not Available" Value="not available"></asp:ListItem>
            </asp:DropDownList><br />

            <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
            <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" />
        </div>
    </form>
</body>
</html>
