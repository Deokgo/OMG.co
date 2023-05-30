<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="IT114_MP_LOGIC.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            USERNAME:
            <asp:TextBox ID="txtUname" runat="server"></asp:TextBox><br />
            PASSWORD:
            <asp:TextBox ID="txtPword" runat="server" TextMode="Password"></asp:TextBox><br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            <asp:Button ID="btnReg" runat="server" Text="Register" OnClick="btnReg_Click" />
        </div>
    </form>
</body>
</html>
