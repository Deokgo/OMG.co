<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="IT114_MP_LOGIC.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>REGISTER</title>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body style="background-image: url('../images/lofiBG.png'); background-size:cover ">
    <form class="justify-content-center" runat="server"> 
        <!-- Navigation Bar-->
        <div class="container-md" style="position:fixed; top:0; width:100%">
            <div class="row bg-dark">
                <div class="col-8">
                    <nav class="navbar navbar-expand-sm bg-dark navbar-light">
                        <ul class="navbar-nav">
                            <li class="nav-item active">
                                <a class="nav-link text-light mr-lg-1" style="font-size:xx-large; font-family:Broadway" href="HomePage.aspx">OMG <span class="badge badge-pill badge-secondary">.co</span></a>
                            </li>
                            <asp:Label runat="server" class="text-dark mt-4" style="font-size:20px" href="#">||||</asp:Label>
                            <li class="nav-item">
                                <a class="nav-link mt-3 mr-3 text-light" style="font-size:15px" href="HomePage.aspx#aboutUsPage">About Us</a>
                            </li> 
                            <li class="nav-item">
                                <a class="nav-link mt-3 mr-3 text-light" style="font-size:15px" href="HomePage.aspx#productsPage">Products</a>
                            </li>   
                            <li class="nav-item">
                                <a class="nav-link mt-3 mr-3 text-light" style="font-size:15px" href="HomePage.aspx#contactUsPage">Contact Us</a>
                            </li>
                            <li class="nav-item">
                                <div class="dropdown">
                                    <button class="btn btn-dark dropdown-toggle mt-3 mr-3 text-light" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Get Started
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                        <a class="dropdown-item font-weight-bold" href="Register.aspx">Sign Up</a>
                                        <a class="dropdown-item" href="Login.aspx">Log In</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="container-md bg-light border pt-lg-1"> </div>
        </div>
        <div class="container-md bg-light border pt-lg-4 mb-5"> </div>
        <div class="container-md bg-trasnparent pt-lg-4"> </div>

        <!-- Content Page-->
        <div class="row justify-content-md-center mb-4">
            <asp:Label class="text-white" runat="server" style="font-size:70px; font-family:Broadway; font-weight:bold">SIGN <span class="badge badge-pill badge-secondary text">UP</span></asp:Label>  
        </div>

        <div class="row justify-content-end">
            <div class="col-8 col-md-5">
                <div class="input-group ml-5">  
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="firstName" style="font-size:20px; font-family:'Century Gothic'; font-weight:bold">First Name:</span>
                    </div>
                    <asp:TextBox ID="txtFname" runat="server" type="text" placeholder="Enter first name..." class="form-control" aria-label="Default" aria-describedby="firstName"></asp:TextBox>
                </div>
            </div>
            <div class="col-1"></div>
            <div class="col-3">
                <asp:RequiredFieldValidator ID="rfvFname" class="form-text text-danger" runat="server" ErrorMessage="Required field." ControlToValidate="txtFname" Display="Dynamic" ValidationGroup="submitInfo"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revFname" class="form-text text-danger" runat="server" ErrorMessage="Must not contain number/s." ValidationGroup="submitInfo" ControlToValidate="txtFname" ValidationExpression="^[a-zA-Z\s]+$" Display="Dynamic"></asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="row justify-content-end mt-2">
            <div class="col-8 col-md-5">
                <div class="input-group ml-5">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="lastName" style="font-size:20px; font-family:'Century Gothic'; font-weight:bold">Last Name:</span>
                    </div>
                    <asp:TextBox ID="txtLname" runat="server" type="text" placeholder="Enter last name..." class="form-control" aria-label="Default" aria-describedby="lastName"></asp:TextBox>
                </div>
            </div>
            <div class="col-1"></div>
            <div class="col-3">
                <asp:RequiredFieldValidator ID="rfvLname" class="form-text text-danger" runat="server" ErrorMessage="Required field." ControlToValidate="txtLname" Display="Dynamic" ValidationGroup="submitInfo"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revLname" class="form-text text-danger" runat="server" ErrorMessage="Must not contain number/s." ValidationGroup="submitInfo" ControlToValidate="txtLname" ValidationExpression="^[a-zA-Z\s]+$" Display="Dynamic"></asp:RegularExpressionValidator>          
            </div>
        </div>
        <div class="row justify-content-end mt-2">
            <div class="col-8 col-md-5">
                <div class="input-group ml-5">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="userEmail" style="font-size:20px; font-family:'Century Gothic'; font-weight:bold">Email Address:</span>
                    </div>
                    <asp:TextBox ID="txtEmail" runat="server" type="text" placeholder="someone@email.com" class="form-control" aria-label="Default" aria-describedby="userEmail"></asp:TextBox>
                </div>
            </div>
            <div class="col-1"></div>
            <div class="col-3">
                <asp:RequiredFieldValidator ID="rfvEmail" class="form-text text-danger" runat="server" ErrorMessage="Required field." Display="Dynamic" ValidationGroup="submitInfo" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="reEmail" class="form-text text-danger" runat="server" ErrorMessage="Invalid email format." ValidationExpression="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?" ValidationGroup="submitInfo" ControlToValidate="txtEmail" Display="Dynamic"></asp:RegularExpressionValidator>            
            </div>
        </div>
        <div class="row justify-content-end mt-2">
            <div class="col-8 col-md-5">
                <div class="input-group ml-5">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="userName" style="font-size:20px; font-family:'Century Gothic'; font-weight:bold">Username:</span>
                    </div>
                    <asp:TextBox ID="txtUname" runat="server" type="text" placeholder="Create username..." class="form-control" aria-label="Default" aria-describedby="userName"></asp:TextBox>
                </div>
            </div>
            <div class="col-1"></div>
            <div class="col-3">
                <asp:RequiredFieldValidator ID="rfvUname" class="form-text text-danger" runat="server" ErrorMessage="Required field." ControlToValidate="txtUname" Display="Dynamic" ValidationGroup="submitInfo"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row justify-content-end mt-2">
            <div class="col-8 col-md-5">
                <div class="input-group ml-5">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="userPassword" style="font-size:20px; font-family:'Century Gothic'; font-weight:bold">Password:</span>
                    </div>
                    <asp:TextBox ID="txtPword" runat="server" type="password" placeholder="Create password..." class="form-control" aria-label="Default" aria-describedby="userPassword"></asp:TextBox>
                    
                </div>
            </div>
            <div class="col-1"></div>
            <div class="col-3">
                <asp:RequiredFieldValidator ID="rfvPword" class="form-text text-danger" runat="server" ErrorMessage="Required field." ControlToValidate="txtPword" Display="Dynamic" ValidationGroup="submitInfo"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row justify-content-end mt-2">
            <!-- Additional feature: Confirm Password-->
            <div class="col-10 col-md-5">
                <div class="input-group ml-5">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="confirmPassword" style="font-size:20px; font-family:'Century Gothic'; font-weight:bold">Confirm Password:</span>
                    </div>
                    <asp:TextBox ID="txtPwordConfirm" runat="server" type="password" placeholder="Re-enter password..." class="form-control" aria-label="Default" aria-describedby="confirmPassword"></asp:TextBox>   
                </div>
            </div>
            <div class="col-1"></div>
            <div class="col-3">
                <asp:RequiredFieldValidator ID="rfvPwordConfirm" class="form-text text-danger" runat="server" ErrorMessage="Required field." ControlToValidate="txtPwordConfirm" Display="Dynamic" ValidationGroup="submitInfo"></asp:RequiredFieldValidator>
            </div>
        </div>      
            
        <div class="row justify-content-center mt-5">
            <asp:Button id="btnRegister" runat="server" type="button" class="btn btn-outline-light" OnClick="btnRegister_Click" Text="Sign Up" width="150px" height="50px" ValidationGroup="submitInfo"/>
            <asp:Button id="btnBack" runat="server" type="button" class="btn btn-dark ml-5" OnClick="btnBack_Click" Text="Cancel" width="150px" height="50px"/>
        </div>  
        <div class="container-md bg-trasnparent pt-lg-1"> </div>
        <div class="container-md bg-trasnparent pt-lg-1"> </div>
        <div class="container-md bg-light mt-3 pt-5 text-center" style="opacity:.25"></div>
    </form>
</body>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</html>
