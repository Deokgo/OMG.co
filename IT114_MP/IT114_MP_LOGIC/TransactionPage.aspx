<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TransactionPage.aspx.cs" Inherits="IT114_MP_LOGIC.TransactionPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TRANSACTION</title>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>  
</head>
<body style="background-image: url('../images/LandingPageBG.jpg'); background-size:cover ">
    <form class="justify-content-center text-center" id="form1" runat="server">
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
                                <a class="nav-link mt-3 mr-3 text-light" style="font-size:15px" href="#editProf">Edit Profile</a>
                            </li> 
                            <li class="nav-item">
                                <a class="nav-link mt-3 mr-3 text-light" style="font-size:15px" href="#shopProducts">Shop Products</a>
                            </li> 
                        </ul>
                    </nav>
                </div>
                <div class="col">
                    <span class="badge badge-pill badge-primary mt-3 mr-4" style="font-size:x-large; font-family:'Century Gothic'">dashboard</span>
                    <asp:Button id="btnLogout" runat="server" type="button" class="btn btn-outline-danger w-25 pt-2" OnClick="btnLogout_Click" Text="Log Out"/>                   
                </div>
            </div>
        </div>
        <div class="container-md bg-light border"> </div>
        <div class="container-md bg-dark pt-5 text-center" style="opacity:.5"></div>
        <div class="container-md bg-trasnparent mb-3 pt-lg-5"> </div>

        <!-- Main Content Page -->  
        <div class="row justify-content-md-center mt-3 mb-2">
            <span class="badge badge-pill badge-secondary mr-3" style="font-size:60px; font-family:'Century Gothic'">Welcome,</span>
            <asp:Label class="text-white" id="lblUname" runat="server" style="font-size:60px; font-family:Tahoma; font-weight:bold">[Fname]</asp:Label>
        </div>
        <asp:Label class="text-warning" id="lblRole" runat="server" style="font-size:30px; font-family:'Century Gothic'; font-weight:bold">[role]</asp:Label>

        <div class="row justify-content-center mt-4 mb-5">
            <asp:Button id="btnEditMyAcc" runat="server" type="button" class="btn btn-outline-light w-25 pt-2" OnClick="btnEditAcc_Click" Text="Edit Profile"/><div class="w-100"></div>
            <asp:Label class="text-white mt-5" runat="server" style="font-size:40px; font-family:Tahoma; font-weight:bold">Start Shopping Now!</asp:Label>
        </div>

        <div class="container-md bg-dark pt-5 text-center" style="opacity:.5"></div>
        <div id="shopProducts" class="row bg-light">
            <div class="col-6 text-center" style="font-family:'Century Gothic'">
                <span class="badge badge-pill badge-secondary text mt-5" style="font-size:30px; font-family:Broadway ;font-weight:bold">Products</span>
                <div class="container-md bg-dark pt-1 m-4"></div>
                <asp:Table class="m-3" runat="server" ID="prodTable">
                    <asp:TableHeaderRow style="font-family:Tahoma; font-size:20px">
                        <asp:TableCell ID="prodImage"></asp:TableCell>
                        <asp:TableCell ID="prodName">Product Name</asp:TableCell>
                        <asp:TableCell ID="prodPrice">Price</asp:TableCell> 
                    </asp:TableHeaderRow>
                </asp:Table>
            </div>

            <div class="col-6 text-center">
                <span class="badge badge-pill badge-primary text mt-5" style="font-size:30px; font-family:Broadway ;font-weight:bold">My Cart</span>
                <div class="container-md bg-dark pt-1 m-4"></div>
                <div class="row text-dark text-center mb-3" style="font-family:Tahoma; font-size:20px">
                    <div class="col-3">
                        <asp:Label runat="server">Name</asp:Label>
                    </div>
                    <div class="col-3">
                        <asp:Label runat="server">Price</asp:Label>
                    </div>
                    <div class="col-3">
                        <asp:Label runat="server">Quantity</asp:Label>
                    </div>
                    <div class="col-3">
                        <asp:Label runat="server">Subtotal</asp:Label>
                    </div>
                </div>
                <asp:ListBox class="w-100 h-25 text-center" runat="server" ID="cart" style="font-family:Tahoma; font-size:20px" ></asp:ListBox>

                <div class="m-2">
                    <asp:Label class="mb-5" runat="server" style="font-size:25px; font-family:'Century Gothic' ;font-weight:bold">Select product:</asp:Label>
                    <asp:DropDownList class="form-control w-100" runat="server" ID="prodDdl"></asp:DropDownList>
                    <div class="input-group-prepend mt-3">
                        <asp:Label class="mt-1" id="quant" runat="server" style="font-size:20px; font-family:'Century Gothic' ;font-weight:bold">Quantity:</asp:Label>
                        <asp:TextBox class="form-control w-25 ml-2 mr-4" runat="server" ID="qtyTxt" aria-describedby="quant"></asp:TextBox>
                        <asp:Button id="addCartBtn" runat="server" type="button" class="btn btn-success w-25" OnClick="AddToCart" Text="Add To Cart" ValidationGroup="submitOrder" AutoPostback = "false"/>
                        <asp:Button id="removeCartBtn" runat="server" type="button" class="btn btn-outline-dark w-25 ml-3" OnClick="RemoveToCart" Text="Remove To Cart" CausesValidation="false"/>
                    </div>
                </div>     
                <asp:RequiredFieldValidator class="text-danger" runat="server" ControlToValidate="qtyTxt" ErrorMessage="Quantity should be filled out." ValidationGroup="submitOrder" ></asp:RequiredFieldValidator><br />
                
                <div class="row m-2">
                    <div class="col-6">
                        <asp:Label class="text-secondary" runat="server" style="font-size:25px; font-family:Tahoma ;font-weight:bold">Total: PHP </asp:Label>
                        <asp:Label class="text-dark" runat="server" ID="totalLbl" style="font-size:25px; font-family:Tahoma ;font-weight:bold">0.00</asp:Label>
                    </div>
                    <div class="col-6">
                        <asp:Button id="transactBtn" runat="server" type="button" class="btn btn-dark w-50 h-100 p-3" OnClick="AddTransaction" Text="Confirm Order" CausesValidation="false"/>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-md bg-dark pt-5 text-center" style="opacity:.5"></div>
        <div class="container-md bg-dark pt-5 text-center"></div>
    </form>
</body>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</html>