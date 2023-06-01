<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="IT114_MP_LOGIC.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ADMIN</title>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body style="background-image: url('../images/LandingPageBG3.jpg'); background-size:cover ">
    <form class="justify-content-center text-center" runat="server"> 
        <!-- Navigation Bar-->
        <div class="container-md">
            <div class="row bg-dark">
                <div class="col-8">
                    <nav class="navbar navbar-expand-sm bg-dark navbar-light">
                        <ul class="navbar-nav">
                            <li class="nav-item active">
                                <a class="nav-link disabled text-light mr-lg-1" style="font-size:xx-large; font-family:Broadway" href="#">OMG <span class="badge badge-pill badge-secondary">.co</span></a>
                                <i class="fa-sharp fa-light fa-circle-user"></i>
                            </li>
                            <asp:Label runat="server" class="text-dark mt-4" style="font-size:20px" href="#">||||</asp:Label>
                            <li class="nav-item">
                                <a class="nav-link mt-3 mr-3 text-light" style="font-size:15px" href="#editUserInfo">Manage Your Profile</a>
                            </li> 
                            <li class="nav-item">
                                <a class="nav-link mt-3 mr-3 text-light" style="font-size:15px" href="#manageEmpInfo">Manage Employee Profile</a>
                            </li>   
                            <li class="nav-item">
                                <a class="nav-link mt-3 mr-3 text-light" style="font-size:15px" href="#manageProdInfo">Manage Products</a>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class="col">
                    <span class="badge badge-pill badge-primary mt-3" style="font-size:x-large; font-family:'Century Gothic'">dashboard</span>
                </div>
            </div>
        </div>
        <div class="container-md bg-light border"> </div>
        <div class="container-md bg-trasnparent pt-lg-4"> </div>

        <!-- Content Page-->
        <div class="row justify-content-md-center mt-5 mb-2">
            <span class="badge badge-pill badge-dark mr-3" style="font-size:50px; font-family:'Century Gothic'">Welcome,</span>
            <asp:Label class="text-white" id="lblUname" runat="server" style="font-size:50px; font-family:Tahoma; font-weight:bold">[Fname]</asp:Label>
        </div>
        <asp:Label class="text-warning mr-4" id="lblRole" runat="server" style="font-size:25px; font-family:'Century Gothic'; font-weight:bold">[role]</asp:Label>
    
        <div class="row justify-content-center mt-3">
            <asp:Label class="text-white" id="Label1" runat="server" style="font-size:30px; font-family:Tahoma; font-weight:bold">What would you like to do?</asp:Label>
        </div>
        <div class="w-100"></div>
        <div class="w-100"></div>
        <div class="row col-md-12 justify-content-center mt-3">
            <a class="badge badge-info mt-3 mr-3" style="font-size:25px" href="#editUserInfo">Manage Your Profile</a> <div class="w-100"></div>
            <a class="badge badge-info mt-3 mr-3" style="font-size:25px" href="#manageEmpInfo">Manage Employee Profile</a> <div class="w-100"></div>
            <a class="badge badge-info mt-3 mr-3" style="font-size:25px" href="#manageProdInfo">Manage Products</a> <div class="w-100"></div>
            <asp:Button id="Button3" runat="server" type="button" class="btn btn-danger mt-4" OnClick="btnLogout_Click" Text="Log Out" width="150px" height="40px"/> 
        </div>
        <div id="editUserInfo" class="container-md bg-dark mt-4 pt-5 text-center" style="opacity:.5"></div>
        <div class="container-md bg-dark pt-5 text-center" style="opacity:.5"></div>
        <div class="container-md bg-dark text-center pb-5"> 
            <span class="badge badge-pill badge-light text m-5" style="font-size:40px; font-family:Broadway ;font-weight:bold">User Information</span><br/>
            <asp:Label class="text-white" id="txtFname" runat="server" style="font-size:25px; font-family:'Century Gothic'; font-weight:bold">[First Name]</asp:Label><br />
            <asp:Label class="text-white" id="txtLname" runat="server" style="font-size:25px; font-family:'Century Gothic'; font-weight:bold">[Last Name]</asp:Label><br />
            <asp:Label class="text-white" id="txtEmail" runat="server" style="font-size:25px; font-family:'Century Gothic'; font-weight:bold">[Email Address]</asp:Label><br />
            <asp:Label class="text-white" id="txtUname" runat="server" style="font-size:25px; font-family:'Century Gothic'; font-weight:bold">[Username]</asp:Label><br />
            <asp:Label class="text-white" id="txtPword" runat="server" style="font-size:25px; font-family:'Century Gothic'; font-weight:bold">[Password]</asp:Label><br />
            <asp:Button id="Button4" runat="server" type="button" class="btn btn-outline-light mt-5" OnClick="btnEditMyAcc_Click" Text="Edit Profile" width="200px" height="50px"/>
        </div>

        <div id="manageEmpInfo" class="container-md bg-dark pt-5 text-center" style="opacity:.5"></div>
        <div class="container-md bg-dark pt-5 text-center" style="opacity:.5"></div>
        <div class="container-md bg-dark text-center pb-5"> 
            <span class="badge badge-pill badge-light text m-5" style="font-size:40px; font-family:Broadway ;font-weight:bold">Employee Information</span><br/>
            <asp:Button id="Button5" runat="server" type="button" class="btn btn-outline-light mt-5" OnClick="btnEditMyAcc_Click" Text="Add Employee Account" width="200px" height="50px"/><div class="w-100"></div>
        </div>

        <div id="manageProdInfo" class="container-md bg-dark pt-5 text-center" style="opacity:.5"></div>
        <div class="container-md bg-dark pt-5 text-center" style="opacity:.5"></div>
        <div class="container-md bg-dark text-center pb-5"> 
            <span class="badge badge-pill badge-light text m-5" style="font-size:40px; font-family:Broadway ;font-weight:bold">Manage Products</span><br/>
            <asp:Button id="Button6" runat="server" type="button" class="btn btn-outline-light mt-5" OnClick="btnAddProd_Click" Text="Add Product" width="200px" height="50px"/><div class="w-100"></div>
            <asp:Button id="Button7" runat="server" type="button" class="btn btn-outline-light mt-5" OnClick="btnUpdatedProd_Click" Text="Update Product" width="200px" height="50px"/><div class="w-100"></div>
            <asp:Button id="Button8" runat="server" type="button" class="btn btn-outline-light mt-5" OnClick="btnView_Click" Text="View Products" width="200px" height="50px"/><div class="w-100"></div>
        </div>
    </form>
</body>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</html>
