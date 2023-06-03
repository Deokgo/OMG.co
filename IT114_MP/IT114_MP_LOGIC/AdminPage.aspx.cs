using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT114_MP_LOGIC
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblRole.Text = Session["role"].ToString(); // displays the role of the user that is currently login
            lblUname.Text = Session["uname"].ToString(); // displays the username of the user that is currently login
        }
        protected void btnEditMyAcc_Click(object sender, EventArgs e)
        {
            Session["role"] = lblRole.Text;
            Session["uname"] = lblUname.Text;
            Session["page"] = "AdminPage.aspx";
            Response.Redirect("Verify.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Contents.RemoveAll();
            Response.Redirect("Login.aspx");
        }
    }
}