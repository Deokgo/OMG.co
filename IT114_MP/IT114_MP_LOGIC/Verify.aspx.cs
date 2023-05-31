using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT114_MP_LOGIC
{
    public partial class Verify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtUname.Text = Session["uname"].ToString();
            txtUname.Enabled = false;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            DatabaseClass db = new DatabaseClass();
            MySqlDataReader reader = db.getRec("SELECT * FROM acc_info_tbl where uname='" + txtUname.Text + "' AND pword=MD5('" + txtPword.Text + "');");

            if (reader.HasRows)
            {
                reader.Read();
                string role = reader["role"].ToString();
                string uname = reader["uname"].ToString();

                Session["role"] = role;
                Session["uname"] = uname;
                Response.Redirect("EditMyAccount.aspx");
            }
            else
            {
                Response.Write("<script>alert('Password Incorrect.')</script>");
            }
            db.connectionclose();
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPage.aspx");
        }
    }
}