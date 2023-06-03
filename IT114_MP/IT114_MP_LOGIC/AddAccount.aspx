<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddAccount.aspx.cs" Inherits="IT114_MP_LOGIC.AddAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ADD ACCOUNT</title>
    <%--<link href="css/bootstrap.min.css" rel="stylesheet"/>--%>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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

            User Role: 
            <asp:DropDownList ID="ddlRole" runat="server">
                <asp:ListItem Text="Select Account Type" Value=""></asp:ListItem>
                <asp:ListItem Text="Admin" Value="admin"></asp:ListItem>
                <asp:ListItem Text="Manager" Value="manager"></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvRole" runat="server" ErrorMessage="Required field." ControlToValidate="ddlRole" Display="Dynamic" ValidationGroup="submitInfo"></asp:RequiredFieldValidator>
            <br />

            Password: 
            <asp:TextBox ID="txtPword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPword" class="form-text text-danger" runat="server" ErrorMessage="Required field." ControlToValidate="txtPword" Display="Dynamic" ValidationGroup="submitInfo"></asp:RequiredFieldValidator>
            <br />

            Confirm Password: 
            <asp:TextBox ID="txtConfirmPword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPwordConfirm" class="form-text text-danger" runat="server" ErrorMessage="Required field." ControlToValidate="txtConfirmPword" Display="Dynamic" ValidationGroup="submitInfo"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="btnAddUser" runat="server" Text="Add User" OnClick="btnAddUser_Click" ValidationGroup="submitInfo" />
            <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" />
        </div>
    </form>
</body>
    <%--<script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>--%>
</html>
