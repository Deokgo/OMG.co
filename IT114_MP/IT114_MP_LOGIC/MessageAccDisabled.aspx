<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MessageAccDisabled.aspx.cs" Inherits="IT114_MP_LOGIC.MessageAccDisabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NOTICE</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Your account has been disabled. Contact the database administrator to enable your account.<br />
            <asp:Button ID="btnOk" runat="server" Text="Okay" OnClick="btnOk_Click" />
        </div>
    </form>
</body>
</html>
