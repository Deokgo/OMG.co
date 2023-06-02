using System;
using MySql.Data.MySqlClient;

namespace IT114_MP_LOGIC
{
    public partial class HomePage : System.Web.UI.Page
    {
        MySqlDataReader rdr;
        string[] products;
        string[] prices;
        int prod1, prod2, prod3;
        protected void Page_Load(object sender, EventArgs e)
        {
            DatabaseClass db = new DatabaseClass();
            Random rnd = new Random();
            rdr = db.getRec("Select * from prod_info_tbl where prod_status='available';");
            products = new string[(rdr.FieldCount) - 1];
            prices = new string[(rdr.FieldCount) - 1];
            for (int i = 0; i < (rdr.FieldCount) - 1; i++)
            {
                rdr.Read();
                string product = rdr["prod_name"].ToString();
                string price = rdr["prod_price"].ToString();
                products[i] = product;
                prices[i] = price;
            }
            prod1 = rnd.Next(products.Length);
            prod2 = rnd.Next(products.Length);
            prod3 = rnd.Next(products.Length);

            if (prod1 == prod2)
            { prod2 = rnd.Next(products.Length); }
            if (prod1 == prod3 || prod2 == prod3)
            { prod3 = rnd.Next(products.Length); }

            imgView1.ImageUrl = "~/images/" + products[prod1].ToString() + ".png";
            prodName1.Text = products[prod1].ToString();
            prodPrice1.Text = Convert.ToInt32(prices[prod1]).ToString("N");
            imgView2.ImageUrl = "~/images/" + products[prod2].ToString() + ".png";
            prodName2.Text = products[prod2].ToString();
            prodPrice2.Text = Convert.ToInt32(prices[prod2]).ToString("N");
            imgView3.ImageUrl = "~/images/" + products[prod3].ToString() + ".png";
            prodName3.Text = products[prod3].ToString();
            prodPrice3.Text = Convert.ToInt32(prices[prod3]).ToString("N");
        }
        protected void Login_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}