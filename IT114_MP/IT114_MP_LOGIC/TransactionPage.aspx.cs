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
        MySqlDataReader dr;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            DatabaseClass db = new DatabaseClass();
            dt = db.Show("SELECT * FROM prod_info_tbl;");
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
                    prodPic.ImageUrl = row["prod_photo"].ToString();
                    prodPic.Width = Unit.Pixel(100);
                    prodPic.Height = Unit.Pixel(100);


                    prodImage.Controls.Add(prodPic);
                    prodName.Text = row["prod_name"].ToString();
                    prodPrice.Text = row["prod_price"].ToString();
                    prodtr.Cells.Add(prodImage);
                    prodtr.Cells.Add(prodName);
                    prodtr.Cells.Add(prodPrice);
                    prodTable.Rows.Add(prodtr);
                }
            }
        }
        protected void Page_Init(object sender, EventArgs e)
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
                Session["total"] = 0.0;
            }
            else
            {

            }
        }
        protected void AddToCart(object sender, EventArgs e) //bali need ko muna kunin yung id pati qty pre
        {
            DatabaseClass db = new DatabaseClass(); //gagawin ko nalang is yung text part pangdisplay, yung value id saka qty
            string prodName = prodDdl.SelectedItem.Text;
            string prodId = prodDdl.SelectedItem.Value;
            dr = db.getRec("SELECT * FROM prod_info_tbl WHERE prod_id=" + prodId + ";");
            if (dr.Read())
            {
                double price = Convert.ToInt32(dr["prod_price"]);
                int prodQty = Convert.ToInt32(qtyTxt.Text);
                double subtotal = price * prodQty;
                ListItem cartItem = new ListItem();
                // Add the item details as text to the cartItem
                cartItem.Text = prodName + "            |            " + price.ToString() + "            |            " + prodQty.ToString() + "            |            " + subtotal.ToString();
                // Set the value of the cartItem
                cartItem.Value = prodId + "-" + prodQty.ToString() + "-" + price.ToString();

                cart.Items.Add(cartItem);
                Session["total"] = 0.0;
                foreach (ListItem item in cart.Items)
                {
                    string[] itemList = item.Value.Split('-');
                    prodId = itemList[0];
                    prodQty = int.Parse(itemList[1]);
                    double prodPrice = double.Parse(itemList[2]);

                    subtotal = prodQty * prodPrice;
                    Session["total"] = (double)Session["total"] + subtotal;
                }
                totalLbl.Text = "Total: " + Session["total"];
            }
        }
        protected void RemoveToCart(object sender, EventArgs e)
        {
            cart.Items.Remove(cart.SelectedItem);
            Session["total"] = 0.0;
            foreach (ListItem item in cart.Items)
            {
                string[] itemList = item.Value.Split('-');
                string prodId = itemList[0];
                int prodQty = int.Parse(itemList[1]);
                double prodPrice = double.Parse(itemList[2]);

                double subtotal = prodQty * prodPrice;
                Session["total"] = (double)Session["total"] + subtotal;
            }
            totalLbl.Text = "Total: " + Session["total"];
        }
        protected void AddTransaction(object sender, EventArgs e)
        {
            int latestTx = 00001;
            DatabaseClass db = new DatabaseClass();
            string getLatest = "SELECT * FROM trans_tbl ORDER BY order_code DESC LIMIT 1;";
            dr = db.getRec(getLatest);
            if (dr.Read())
            {
                // Retrieve the tx_id value from the reader
                latestTx = dr.GetInt32("order_code");
                latestTx = latestTx + 1;
            }
            if (cart.Items.Count > 0)
            {
                dr.Read();
                foreach (ListItem item in cart.Items)
                {
                    string[] itemList = item.Value.Split('-');
                    // Retrieve the tx_id value from the reader
                    string query = "INSERT INTO trans_tbl VALUES ('" + latestTx.ToString("00000") + "','" + itemList[0].ToString() + "'," + int.Parse(itemList[1]) + ",'" + Session["uname"].ToString() + "','" + DateTime.Now.ToString("yyyy - MM - dd HH: mm:ss") + "');";
                    db.insDelUp(query);
                }
                cart.Items.Clear();
                qtyTxt.Text = "";
                Session["total"] = 0;
                totalLbl.Text = "Total: 0.0";
            }
            else
            {
                Response.Write("<script>alert('Please add an item to the cart first!')</script>");
            }

        }
    }
}