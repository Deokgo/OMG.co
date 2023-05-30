<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProducts.aspx.cs" Inherits="IT114_MP_LOGIC.AddProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            PRODUCT NAME:
            <asp:TextBox ID="txtProdName" runat="server"></asp:TextBox><br />

            PRODUCT PRICE:
            <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox><br />

            <asp:Image ID="imgProd" runat="server" Height="150px" Width="150px" /><br />
            <asp:FileUpload ID="fuPicture" runat="server" Width="312px" />
            <asp:Button ID="btnUploadPic" runat="server" Text="Upload" Width="126px" OnClick="btnUploadPic_Click" /><br />

            DESCRIPTION:
            <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine"></asp:TextBox><br />

            <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
            <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" />
        </div>
    </form>
</body>
</html>
