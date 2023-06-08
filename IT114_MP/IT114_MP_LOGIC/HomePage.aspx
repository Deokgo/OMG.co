<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="IT114_MP_LOGIC.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HOME PAGE</title>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <style>
        .map-container{
          overflow:hidden;
          padding-bottom:26.25%;
          position:relative;
          height:0;
        }
        .map-container iframe{
          left:0;
          top:0;
          height:100%;
          width:100%;
          position:absolute;
        }
    </style>
</head>
<body style="background-image: url('../images/lofiBG.png'); background-size:contain">
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
                                <a class="nav-link mt-3 mr-3 text-light" style="font-size:15px" href="#aboutUsPage">About Us</a>
                            </li> 
                            <li class="nav-item">
                                <a class="nav-link mt-3 mr-3 text-light" style="font-size:15px" href="#productsPage">Products</a>
                            </li>   
                            <li class="nav-item">
                                <a class="nav-link mt-3 mr-3 text-light" style="font-size:15px" href="#contactUsPage">Contact Us</a>
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
        <div class="container-md bg-light border pt-lg-4 mt-5"> </div>
        <div class="container-md bg-trasnparent pt-lg-4"> </div>

        <!-- Content Page -->
        <div class="row justify-content-md-center mt-5">
            <asp:Label class="text-white shadow" runat="server" style="font-size:130px; font-family:Broadway ;font-weight:bold">OMG <span class="badge badge-pill badge-secondary text">.co</span></asp:Label>  
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
        <div id="aboutUsPage" class="container-md bg-light pt-lg-5" style="opacity:.25; z-index:-1; position:relative"></div>
        <div class="container-md bg-dark text-center pt-4"> 
            <span class="badge badge-pill badge-light text m-5" style="font-size:50px; font-family:Broadway ;font-weight:bold">ABOUT US</span><br/>
            <asp:Image runat="server" class="mb-5" ImageUrl="~/images/coffee-icon.png" Height="150px" Width="150px" alt="coffee icon"></asp:Image><br/>
            <asp:Label class="text-white" runat="server" style="font-size:17px; font-family:'Century Gothic'">
                Born and brewed in Southern California since 2023, The OMG.co has always <br/>
                been passionate about connecting loyal customers with carefully handcrafted products. <br/><br/>

                Our coffee master, Mr. OMG, only selects the top 1% of Arabica beans from the world’s <br/>
                best growing regions. When our tea master Mr. OMG became the Tea Ambassador of Sri Lanka, <br/>
                we figured we were doing something right. Our CBTL single serve beverage system combines the <br/>
                handcrafted taste and quality that is the hallmark of OMG.co with the finest Italian technology and design. <br/>
            </asp:Label>
        </div>
        <div id="productsPage" class="container-md bg-dark pt-lg-5"></div>
        <div class="container-md bg-light text-center p-5" style="z-index:-1; position:relative"> 
            <span class="badge badge-pill badge-dark text" style="font-size:50px; font-family:Broadway ;font-weight:bold">Our Products</span><br/>
            <div id="carouselProducts" class="carousel slide mx-auto" data-ride="carousel">
                <div class="carousel-item active position-sticky">
                     <asp:Image ID="imgView1" runat="server" class="w-50 mt-5" alt="product" Height="320px"></asp:Image> <br />
                     <asp:Label ID="prodName1"  class="text-dark mt-5" runat="server" style="font-size:40px; font-family:Broadway"></asp:Label> <br />
                     <asp:Label ID="prodPrice1"  class="text-secondary mb-5" runat="server" style="font-size:20px; font-family:'Century Gothic'"></asp:Label>
                </div>
                <div class="carousel-item">
                    <asp:Image ID="imgView2" runat="server" class="w-50 mt-5" alt="product" Height="320px"></asp:Image> <br />
                    <asp:Label ID="prodName2"  class="text-dark mt-5" runat="server" style="font-size:40px; font-family:Broadway"></asp:Label>  <br />
                    <asp:Label ID="prodPrice2"  class="text-secondary mb-5" runat="server" style="font-size:20px; font-family:'Century Gothic'"></asp:Label>
                </div>  
                <div class="carousel-item">
                    <asp:Image ID="imgView3" runat="server" class="w-50 mt-5" alt="product" Height="320px"></asp:Image> <br />
                    <asp:Label ID="prodName3"  class="text-dark mt-5" runat="server" style="font-size:40px; font-family:Broadway"></asp:Label>  <br />
                    <asp:Label ID="prodPrice3"  class="text-secondary mb-5" runat="server" style="font-size:20px; font-family:'Century Gothic'"></asp:Label>
                </div>
            </div>
        </div>
        <div id="contactUsPage" class="container-md bg-light pt-5 text-center" style="opacity:.25;z-index:-1; position:relative"></div>
        <div class="container-md bg-dark pt-3"></div>
        <div class="container-md bg-dark text-center"> 
            <span class="badge badge-pill badge-light text m-5" style="font-size:50px; font-family:Broadway ;font-weight:bold">Contact Us</span><br/>
            <asp:Label class="text-white " runat="server" style="font-size:20px; font-family:'Century Gothic'">
                <i class="fa-solid fa-phone fa-xl mr-3" style="color: #ffffff;"></i>
                63+ 915642003
            </asp:Label><br />
            <div class="container-md bg-trasnparent pt-lg-4"> </div>
            <asp:Label class="text-white" runat="server" style="font-size:20px; font-family:'Century Gothic'">
                <i class="fa-solid fa-envelope fa-xl mr-3" style="color: #ffffff;"></i>
                omg.co@gmail.com
            </asp:Label><br />
            <div class="container-md bg-trasnparent pt-lg-4"> </div>
            <asp:Label class="text-white" runat="server" style="font-size:20px; font-family:'Century Gothic'">
                <i class="fa-solid fa-compass fa-xl mr-3" style="color: #ffffff;"></i>
                Makati, Philippines
            </asp:Label>
            <div class="container-md bg-dark pt-5"></div>
            <div id="map-container-google-1" class="z-depth-1-half map-container" style="z-index:0">
                <iframe src="https://maps.google.com/maps?width=700&amp;height=400&amp;hl=en&amp;q=Makati,Philippines&amp;t=&amp;z=16&amp;ie=UTF8&amp;iwloc=B&amp;output=embed" frameborder="0"
                    style="border:0"></iframe>
            </div>
            <div class="container-md bg-dark pt-5"></div>
        </div>
        <div class="container-md bg-dark pt-5"></div>
    </form>
</body>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</html>
