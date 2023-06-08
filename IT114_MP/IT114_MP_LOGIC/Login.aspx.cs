using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT114_MP_LOGIC
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if(txtUname.Text == "" || txtPword.Text == "")
            {
                Response.Write("<script>alert('Username and password field are required.')</script>");
            }
            else
            {
                DatabaseClass db = new DatabaseClass();
                MySqlDataReader reader = db.getRec("SELECT * FROM acc_info_tbl where uname='" + txtUname.Text + "' AND pword=MD5('" + txtPword.Text + "') AND acc_state='enabled';");

                if (reader.HasRows)
                {
                    reader.Read();
                    string role = reader["role"].ToString();
                    string uname = reader["uname"].ToString();

                    Session["role"] = role;
                    Session["uname"] = uname;

                    if (role == "admin")
                    {
                        Response.Redirect("AdminPage.aspx");
                    }
                    else if (role == "customer")
                    {
                        MySqlDataReader prodReader = db.getRec("SELECT * FROM prod_info_tbl;");
                        if (prodReader.HasRows)
                        {
                            Response.Redirect("TransactionPage.aspx");
                        }
                        else
                        {
                            Response.Write("<script>alert('No products yet.')</script>");
                        }
                    }
                    else
                    {
                        Response.Redirect("ReportPage.aspx");
                    }
                }
                else
                {
                    txtPword.Text = "";
                    Response.Write("<script>alert('Either your account does not exist or your username/password is wrong.')</script>");
                }
                db.connectionclose();
            }
        }
        protected void Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}