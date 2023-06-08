using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT114_MP_LOGIC
{
    public partial class AddAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (string.IsNullOrEmpty(Session["role"] as string) || string.IsNullOrEmpty(Session["uname"] as string))
            {
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                admin_name.Text = "Hi, " + Session["uname"] + "!";
            }
        }

        protected void btnAddUser_Click(object sender, EventArgs e)
        {
            if (txtPword.Text == txtConfirmPword.Text)
            {
                string username = txtUname.Text;


                DatabaseClass db = new DatabaseClass();
                MySqlDataReader reader = db.getRec("SELECT * FROM acc_info_tbl where uname='" + username + "';");

                if (reader.HasRows)
                {
                    Response.Write("<script>alert('Account cannot be created.')</script>");
                }
                else
                {
                    string fname = txtFname.Text;
                    string lname = txtLname.Text;
                    string pword = txtPword.Text;
                    string role = ddlRole.SelectedValue;
                    string acc_state = "enabled";
                    string email = txtEmail.Text;

                    int returnX1 = db.insDelUp("INSERT INTO user_info_tbl(uname, fname, lname) VALUES('" +
                        username + "','" + fname + "','" + lname + "');");

                    int returnX2 = db.insDelUp("INSERT INTO acc_info_tbl(uname, pword, role, acc_state, email) VALUES('" +
                        username + "', MD5('" + pword + "'),'" + role + "','" + acc_state + "','" + email + "');");

                    if ((returnX1 > 0) && (returnX2 > 0))
                    {
                        txtFname.Text = "";
                        txtLname.Text = "";
                        txtUname.Text = "";
                        txtPword.Text = "";
                        txtConfirmPword.Text = "";
                        txtEmail.Text = "";
                        ddlRole.SelectedValue = "";

                        Response.Write("<script>alert('Account created successfully!')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Try Again.')</script>");

                    }
                }
                db.connectionclose();
            }
            else
            {
                Response.Write("<script>alert('Password does not match!')</script>");
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPage.aspx");
        }
    }
}