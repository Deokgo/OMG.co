<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="IT114_MP_LOGIC.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LOGIN</title>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body style="background-image: url('../images/lofiBG.png'); background-size:cover ">
    <form class="justify-content-center" runat="server"> 
        <!-- Navigation Bar-->
        <div class="container-md" style="position:fixed; top:0; width:100%">
            <div class="row bg-dark">
                <div class="col-10">
                    <nav class="navbar navbar-expand-sm bg-dark navbar-light">
                        <ul class="navbar-nav">
                            <li class="nav-item active">
                                <a class="nav-link text-light mr-lg-1" style="font-size:xx-large; font-family:Broadway" href="HomePage.aspx">OMG <span class="badge badge-pill badge-secondary">.co</span></a>
                            </li>
                            <asp:Label runat="server" class="text-dark mt-4" style="font-size:20px" href="#">||||</asp:Label>
                            <li class="nav-item">
                                <a class="nav-link mt-3 mr-3 text-primary" style="font-size:15px" href="HomePage.aspx">Home</a>
                            </li> 
                            <li class="nav-item">
                                <a class="nav-link mt-3 mr-3 text-light" style="font-size:15px" href="#aboutUsPage">About Us</a>
                            </li> 
                            <li class="nav-item">
                                <a class="nav-link mt-3 mr-3 text-light" style="font-size:15px" href="#productsPage">Products</a>
                            </li>   
                            <li class="nav-item">
                                <a class="nav-link mt-3 mr-3 text-light" style="font-size:15px" href="#contactUsPage">Contact Us</a>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class="col-md-2 mt-4">
                    <a class="text-light mr-3" style="font-size:15px" href="Login.aspx">Login</a>
                    <asp:Button  runat="server" class="btn btn-primary" type="button" text="Get Started" id="dropdownMenuButton" OnClick="Register_Click"/>
                </div>
            </div>
            <div class="container-md bg-light border pt-lg-1"> </div>
        </div>
        <div class="container-md bg-light border pt-lg-4 mb-5"> </div>
        <div class="container-md bg-trasnparent pt-lg-5"> </div>

        <!-- Content Page-->
        <div class="row justify-content-md-center mt-5 mb-5">
            <asp:Label class="text-white" runat="server" style="font-size:70px; font-family:Broadway; font-weight:bold">LOG <span class="badge badge-pill badge-secondary text">IN</span></asp:Label>  
        </div>

        <div class="row m-5 justify-content-center" style="z-index:0 ; position:relative">
            <div class="col-12 col-md-5 input-group mb-3" >
                <div class="input-group-prepend">
                    <span class="input-group-text" id="userName" style="font-size:20px; font-family:'Century Gothic'; font-weight:bold">Username:</span>
                </div>
                <asp:TextBox id="txtUname" runat="server" type="text" placeholder="Enter your username..." class="form-control" aria-label="Default" aria-describedby="userName"></asp:TextBox>
            </div>
            <div class="w-100"></div>
            <div class="col-12 col-md-5 mt-3 input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="userPassword" style="font-size:20px; font-family:'Century Gothic'; font-weight:bold">Password:</span>
                </div>
                <asp:TextBox id="txtPword" runat="server" type="password" placeholder="Enter your password..." class="form-control w-25" aria-label="Default" aria-describedby="userPassword"></asp:TextBox>
            </div>
        </div>

        <div class="row justify-content-center mt-5" style="z-index:-1">
            <asp:Button id="btnLogin" runat="server" type="button" class="btn btn-outline-light" OnClick="btnSubmit_Click" Text="Login" width="150px" height="50px"/>
            <asp:Button id="btnCancel" runat="server" type="button" class="btn btn-dark ml-5" OnClick="btnHome_Click" Text="Cancel" width="150px" height="50px"/>
        </div>  
        <div class="container-md bg-trasnparent pt-lg-1"> </div>
        <div class="container-md bg-trasnparent pt-lg-1"> </div>
        <div class="container-md bg-light mt-5 pt-5 text-center" style="opacity:.25"></div>
    </form>
</body>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</html>
