using System;
using MySql.Data.MySqlClient;

namespace IT114_MP_LOGIC
{
    public partial class HomePage : System.Web.UI.Page
    {
        MySqlDataReader rdr;
        string[] products;
        string[] images;
        string[] prices;
        int prod1, prod2, prod3;
        protected void Page_Load(object sender, EventArgs e)
        {
            DatabaseClass db = new DatabaseClass();
            Random rnd = new Random();
            rdr = db.getRec("Select * from prod_info_tbl where prod_status='available';");

            products = new string[(rdr.FieldCount) - 1];
            images = new string[(rdr.FieldCount) - 1];
            prices = new string[(rdr.FieldCount) - 1];

            for (int i = 0; i < (rdr.FieldCount) - 1; i++)
            {
                rdr.Read();
                products[i] = rdr["prod_name"].ToString();
                prices[i] = rdr["prod_price"].ToString();
                images[i] = rdr["prod_photo"].ToString();
            }
            prod1 = rnd.Next(products.Length);
            prod2 = rnd.Next(products.Length);
            prod3 = rnd.Next(products.Length);

            if (prod1 == prod2)
            { prod2 = rnd.Next(products.Length); }
            if (prod2 == prod3)
            { prod3 = rnd.Next(products.Length); }
            if (prod1 == prod3)
            { prod1 = rnd.Next(products.Length); }

            imgView1.ImageUrl = images[prod1].ToString();
            prodName1.Text = products[prod1].ToString();
            prodPrice1.Text = string.Format("Only for {0:0.##}", prices[prod1].ToString()+" pesos!");
            imgView2.ImageUrl = images[prod2].ToString();
            prodName2.Text = products[prod2].ToString();
            prodPrice2.Text = string.Format("Only for {0:0.##}", prices[prod2].ToString()+" pesos!");
            imgView3.ImageUrl = images[prod3].ToString();
            prodName3.Text = products[prod3].ToString();
            prodPrice3.Text = string.Format("Only for for {0:0.##}", prices[prod3].ToString()+" pesos!");
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