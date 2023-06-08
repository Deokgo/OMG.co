<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PerformanceReport.aspx.cs" Inherits="IT114_MP_LOGIC.PerformanceReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PRODUCTS REPORT</title>
    <link href="css/bootstrap.min.css" rel="stylesheet"/> 
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container-fluid text-center p-xl-5 mb-5">
                <div class="form-group mx-5 mt-5 text-center">
                    <asp:Label ID="Label1" runat="server" class="h1 text-center font-weight-bold m-lg-5 p-lg-5 text-primary" Text="Products Report"></asp:Label>
                </div>            
                <div class="container m-lg-auto bg-light p-lg-5 my-5">
                    <div class="form-group mx-5 text-center">
                        <asp:Label ID="Label4" runat="server" class="h3" Text="Best Product Sold"></asp:Label>
                    </div>
                    <asp:Table ID="MyTableBest" class="table table-hover m-lg-3 text-center" runat="server"></asp:Table>
                    <asp:Label ID="NoDataBest" runat="server" class="h3 text-center font-weight-bold m-lg-5 p-lg-5 text-secondary"></asp:Label>
                </div>
                <div class="container m-lg-auto bg-light p-lg-5 my-5">
                    <div class="form-group mx-5 text-center">
                        <asp:Label ID="Label2" runat="server" class="h3" Text="Least Product Sold"></asp:Label>
                    </div>
                    <asp:Table ID="MyTableLeast" class="table table-hover m-lg-3 text-center" runat="server"></asp:Table>
                    <asp:Label ID="NoDataLeast" runat="server" class="h3 text-center font-weight-bold m-lg-5 p-lg-5 text-secondary"></asp:Label>
                </div>
                <div class="container m-lg-auto bg-light p-lg-5 my-5">
                    <div class="form-group mx-5 text-center">
                        <asp:Label ID="Label3" runat="server" class="h3" Text="Top 3 Sold Products"></asp:Label>
                    </div>
                    <asp:Table ID="MyTable" class="table table-hover m-lg-3 text-center" runat="server"></asp:Table>
                    <asp:Label ID="NoDataSold" runat="server" class="h3 text-center font-weight-bold m-lg-5 p-lg-5 text-secondary"></asp:Label>
                </div>
                <div class="col-md-12 text-center mb-5">
                    <asp:Button ID="btn" CssClass="btn btn-outline-dark px-3"  runat="server" Text="Back" OnClick="btn_Click" />
                </div>
            </div>
        </div>
    </form>
</body>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</html>
