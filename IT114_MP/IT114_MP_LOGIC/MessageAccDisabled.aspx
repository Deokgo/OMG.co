<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MessageAccDisabled.aspx.cs" Inherits="IT114_MP_LOGIC.MessageAccDisabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NOTICE</title>
<link href="css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="d-flex justify-content-center text-center my-xl-5">
           <div class="my-xl-5">
               <div>
                 <asp:Image ID="Image1" ImageUrl="~/images/image404.png" Height="200px" runat="server" />
             </div>
             <div>
                 <asp:Label ID="Label1" CssClass="font-weight-bold h4" runat="server" Text="Your account has been disabled. "></asp:Label>
             </div>
             <div>
                 <asp:Label ID="Label2" runat="server" Text="Contact the system administrator to enable your account."></asp:Label>
             </div>
            <asp:Button ID="btnOk" CssClass="btn btn-danger btn-md my-xl-5" runat="server" Text="Okay" OnClick="btnOk_Click" />
           </div>
        </div>
    </form>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
