<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateAccount.aspx.cs" Inherits="IT114_MP_LOGIC.UpdateAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
            <br />
            <br />

            First Name: 
            <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvFname" class="form-text text-danger" runat="server" ErrorMessage="Required field." ControlToValidate="txtFname" Display="Dynamic" ValidationGroup="submitInfo"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revFname" class="form-text text-danger" runat="server" ErrorMessage="Must not contain number/s." ValidationGroup="submitInfo" ControlToValidate="txtFname" ValidationExpression="^[a-zA-Z\s]+$" Display="Dynamic"></asp:RegularExpressionValidator>
            <br />

            Last Name:
            <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvLname" class="form-text text-danger" runat="server" ErrorMessage="Required field." ControlToValidate="txtLname" Display="Dynamic" ValidationGroup="submitInfo"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revLname" class="form-text text-danger" runat="server" ErrorMessage="Must not contain number/s." ValidationGroup="submitInfo" ControlToValidate="txtLname" ValidationExpression="^[a-zA-Z\s]+$" Display="Dynamic"></asp:RegularExpressionValidator>
            <br />

            Email: 
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" class="form-text text-danger" runat="server" ErrorMessage="Required field." Display="Dynamic" ValidationGroup="submitInfo" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="reEmail" class="form-text text-danger" runat="server" ErrorMessage="Invalid email format." ValidationExpression="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?" ValidationGroup="submitInfo" ControlToValidate="txtEmail" Display="Dynamic"></asp:RegularExpressionValidator>
            <br />

            Username: 
            <asp:TextBox ID="txtUname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvUname" class="form-text text-danger" runat="server" ErrorMessage="Required field." ControlToValidate="txtUname" Display="Dynamic" ValidationGroup="submitInfo"></asp:RequiredFieldValidator>
            <br />

            Account State: 
            <asp:DropDownList ID="ddlAccStat" runat="server">
                <asp:ListItem Text="Enabled" Value="enabled"></asp:ListItem>
                <asp:ListItem Text="Disabled" Value="disabled"></asp:ListItem>
            </asp:DropDownList><br />
            <br />

            <asp:Button ID="btnUpdateAcc" runat="server" Text="Update User" ValidationGroup="submitInfo" OnClick="btnUpdateAcc_Click" />
            <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" />
        </div>
    </form>
</body>
</html>
