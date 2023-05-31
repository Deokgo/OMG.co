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
            lblRole.Text = Session["role"].ToString(); // test if the role is being passed
            lblUname.Text = Session["uname"].ToString(); // test if the uname is being passed
        }

        protected void btnAddProd_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddProducts.aspx");
        }

        protected void btnUpdatedProd_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateProducts.aspx");
        }

        protected void btnEditMyAcc_Click(object sender, EventArgs e)
        {
            Session["role"] = lblRole.Text;
            Session["uname"] = lblUname.Text;
            Response.Redirect("Verify.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Contents.RemoveAll();
            Response.Redirect("Login.aspx");
        }

        protected void btnView_Click(object sender, EventArgs e)
        {

        }
    }
}