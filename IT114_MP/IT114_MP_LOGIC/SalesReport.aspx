<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SalesReport.aspx.cs" Inherits="IT114_MP_LOGIC.SalesReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SALES REPORT</title>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%--<div id="daily-sales-container">
                <asp:Label runat="server" ID="dailyLbl">Daily Sales</asp:Label><br />
                <asp:Label runat="server" ID="dateLbl"></asp:Label><br />
                <asp:Label runat="server" ID="dailySales" Text="0"></asp:Label>
            </div>
            <div id="monthly-sales-container">
                <asp:Label runat="server" ID="monthlyLbl">Monthly Sales</asp:Label><br />
                <asp:Label runat="server" ID="monthLbl"></asp:Label><br />
                <asp:Label runat="server" ID="monthlySales">0</asp:Label>
            </div>
            <div id="overall-sales-container">
                <asp:Label runat="server" ID="overallLbl">Overall Sales</asp:Label><br />
                <asp:Label runat="server" ID="overallSales">0</asp:Label>
            </div>--%>
        <div class="container-fluid m-xl-5 p-xl-5">
            <div class="form-group mx-5 text-center">
                <asp:Label ID="Label1" runat="server" CssClass="h1 text-center font-weight-bold m-lg-5 p-lg-5 text-primary" Text="Sales Report"></asp:Label>
            </div>            
            <div class="container col-8 m-lg-auto bg-light p-lg-5 my-5">
            <div class="form-group mx-5 text-center">
                <asp:Label ID="Label4" runat="server" CssClass="h3" Text="Daily Sales"></asp:Label>
            </div>
            <div class="form-group mx-5">
                <div class="form-group mx-5">
                     <asp:Table ID="MyTableDaily" CssClass="table table-hover m-lg-3" runat="server"></asp:Table>
                </div>
            </div>
            </div>
            <div class="container col-8 m-lg-auto bg-light p-lg-5 my-5">
                <div class="form-group mx-5 text-center">
                    <asp:Label ID="Label7" runat="server" CssClass="h3" Text="Monthly Sales"></asp:Label>
                </div>
                <div class="form-group mx-5">
                    <asp:Label ID="Label11" runat="server" Text="Choose Month"></asp:Label>
                    <asp:DropDownList ID="ddlMonths" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlMonths_SelectedIndexChanged">
                        <asp:ListItem Text="January" Value="1"></asp:ListItem>
                        <asp:ListItem Text="February" Value="2"></asp:ListItem>
                        <asp:ListItem Text="March" Value="3"></asp:ListItem>
                        <asp:ListItem Text="April" Value="4"></asp:ListItem>
                        <asp:ListItem Text="May" Value="5"></asp:ListItem>
                        <asp:ListItem Text="June" Value="6"></asp:ListItem>
                        <asp:ListItem Text="July" Value="7"></asp:ListItem>
                        <asp:ListItem Text="August" Value="8"></asp:ListItem>
                        <asp:ListItem Text="September" Value="9"></asp:ListItem>
                        <asp:ListItem Text="October" Value="10"></asp:ListItem>
                        <asp:ListItem Text="November" Value="11"></asp:ListItem>
                        <asp:ListItem Text="December" Value="12"></asp:ListItem>
                    </asp:DropDownList>
                    <div class="form-group mx-5">
                        <asp:Table ID="MyTableMonthly" CssClass="table table-hover m-lg-3" runat="server"></asp:Table>
                    </div>
                </div>
                </div>
            
                <div class="container col-8 m-lg-auto bg-light p-lg-5 my-5">
                    <div class="form-group mx-5 text-center">
                        <asp:Label ID="Label5" runat="server" CssClass="h3" Text="Yearly Sales"></asp:Label>
                    </div>
                    <div class="form-group mx-5">
                        <div class="form-group mx-5">
                            <asp:Table ID="MyTableOverall"  CssClass="table table-hover m-lg-3"  runat="server"></asp:Table>
                        </div>
                    </div>
                    </div>
                     <div class="container my-5">
                <div class="col-md-12 text-center">
                    <asp:Button ID="btn" CssClass="btn btn-outline-dark px-3"  runat="server" Text="Back" OnClick="btn_Click" />
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