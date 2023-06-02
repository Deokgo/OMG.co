using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT114_MP_LOGIC
{
    public partial class EditMyAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {

                ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
                lblRole.Text = Session["role"].ToString(); // test if the role is being passed
                lblUname.Text = Session["uname"].ToString(); // test if the uname is being passed
                txtUname.Enabled = false;

                DatabaseClass db = new DatabaseClass();
                MySqlDataReader reader1 = db.getRec("SELECT * FROM user_info_tbl where uname='" + lblUname.Text + "';");
                MySqlDataReader reader2 = db.getRec("SELECT * FROM acc_info_tbl where uname='" + lblUname.Text + "';");

                if (reader1.HasRows)
                {
                    reader1.Read();
                    txtFname.Text = reader1["fname"].ToString();
                    txtLname.Text = reader1["lname"].ToString();
                }

                if (reader2.HasRows)
                {
                    reader2.Read();
                    txtUname.Text = reader2["uname"].ToString();
                    txtEmail.Text = reader2["email"].ToString();
                    ddlAccStat.SelectedValue = reader2["acc_state"].ToString();
                }

                db.connectionclose();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string username = txtUname.Text;
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

            if(acc_state == "disabled")
            {
                Session.Contents.RemoveAll();
                Response.Redirect("MessageAccDisabled.aspx");
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect(Session["page"].ToString());
        }
    }
}