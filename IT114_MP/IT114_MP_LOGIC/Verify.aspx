<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Verify.aspx.cs" Inherits="IT114_MP_LOGIC.Verify" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>VERIFY</title>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
       <div class="container-fluid col-4 m-xl-auto p-xl-5">
            <div class="card">
              <div class="card-header bg-danger text-light font-weight-bold">
                  <asp:Label ID="Label1" runat="server" Text="Verify Account!"></asp:Label>
              </div>
              <div class="card-body">
                <div class="form-group">
                    <asp:Label ID="Label2" CssClass="font-weight-bold" runat="server" Text="Username:"></asp:Label>
                    <asp:TextBox ID="txtUname" class="form-control"  runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label3" CssClass="font-weight-bold" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="txtPword" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                </div>
                <div class="col-md-12 text-center">
                    <asp:Button ID="btnSubmit" CssClass="btn btn-outline-danger px-3" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                    <asp:Button ID="btnBack" CssClass="btn btn-outline-dark px-3" runat="server" Text="Back" OnClick="btnBack_Click" />
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
