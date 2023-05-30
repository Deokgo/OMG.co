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
            TextBox1.Text = Session["role"].ToString(); // test if the role is being passed
            TextBox2.Text = Session["uname"].ToString(); // test if the uname is being passed
        }

        protected void btnAddProd_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddProducts.aspx");
        }
    }
}