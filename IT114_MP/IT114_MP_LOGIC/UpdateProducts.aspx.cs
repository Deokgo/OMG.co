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
            if (string.IsNullOrEmpty(Session["role"] as string) || string.IsNullOrEmpty(Session["uname"] as string))
            {
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                admin_name.Text = "Hi, " + Session["uname"] + "!";
            }

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
                MySqlDataReader reader = search.getRec("SELECT * FROM prod_info_tbl where prod_name='" + prodName + "';");

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
                else
                {
                    txtSearch.Text = "";
                    txtProdName.Text = "";
                    txtPrice.Text = "";
                    imgProd.ImageUrl = "~/images/default.jpg";
                    txtDesc.Text = "";
                    ddlStatus.SelectedValue = "available";
                    Response.Write("<script>alert('Product not found.')</script>");
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
            DatabaseClass db = new DatabaseClass();

            if (vd.IsNameAndPriceNull(txtProdName.Text, txtPrice.Text))
            {
                Response.Write("<script>alert('Product Name and Price is a required field!')</script>");
            }
            else
            {
                try
                {
                    if(txtSearch.Text.ToLower() == txtProdName.Text.ToLower())
                    {
                        double price = Convert.ToDouble(txtPrice.Text);
                        UpdateProd(price, vd, db);
                    }
                    else
                    {
                        MySqlDataReader reader1 = db.getRec("SELECT * FROM prod_info_tbl where prod_name='" + txtProdName.Text.Trim() + "';");

                        if (reader1.HasRows)
                        {
                            Response.Write("<script>alert('Product cannot be updated.')</script>");

                        }
                        else
                        {
                            double price = Convert.ToDouble(txtPrice.Text);
                            UpdateProd(price, vd, db);
                        }
                        db.connectionclose();
                    }        
                }
                catch
                {
                    Response.Write("<script>alert('Product price should be numeric.')</script>");
                }
            }              
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPage.aspx");
        }

        protected void UpdateProd(double price, Validation vd, DatabaseClass db)
        {
            if (price <= 0)
            {
                Response.Write("<script>alert('Invalid price.')</script>");
            }
            else
            {
                string sql = vd.GetSQLUpdate(txtSearch.Text, txtProdName.Text, txtPrice.Text, imgProd.ImageUrl,
                    txtDesc.Text, ddlStatus.SelectedValue);

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
        }
    }
}