<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProducts.aspx.cs" Inherits="IT114_MP_LOGIC.ViewProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>VIEW PRODUCTS</title>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <!--Navigation Bar-->
          <nav class="navbar fixed-top navbar-expand-sm navbar-light bg-dark">
      <!-- Brand/logo -->
        <asp:Label class="text-white navbar-brand" runat="server" style="font-size:40px; font-family:Broadway ;font-weight:bold">OMG <span class="badge badge-pill badge-secondary text">.co</span></asp:Label>

      <!-- Links -->
      <%--<ul class="navbar-nav">
          <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle text-light" href="#" id="navbardrop" data-toggle="dropdown">Products</a>
              <div class="dropdown-menu">
                <asp:LinkButton ID="LinkButton1" CssClass="dropdown-item mx-auto" runat="server"> Add Product</asp:LinkButton>
                  <asp:LinkButton ID="LinkButton2" CssClass="dropdown-item mx-auto" runat="server"> Update Products</asp:LinkButton>
                  <asp:LinkButton ID="LinkButton5" CssClass="dropdown-item mx-auto " runat="server"> Show Products</asp:LinkButton>
              </div>
            </li>
          <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle  text-light" href="#" id="navbardrop1" data-toggle="dropdown">
                Accounts
              </a>
              <div class="dropdown-menu">
                  <asp:LinkButton ID="LinkButton3" CssClass="dropdown-item mx-auto " runat="server"> Add Account</asp:LinkButton>
                  <asp:LinkButton ID="LinkButton4" CssClass="dropdown-item mx-auto " runat="server"> Update an Account</asp:LinkButton>

              </div>
            </li>
      </ul>--%>
        <ul class="navbar-nav ml-auto">
            <ul class="navbar-nav">
               <span class="badge badge-pill badge-primary text-center pt-2" style="font-size:20px; font-family:'Century Gothic'">dashboard</span>
          <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle  text-light mx-3" href="#" id="navbardrop2" data-toggle="dropdown">
                <asp:Label ID="admin_name" CssClass="text-light" style="font-size:16px; font-weight:bold" runat="server" ></asp:Label>
              </a>
              <%--<div class="dropdown-menu">
                  <asp:LinkButton ID="LinkButton7" CssClass="dropdown-item mx-auto " runat="server">Edit Profile</asp:LinkButton>
                  <div class="dropdown-divider"></div>
                  <asp:LinkButton ID="logOut"  CssClass="dropdown-item mx-auto " runat="server">Log Out</asp:LinkButton>
              </div>--%>
            </li>
          </ul>            
        </ul>
    </nav>
        <div class="container-fluid m-xl-5 p-xl-5">
            <div class="container col-9 m-lg-auto bg-light rounded p-lg-5 my-5">
                <div class="form-group mx-5 text-center">
                <asp:Label ID="Label7" runat="server" CssClass="h3 m-5 text-center" Text="All Products"></asp:Label>
                </div>
                <div class="form-row ">
                    <div class="input-group">
                        <asp:TextBox ID="txtSearch" CssClass="form-control" placeholder="Product Name" aria-label="Recipient's username" aria-describedby="basic-addon2" Width="300px" runat="server" ></asp:TextBox>
                        <asp:DropDownList ID="ddlProdStatus" CssClass="form-control"  runat="server" >
                        <asp:ListItem Text="Available" Value="available"></asp:ListItem>
                        <asp:ListItem Text="Not Available" Value="not available"></asp:ListItem>
                     </asp:DropDownList>
                        <div class="input-group-append">
                        <asp:Button ID="btnSearch" CssClass="btn btn-outline-secondary input-group-text" runat="server" Text="Search" OnClick="btnSearch_Click"/>
                        </div>
                    </div>
                 </div>
            <div class="container-fluid">
                <asp:Table ID="MyTable" CssClass="table table-hover my-lg-5 text-center table-secondary" runat="server" style="height: 25px"></asp:Table>
            </div>
             <div class="container my-5">
                <div class="col-md-12 text-center">
                    <asp:Button ID="btnBack" CssClass="btn btn-outline-dark" runat="server" Text="Back" OnClick="btnBack_Click"/>
                </div>
            </div>           
            </div>

        </div>
    </form>
</body>
</html>
