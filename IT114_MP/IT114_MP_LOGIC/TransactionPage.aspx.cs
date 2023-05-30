using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace IT114_MP_LOGIC
{
    public partial class TransactionPage : System.Web.UI.Page
    {
        MySqlConnection conn;
        MySqlCommand command;
        MySqlDataAdapter dbDa;
        MySqlDataReader dr;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            //TextBox1.Text = Session["role"].ToString(); // test if the role is being passed
            conn = new MySqlConnection("server=localhost; user id=root; database=it114l_mp;password=");
            conn.Open();
            command = new MySqlCommand("SELECT * FROM prod_info_tbl;", conn);
            dbDa = new MySqlDataAdapter(command);
            dt = new DataTable();
            dbDa.Fill(dt);
            conn.Close();
            if (dt.Rows.Count > 0)
            {
                TableRow prodtr = new TableRow();
                prodTable.GridLines = GridLines.Both;
                prodtr.BackColor = System.Drawing.Color.Cornsilk;
                TableCell prodImage = new TableCell();
                TableCell prodName = new TableCell();
                TableCell prodPrice = new TableCell();
                foreach (DataRow row in dt.Rows)
                {
                    prodtr = new TableRow();
                    prodImage = new TableCell(); 
                    prodName = new TableCell();
                    prodPrice = new TableCell();
                    Image prodPic = new Image();
                    prodPic.ImageUrl = "~/images/" + row["prod_photo"].ToString();
                    prodPic.Width = Unit.Pixel(100);
                    prodPic.Height = Unit.Pixel(100);


                    prodImage.Controls.Add(prodPic);
                    //prodImage.Text = row["prod_photo"].ToString();
                    prodName.Text = row["prod_name"].ToString();
                    prodPrice.Text = row["prod_price"].ToString();
                    prodtr.Cells.Add(prodImage);
                    prodtr.Cells.Add(prodName);
                    prodtr.Cells.Add(prodPrice);
                    prodTable.Rows.Add(prodtr);
                }
            }
        }
        protected void Page_Init (object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DatabaseClass db = new DatabaseClass();
                string query = "SELECT * FROM prod_info_tbl";
                DataSet ds = db.getDataSet(query);
                prodDdl.DataTextField = ds.Tables[0].Columns["prod_name"].ToString();
                prodDdl.DataValueField = ds.Tables[0].Columns["prod_id"].ToString();
                prodDdl.DataSource = ds.Tables[0];
                prodDdl.DataBind();
                Session["total"] = 0;
            }
            else
            {
                
            }
        }
        protected void AddToCart (object sender, EventArgs e) //bali need ko muna kunin yung id pati qty pre
        {
            DatabaseClass db = new DatabaseClass(); //gagawin ko nalang is yung text part pangdisplay, yung value id saka qty
            string prodName = prodDdl.SelectedItem.Text;
            string prodId = prodDdl.SelectedItem.Value;
            dr = db.getRec("SELECT * FROM prod_info_tbl WHERE prod_id=" + prodId + ";");
            if (dr.Read())
            {
                int price = Convert.ToInt32(dr["prod_price"]);
                int prodQty = Convert.ToInt32(qtyTxt.Text);
                int subtotal = price * prodQty;
                ListItem cartItem = new ListItem();
                // Add inline styles to align the item details
                //cartItem.Attributes["style"] = "padding: 50px;";

                // Add the item details as text to the cartItem
                cartItem.Text = prodName + "            |            " + price.ToString() + "            |            " + prodQty.ToString() + "            |            " + subtotal.ToString();
                //cartItem.Text = String.Format("{0}\t\t{1,28}{2,34}\t{3,38}", prodName, price.ToString(), prodQty.ToString(), subtotal.ToString());
                // Set the value of the cartItem
                cartItem.Value = prodId + "-" + prodQty.ToString();

                // Add the cartItem to the cart ListBox
                cart.Items.Add(cartItem);
                int intSession = Convert.ToInt32(Session["total"]);
                Session["total"] = (subtotal + intSession).ToString();
                totalLbl.Text = "Total: " + Session["total"];
            } 
        }
        protected void RemoveToCart (object sender, EventArgs e)
        {
            cart.Items.Remove(cart.SelectedItem);
        }
    }
}