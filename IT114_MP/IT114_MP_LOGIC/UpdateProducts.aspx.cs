using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT114_MP_LOGIC
{
    public partial class UpdateProducts : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                imgProd.ImageUrl = "~/images/default.jpg"; // Default Picture
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if(txtSearch.Text == "")
            {
                Response.Write("<script>alert('Search field is required. Please put something.')</script>");
            }
            else
            {
                Validation vd = new Validation();
                TextInfo textInfo = new CultureInfo("en-US", false).TextInfo;
                string prodName = textInfo.ToTitleCase(txtSearch.Text.Trim());

                DatabaseClass search = new DatabaseClass();
                MySqlDataReader reader = search.getRec("SELECT * FROM prod_info_tbl where prod_name='" + prodName + "' OR prod_id='" + txtSearch.Text + "';");

                if (reader.HasRows)
                {
                    reader.Read();
                    txtProdName.Text = reader["prod_name"].ToString();
                    txtPrice.Text = reader["prod_price"].ToString();
                    imgProd.ImageUrl = reader["prod_photo"].ToString();

                    if (!(vd.CheckIfNullDesc(reader["description"])))
                    {
                        txtDesc.Text = reader["description"].ToString();
                    }
                    else
                    {
                        txtDesc.Text = "";
                    }

                    ddlStatus.SelectedValue = reader["prod_status"].ToString();
                }
                search.connectionclose();
            }
        }

        protected void btnUploadPic_Click(object sender, EventArgs e)
        {
            string mapPath = Server.MapPath("~/images/");
            if (fuPicture.HasFile)
            {
                fuPicture.SaveAs(mapPath + Path.GetFileName(fuPicture.FileName));
                imgProd.ImageUrl = "~/images/" + Path.GetFileName(fuPicture.FileName);
            }
            else
            {
                imgProd.ImageUrl = "~/images/default.jpg";
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Validation vd = new Validation();
            string sql = vd.GetSQLUpdate(txtSearch.Text, txtProdName.Text, txtPrice.Text, imgProd.ImageUrl,
                txtDesc.Text, ddlStatus.SelectedValue);

            DatabaseClass db = new DatabaseClass();
            int returnX = db.insDelUp(sql);

            if (returnX > 0)
            {
                txtSearch.Text = "";
                txtProdName.Text = "";
                txtPrice.Text = "";
                imgProd.ImageUrl = "~/images/default.jpg";
                txtDesc.Text = "";
                ddlStatus.SelectedValue = "available";
                Response.Write("<script>alert('Product Updated Successfully!')</script>");
            }
            else
            {
                Response.Write("<script>alert('Try Again.')</script>");

            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPage.aspx");
        }
    }
}