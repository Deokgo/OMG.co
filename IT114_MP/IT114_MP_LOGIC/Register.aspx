<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="IT114_MP_LOGIC.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            FIRST NAME:
            <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvFname" class="form-text text-muted" runat="server" ErrorMessage="Required field." ControlToValidate="txtFname" Display="Dynamic" ValidationGroup="submitInfo"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="reFname" class="form-text text-muted" runat="server" ErrorMessage="Must not contain number/s." ValidationGroup="submitInfo" ControlToValidate="txtFname" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
            <br />

            LAST NAME:
            <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvLname" class="form-text text-muted" runat="server" ErrorMessage="Required field." ControlToValidate="txtLname" Display="Dynamic" ValidationGroup="submitInfo"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="reLname" class="form-text text-muted" runat="server" ErrorMessage="Must not contain number/s." ValidationGroup="submitInfo" ControlToValidate="txtLname" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
            <br />

            USERNAME: 
            <asp:TextBox ID="txtUname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvUname" class="form-text text-muted" runat="server" ErrorMessage="Required field." ControlToValidate="txtUname" Display="Dynamic" ValidationGroup="submitInfo"></asp:RequiredFieldValidator>
            <br />

            PASSWORD:
            <asp:TextBox ID="txtPword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPword" runat="server" ErrorMessage="Required field." ControlToValidate="txtPword" Display="Dynamic" ValidationGroup="submitInfo"></asp:RequiredFieldValidator>
            <br />

            EMAIL:
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" class="form-text text-muted" runat="server" ErrorMessage="Required field." Display="Dynamic" ValidationGroup="submitInfo" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="reEmail" class="form-text text-muted" runat="server" ErrorMessage="Invalid email format." ValidationExpression="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?" ValidationGroup="submitInfo" ControlToValidate="txtEmail"></asp:RegularExpressionValidator>
            <br />

            <asp:Button ID="btnRegister" runat="server" Text="Register" class="btn btn-primary" OnClick="btnRegister_Click" ValidationGroup="submitInfo" />
            <asp:Button ID="btnBack" runat="server" Text="Back" class="btn btn-primary" OnClick="btnBack_Click" />
        </div>
    </form>
</body>
</html>
