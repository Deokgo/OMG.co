<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProducts.aspx.cs" Inherits="IT114_MP_LOGIC.AddProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <title>Add Product</title>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
    <!--Navigation Bar-->
    <nav class="navbar navbar-expand-sm navbar-light bg-dark">
      <!-- Brand/logo -->
        <asp:Label class="text-white navbar-brand" runat="server" style="font-size:40px; font-family:Broadway ;font-weight:bold">OMG <span class="badge badge-pill badge-secondary text">.co</span></asp:Label>

      <!-- Links -->
      <ul class="navbar-nav">
          <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle text-light" href="#" id="navbardrop" data-toggle="dropdown">Products</a>
              <div class="dropdown-menu">
                <asp:LinkButton ID="LinkButton1" CssClass="dropdown-item mx-auto" runat="server"> Add Product</asp:LinkButton>
                  <asp:LinkButton ID="LinkButton2" CssClass="dropdown-item mx-auto" runat="server"> Update Products</asp:LinkButton>
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
      </ul>
        <ul class="navbar-nav ml-auto">
            <asp:Label ID="admin_name" CssClass="mr-5 text-light" style="font-size:18px; font-weight:bold" runat="server" Text="Hi, Admin!"></asp:Label>
            <asp:LinkButton ID="logOut" CssClass="text-danger font-weight-bold" runat="server">Log Out</asp:LinkButton>
        </ul>
    </nav>
    <!--Main Container-->
    <div class="container">
         <div class="row">
         <!--Left Container-->
        <div class="col my-5 mx-4">
            <div class="container-fluid my-3">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                    <span class="input-group-text " id="inputGroup-sizing-sm">
                        <asp:Label ID="Label1" runat="server" Text="Product Name"></asp:Label></span>
                    </div>
                    <asp:TextBox ID="txtProdName" CssClass="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="container-fluid my-4">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                    <span class="input-group-text" id="inputGroup-sizing-sm1">
                        <asp:Label ID="Label2" runat="server" Text="Product Price"></asp:Label></span>
                    </div>
                    <asp:TextBox ID="txtPrice" CssClass="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="container-fluid my-4">
                <div class="input-group input-group-sm">
                    <div class="input-group-prepend">
                    <span class="input-group-text" id="inputGroup-sizing-sm2">
                        <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label></span>
                    </div>
                    <asp:TextBox ID="txtDesc" TextMode="MultiLine" Wrap="true" style = "resize:none" CssClass="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" runat="server" Height="150px"></asp:TextBox>
                </div>
            </div>
        </div>
        <!--Right Container-->
        <div class="col">
            <div class="container my-5 mx-4">
            <asp:Image ID="imgProd" CssClass="img-thumbnail" runat="server" Height="300px" Width="300px" />
        </div>
            <div class="custom-file">
                <asp:FileUpload ID="fuPicture" CssClass="form-control-file" runat="server" Width="312px" />
            </div>
            <asp:Button ID="btnUploadPic" CssClass="btn btn-outline-dark text-center" runat="server" Text="Upload" Width="126px" OnClick="btnUploadPic_Click"/>
        </div>
    </div>
    </div>
   
    <div class="container my-5">
        <div class="col-md-12 text-center">
            <asp:Button ID="btnAdd" CssClass="btn btn-success" runat="server" Text="Add" OnClick="btnAdd_Click" />
            <asp:Button ID="btnBack" CssClass="btn btn-outline-dark" runat="server" Text="Back" OnClick="btnBack_Click"/>
        </div>
    </div>
    </form>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
