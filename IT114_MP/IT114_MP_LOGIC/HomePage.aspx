<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="IT114_MP_LOGIC.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HOME PAGE</title>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body style="background-image: url('../images/LandingPageBG.jpg'); background-size:contain">
    <form class="justify-content-center" runat="server"> 
        <!-- Navigation Bar-->
        <div class="container-md">
            <div class="row bg-dark">
                <div class="col-8">
                    <nav class="navbar navbar-expand-sm bg-dark navbar-light">
                        <ul class="navbar-nav">
                            <li class="nav-item active">
                                <a class="nav-link text-light mr-lg-1" style="font-size:xx-large; font-family:Broadway" href="HomePage.aspx">OMG <span class="badge badge-pill badge-secondary">.co</span></a>
                            </li>
                            <asp:Label runat="server" class="text-dark mt-4" style="font-size:20px" href="#">||||</asp:Label>
                            <li class="nav-item">
                                <a class="nav-link mt-3 mr-3 text-light" style="font-size:15px" href="#aboutUsPage">About Us</a>
                            </li> 
                            <li class="nav-item">
                                <a class="nav-link mt-3 mr-3 text-light" style="font-size:15px" href="#productsPage">Products</a>
                            </li>   
                            <li class="nav-item">
                                <a class="nav-link mt-3 mr-3 text-light" style="font-size:15px" href="#contactUsPage">Contact Us</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link mt-3 mr-3 text-light" style="font-size:15px" href="Login.aspx">Login</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link mt-3 text-light" style="font-size:15px" href="Register.aspx">Sign Up</a>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class="col">
                    <div class="input-group-md mt-4 mr-3">
                        <div class="input-group">
                            <asp:Textbox runat="server" class="form-control" type="search" placeholder="Search" aria-label="Search"></asp:Textbox>
                                <div class="input-group-append">
                                    <asp:Button runat="server" class="btn btn-secondary my-2 my-sm-0" type="submit" Text="Search"></asp:Button>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-md bg-light border"> </div>
        <div class="container-md bg-trasnparent pt-lg-4"> </div>

        <!-- Content Page -->
        <div class="row justify-content-md-center mt-5">
            <asp:Label class="text-white" runat="server" style="font-size:130px; font-family:Broadway ;font-weight:bold">OMG <span class="badge badge-pill badge-secondary text">.co</span></asp:Label>  
        </div>
        <div class="row justify-content-center mt-5">
            <asp:Button id="Direct" runat="server" type="button" class="btn btn-outline-light" OnClick="Login_Click" Text="Login" width="150px" height="50px"/>
            <asp:Button id="Button1" runat="server" type="button" class="btn btn-dark ml-5" OnClick="Register_Click" Text="Sign Up" width="150px" height="50px"/>
        </div>
        <div class="row text-center justify-content-center mb-lg-3">
            <asp:Label class="text-light m-5" runat="server" style="font-size:20px; font-family:'Century Gothic'">
                Oh my, oh my God 예상했어 나 I was really hoping that he will come through <br/>
                Oh my, oh my God 단 너뿐이야 Asking all the time about what I do
            </asp:Label>  
        </div>
        <div id="aboutUsPage" class="container-md bg-secondary pt-5 text-center" style="opacity:.75"></div>
        <div class="container-md bg-dark text-center"> 
            <span class="badge badge-pill badge-light text m-5" style="font-size:50px; font-family:Broadway ;font-weight:bold">ABOUT US</span><br/>
            <asp:Label class="text-white" runat="server" style="font-size:17px; font-family:'Century Gothic'">
                OMG.co Shop is an innovative and vibrant online retail destination that caters to individuals <br/>
                seeking unique and trend-setting products. With an emphasis on curating a diverse selection of <br/>
                items, OMG.co offers an exciting shopping experience for customers who appreciate quality, <br/>
                style, and a touch of whimsy. <br/><br/>
                What sets OMG.co Shop apart is its commitment to showcasing emerging brands and designers, <br/>
                as well as offering a platform for independent creators to present their unique creations <br/>
                to a global audience. By championing originality and craftsmanship, OMG.co fosters a sense <br/>
                of discovery and supports a community of talented artisans, designers, and entrepreneurs. <br/> <br/>
                When it comes to customer experience, OMG.co Shop goes above and beyond to ensure satisfaction. <br/>
                With secure and streamlined checkout processes, reliable shipping options, and responsive customer <br/>
                support, they prioritize delivering a seamless shopping journey from start to finish.
            </asp:Label>
            <div class="container-md bg-dark pt-5"></div>
        </div>
        <div id="productsPage" class="container-md bg-secondary pt-5 text-center" style="opacity:.50"></div>
        <div id="carouselProducts" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <asp:Image runat="server" class="d-block w-100" src="../images/LandingPageBG2.jpg" alt="First slide"></asp:Image>
                </div>
                <div class="carousel-item">
                    <asp:Image runat="server" class="d-block w-100" src="../images/LandingPageBG3.jpg" alt="Second slide"></asp:Image>
                </div>
                <div class="carousel-item">
                    <asp:Image runat="server" class="d-block w-100" src="../images/LandingPageBG.jpg" alt="Third slide"></asp:Image>
                </div>
            </div>
        </div>
        <div id="contactUsPage" class="container-md bg-secondary pt-5 text-center" style="opacity:.50"></div>
    </form>
</body>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</html>
