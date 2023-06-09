<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateProducts.aspx.cs" Inherits="IT114_MP_LOGIC.UpdateProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>UPDATE PRODUCT</title>
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
                <div class="container col-9 m-lg-auto bg-light rounded p-lg-5 my-5">
                    <div class="form-group mx-5 text-center">
                    <asp:Label ID="Label7" runat="server" CssClass="h3" Text="Edit Product Details"></asp:Label>
                </div>
                    <div class="input-group col my-5 mx-4">
                        <asp:TextBox ID="txtSearch" CssClass="form-control" placeholder="Search product name" aria-label="Product name" aria-describedby="basic-addon2" runat="server"></asp:TextBox>
                        <div class="input-group-append">
                            <asp:Button ID="btnSearch" CssClass="btn btn-outline-secondary" runat="server" Text="Search" OnClick="btnSearch_Click" />
                        </div>
                    </div>
                    <div class="row">
                    <!--Left Container-->
                <div class="col my-5 mx-4">                   
                    <div class="container-fluid my-3">
                        <div class="input-group input-group-sm">
                            <div class="input-group-prepend">
                            <span class="input-group-text " id="inputGroup-sizing-sm">
                                <asp:Label ID="Label1" CssClass="font-weight-bold text-sm-left" runat="server" Text="Product Name"></asp:Label></span>
                            </div>
                            <asp:TextBox ID="txtProdName" CssClass="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="container-fluid my-4">
                        <div class="input-group input-group-sm">
                            <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroup-sizing-sm1">
                                <asp:Label ID="Label2" runat="server" CssClass="font-weight-bold text-sm-left" Text="Product Price"></asp:Label></span>
                            </div>
                            <asp:TextBox ID="txtPrice" CssClass="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" runat="server" ></asp:TextBox>
                        </div>
                    </div>
                    <div class="container-fluid my-4">
                        <div class="input-group input-group-sm">
                            <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroup-sizing-sm2">
                                <asp:Label ID="Label3" CssClass="font-weight-bold text-sm-left" runat="server" Text="Description"></asp:Label></span>
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
                <div class="form-group mx-5">
                <asp:Label ID="Label5" runat="server" Text="Status"></asp:Label>
                <asp:DropDownList ID="ddlStatus" CssClass="form-control" runat="server">
                    <asp:ListItem Text="Available" Value="available"></asp:ListItem>
                    <asp:ListItem Text="Not Available" Value="not available"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="container my-5">
                <div class="col-md-12 text-center">
                    <asp:Button ID="btnUpdate" CssClass="btn btn-success" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                    <asp:Button ID="btnBack" CssClass="btn btn-outline-dark" runat="server" Text="Back" OnClick="btnBack_Click"/>
                </div>
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
