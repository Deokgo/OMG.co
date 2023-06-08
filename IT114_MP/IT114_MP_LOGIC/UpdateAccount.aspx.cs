using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT114_MP_LOGIC
{
    public partial class UpdateAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Session["role"] as string) || string.IsNullOrEmpty(Session["uname"] as string))
            {
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                admin_name.Text = "Hi, " + Session["uname"] + "!";
            }
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            txtUname.Enabled = false;
        }

        protected void btnUpdateAcc_Click(object sender, EventArgs e)
        {
            string username = txtSearch.Text;
            string fname = txtFname.Text;
            string lname = txtLname.Text;
            string acc_state = ddlAccStat.SelectedValue;
            string email = txtEmail.Text;

            DatabaseClass db = new DatabaseClass();
            MySqlDataReader reader = db.getRec("SELECT * FROM acc_info_tbl where uname='" + username + "';");

            if (reader.HasRows)
            {
                int returnX1 = db.insDelUp("UPDATE user_info_tbl SET fname='" + fname + "', lname='" + lname + "' WHERE uname='" + username + "';");
                int returnX2 = db.insDelUp("UPDATE acc_info_tbl SET acc_state='" + acc_state + "', email='" + email + "' WHERE uname='" + username + "';");

                if ((returnX1 > 0) && (returnX2 > 0))
                {

                    Response.Write("<script>alert('Account updated successfully!')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Try Again.')</script>");

                }
            }
            db.connectionclose();
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPage.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if(txtSearch.Text == "")
            {
                Response.Write("<script>alert('Search field is required. Please put something.')</script>");
            }
            else
            {
                DatabaseClass db = new DatabaseClass();
                MySqlDataReader reader1 = db.getRec("SELECT * FROM user_info_tbl where uname='" + txtSearch.Text.Trim() + "';");
                MySqlDataReader reader2 = db.getRec("SELECT * FROM acc_info_tbl where uname='" + txtSearch.Text.Trim() + "' AND role <> 'admin';");



                if (reader2.HasRows)
                {
                    reader2.Read();
                    txtUname.Text = reader2["uname"].ToString();
                    txtEmail.Text = reader2["email"].ToString();
                    ddlAccStat.SelectedValue = reader2["acc_state"].ToString();

                    if (reader1.HasRows)
                    {
                        reader1.Read();
                        txtFname.Text = reader1["fname"].ToString();
                        txtLname.Text = reader1["lname"].ToString();
                    }
                }
                else
                {
                    Response.Write("<script>alert('Account not found.')</script>");
                }

                db.connectionclose();
            }
        }
    }
}