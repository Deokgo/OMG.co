﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateAccount.aspx.cs" Inherits="IT114_MP_LOGIC.UpdateAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <!--Navigation Bar-->
        <nav class="navbar fixed-top navbar-expand-sm navbar-light bg-dark">
            <!-- Brand/logo -->
            <asp:Label class="text-white navbar-brand" runat="server" style="font-size:40px; font-family:Broadway ;font-weight:bold">OMG <span class="badge badge-pill badge-secondary text">.co</span></asp:Label>
            <ul class="navbar-nav ml-auto">
                <ul class="navbar-nav">
                    <%--<span class="badge badge-pill badge-primary text-center pt-2" style="font-size:20px; font-family:'Century Gothic'">dashboard</span>--%>
                    <li class="nav-item">
                        <asp:Label ID="admin_name" runat="server" class="badge badge-pill badge-primary text-center pt-2" style="font-size:20px; font-family:'Century Gothic'"></asp:Label>
                    </li> 
                </ul>            
            </ul>
        </nav>
    <div class="container-fluid m-xl-5 p-xl-5">
        <div class="container col-5 m-lg-auto bg-light p-lg-5 my-5">
            <div class="form-group mx-5 text-center">
                <asp:Label ID="Label7" runat="server" CssClass="h3" Text="Edit Account"></asp:Label>
            </div>
            <div class="input-group mx-3 pb-lg-5">
                <asp:TextBox ID="txtSearch" CssClass="form-control" placeholder="Username" aria-label="Recipient's username" aria-describedby="basic-addon2" runat="server"></asp:TextBox>
              <div class="input-group-append">
                  <asp:Button ID="btnSearch" CssClass="btn btn-outline-secondary" runat="server" Text="Search" OnClick="btnSearch_Click" />
              </div>
            </div>
            <div class="form-row mx-5">
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            </div>
            <div class="form-row mx-5">
                <div class="form-group col-md-6">
                    <asp:TextBox ID="txtFname" CssClass="form-control" placeholder="First Name" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvFname" class="form-text text-danger" runat="server" ErrorMessage="Required field." ControlToValidate="txtFname" Display="Dynamic" ValidationGroup="submitInfo"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revFname" class="form-text text-danger" runat="server" ErrorMessage="Must not contain number/s." ValidationGroup="submitInfo" ControlToValidate="txtFname" ValidationExpression="^[a-zA-Z\s]+$" Display="Dynamic"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group col-md-6">
                    <asp:TextBox ID="txtLname" CssClass="form-control" placeholder="Last Name" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvLname" class="form-text text-danger" runat="server" ErrorMessage="Required field." ControlToValidate="txtLname" Display="Dynamic" ValidationGroup="submitInfo"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revLname" class="form-text text-danger" runat="server" ErrorMessage="Must not contain number/s." ValidationGroup="submitInfo" ControlToValidate="txtLname" ValidationExpression="^[a-zA-Z\s]+$" Display="Dynamic"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="form-group mx-5">
                <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Email" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" class="form-text text-danger" runat="server" ErrorMessage="Required field." Display="Dynamic" ValidationGroup="submitInfo" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="reEmail" class="form-text text-danger" runat="server" ErrorMessage="Invalid email format." ValidationExpression="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?" ValidationGroup="submitInfo" ControlToValidate="txtEmail" Display="Dynamic"></asp:RegularExpressionValidator>
            </div>
            <div class="form-group mx-5">
                <asp:Label ID="Label4" runat="server" Text="Roles"></asp:Label>
                <asp:DropDownList ID="ddlAccStat" CssClass="form-control" runat="server">
                    <asp:ListItem Text="Enabled" Value="enabled"></asp:ListItem>
                    <asp:ListItem Text="Disabled" Value="disabled"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group mx-5">
                <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>
                <asp:TextBox ID="txtUname" CssClass="form-control" placeholder="Username" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUname" class="form-text text-danger" runat="server" ErrorMessage="Required field." ControlToValidate="txtUname" Display="Dynamic" ValidationGroup="submitInfo"></asp:RequiredFieldValidator>
            </div>
            <%--<div class="form-row mx-5">
                <div class="form-group col-md-6">
                    <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="txtPword" CssClass="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPword" class="form-text text-danger" runat="server" ErrorMessage="Required field." ControlToValidate="txtPword" Display="Dynamic" ValidationGroup="submitInfo"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group col-md-6">
                    <asp:Label ID="Label6" runat="server" Text="Confirm Password"></asp:Label>
                    <asp:TextBox ID="txtConfirmPword" CssClass="form-control" placeholder="Confirm Password" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPwordConfirm" class="form-text text-danger" runat="server" ErrorMessage="Required field." ControlToValidate="txtConfirmPword" Display="Dynamic" ValidationGroup="submitInfo"></asp:RequiredFieldValidator>
                </div>
            </div>--%>
            <div class="container my-5">
                <div class="col-md-12 text-center">
                    <asp:Button ID="btnUpdateAcc" CssClass="btn btn-success px-3" runat="server" Text="Update User" OnClick="btnUpdateAcc_Click" ValidationGroup="submitInfo"  />
                    <asp:Button ID="btnBack" CssClass="btn btn-outline-dark px-3" runat="server" Text="Back" OnClick="btnBack_Click" />
                </div>
            </div>        
        </div>
    </div>
    </form>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
