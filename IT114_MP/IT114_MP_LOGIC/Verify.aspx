<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Verify.aspx.cs" Inherits="IT114_MP_LOGIC.Verify" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>VERIFY</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            USERNAME:
            <asp:TextBox ID="txtUname" runat="server"></asp:TextBox><br />
            PASSWORD:
            <asp:TextBox ID="txtPword" runat="server" TextMode="Password"></asp:TextBox><br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" style="height: 26px" />
        </div>
    </form>
</body>
</html>
