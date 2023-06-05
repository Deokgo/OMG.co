using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT114_MP_LOGIC
{
    public partial class AddProducts : System.Web.UI.Page
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

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPage.aspx");
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Validation vd = new Validation();

            if(vd.IsNameAndPriceNull(txtProdName.Text, txtPrice.Text))
            {
                Response.Write("<script>alert('Product Name and Price is a required field!')</script>");
            }
            else
            {
                try
                {
                    DatabaseClass db = new DatabaseClass();
                    MySqlDataReader reader1 = db.getRec("SELECT * FROM prod_info_tbl where prod_name='" + txtProdName.Text.Trim() + "';");

                    if (reader1.HasRows)
                    {
                        Response.Write("<script>alert('Product cannot be added.')</script>");
                    }
                    else
                    {
                        double price = Convert.ToDouble(txtPrice.Text);

                        if (price <= 0)
                        {
                            Response.Write("<script>alert('Invalid price.')</script>");
                        }
                        else
                        {
                            Random r = new Random();
                            var x = r.Next(0, 1000000);
                            string prod_id = x.ToString("00000");
                            string prod_status = "available";


                            MySqlDataReader reader2 = db.getRec("SELECT * FROM prod_info_tbl where prod_id='" + prod_id + "';");

                            while (reader2.HasRows)
                            {
                                r = new Random();
                                x = r.Next(0, 1000000);
                                prod_id = x.ToString("000000");

                                db = new DatabaseClass();
                                reader2 = db.getRec("SELECT * FROM prod_info_tbl where prod_id='" + prod_id + "';");
                            }

                            string sql = vd.GetSQLInsertStatement(prod_id, txtProdName.Text, txtPrice.Text, imgProd.ImageUrl,
                                txtDesc.Text, prod_status);

                            int returnX = db.insDelUp(sql);

                            if (returnX > 0)
                            {
                                txtProdName.Text = "";
                                txtPrice.Text = "";
                                imgProd.ImageUrl = "~/images/default.jpg";
                                txtDesc.Text = "";
                                Response.Write("<script>alert('Product Added Successfully!')</script>");
                            }
                            else
                            {
                                Response.Write("<script>alert('Try Again.')</script>");

                            }
                        }
                    }      
                }
                catch
                {
                    Response.Write("<script>alert('Product price should be numeric.')</script>");
                }
            }
        }
    }
}