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
    public partial class PerformanceReport : System.Web.UI.Page
    {
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Session["role"] as string) || string.IsNullOrEmpty(Session["uname"] as string))
            {
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                DatabaseClass db = new DatabaseClass();

                admin_name.Text = "Hi, " + Session["uname"] + "!";

                //------TABLE LAYOUT----------

                //Best Sold Product Layout
                TableRow tr = new TableRow();
                MyTableBest.GridLines = GridLines.Both;
                tr.BackColor = System.Drawing.Color.Indigo;
                tr.ForeColor = System.Drawing.Color.White;
                TableCell cellProdImg = new TableCell();
                cellProdImg.Width = 600;
                TableCell cellProdName = new TableCell();
                cellProdName.Width = 300;
                TableCell cellProdPrice = new TableCell();
                cellProdPrice.Width = 300;
                TableCell cellNoSold = new TableCell();
                cellNoSold.Width = 300;

                cellProdImg.Text = "BEST PRODUCT SOLD";
                cellProdName.Text = "PRODUCT";
                cellProdPrice.Text = "PRICE";
                cellNoSold.Text = "NO. SOLD";

                tr.Cells.Add(cellProdImg);
                tr.Cells.Add(cellProdName);
                tr.Cells.Add(cellProdPrice);
                tr.Cells.Add(cellNoSold);

                MyTableBest.Rows.Add(tr);


                //Least Sold Product Layout
                TableRow tr1 = new TableRow();
                MyTableLeast.GridLines = GridLines.Both;
                tr1.BackColor = System.Drawing.Color.Indigo;
                tr1.ForeColor = System.Drawing.Color.White;
                TableCell cellProdImg1 = new TableCell();
                cellProdImg1.Width = 600;
                TableCell cellProdName1 = new TableCell();
                cellProdName1.Width = 300;
                TableCell cellProdPrice1 = new TableCell();
                cellProdPrice1.Width = 300;
                TableCell cellNoSold1 = new TableCell();
                cellNoSold1.Width = 300;

                cellProdImg1.Text = "LEAST PRODUCT SOLD";
                cellProdName1.Text = "PRODUCT";
                cellProdPrice1.Text = "PRICE";
                cellNoSold1.Text = "NO. SOLD";

                tr1.Cells.Add(cellProdImg1);
                tr1.Cells.Add(cellProdName1);
                tr1.Cells.Add(cellProdPrice1);
                tr1.Cells.Add(cellNoSold1);

                MyTableLeast.Rows.Add(tr1);


                //Top 3 Sold Products Layout
                TableRow tr2 = new TableRow();
                MyTable.GridLines = GridLines.Both;
                tr2.BackColor = System.Drawing.Color.Indigo;
                tr2.ForeColor = System.Drawing.Color.White;
                TableCell cellProdImg2 = new TableCell();
                cellProdImg2.Width = 600;
                TableCell cellProdName2 = new TableCell();
                cellProdName2.Width = 300;
                TableCell cellProdPrice2 = new TableCell();
                cellProdPrice2.Width = 300;
                TableCell cellNoSold2 = new TableCell();
                cellNoSold2.Width = 300;

                cellProdImg2.Text = "";
                cellProdName2.Text = "PRODUCT";
                cellProdPrice2.Text = "PRICE";
                cellNoSold2.Text = "NO. SOLD";

                tr2.Cells.Add(cellProdImg2);
                tr2.Cells.Add(cellProdName2);
                tr2.Cells.Add(cellProdPrice2);
                tr2.Cells.Add(cellNoSold2);

                MyTable.Rows.Add(tr2);



                //------TABLE CONTENTS----------

                //Get Best Sold Product
                dt = db.Show("SELECT pi.prod_id, pi.prod_name, pi.prod_price, pi.prod_photo, SUM(tt.qty) AS total_qty FROM prod_info_tbl pi INNER JOIN trans_tbl tt ON pi.prod_id = tt.prod_id WHERE pi.prod_status = 'Available' AND YEAR(tt.trans_date) = YEAR(CURDATE()) AND MONTH(tt.trans_date) = MONTH(CURDATE()) GROUP BY pi.prod_id, pi.prod_name, pi.prod_price, pi.prod_photo ORDER BY SUM(tt.qty) DESC LIMIT 3; ");
                if (dt.Rows.Count > 0)
                {
                    tr = new TableRow();
                    cellProdImg = new TableCell();
                    cellProdName = new TableCell();
                    cellProdPrice = new TableCell();
                    cellNoSold = new TableCell();
                    Image img1 = new Image();

                    img1.Width = 250;
                    img1.Height = 200;

                    img1.ImageUrl = dt.Rows[0]["prod_photo"].ToString();
                    cellProdImg.Controls.Add(img1);

                    cellProdName.Text = dt.Rows[0]["prod_name"].ToString();
                    cellProdPrice.Text = dt.Rows[0]["prod_price"].ToString();
                    cellNoSold.Text = dt.Rows[0]["total_qty"].ToString();

                    tr.Cells.Add(cellProdImg);
                    tr.Cells.Add(cellProdName);
                    tr.Cells.Add(cellProdPrice);
                    tr.Cells.Add(cellNoSold);

                    MyTableBest.Rows.Add(tr);

                }
                else
                {
                    NoDataBest.Text = "[ No Data to Show ]";
                }
                db.connectionclose();

                //Get Least Sold Product
                dt = db.Show("SELECT pi.prod_id, pi.prod_name, pi.prod_price, pi.prod_photo, SUM(tt.qty) AS total_qty FROM prod_info_tbl pi INNER JOIN trans_tbl tt ON pi.prod_id = tt.prod_id WHERE pi.prod_status = 'Available' AND YEAR(tt.trans_date) = YEAR(CURDATE()) AND MONTH(tt.trans_date) = MONTH(CURDATE()) GROUP BY pi.prod_id, pi.prod_name, pi.prod_price, pi.prod_photo ORDER BY SUM(tt.qty) ASC LIMIT 1; ");
                if (dt.Rows.Count > 0)
                {
                    tr1 = new TableRow();
                    cellProdImg1 = new TableCell();
                    cellProdName1 = new TableCell();
                    cellProdPrice1 = new TableCell();
                    cellNoSold1 = new TableCell();
                    Image img1 = new Image();

                    img1.Width = 250;
                    img1.Height = 200;

                    img1.ImageUrl = dt.Rows[0]["prod_photo"].ToString();
                    cellProdImg1.Controls.Add(img1);

                    cellProdName1.Text = dt.Rows[0]["prod_name"].ToString();
                    cellProdPrice1.Text = dt.Rows[0]["prod_price"].ToString();
                    cellNoSold1.Text = dt.Rows[0]["total_qty"].ToString();

                    tr1.Cells.Add(cellProdImg1);
                    tr1.Cells.Add(cellProdName1);
                    tr1.Cells.Add(cellProdPrice1);
                    tr1.Cells.Add(cellNoSold1);

                    MyTableLeast.Rows.Add(tr1);

                }
                else
                {
                    NoDataLeast.Text = "[ No Data to Show ]";
                }
                db.connectionclose();


                //Get Top 3 Sold Products
                dt = db.Show("SELECT pi.prod_id, pi.prod_name, pi.prod_price, pi.prod_photo, SUM(tt.qty) AS total_qty FROM prod_info_tbl pi INNER JOIN trans_tbl tt ON pi.prod_id = tt.prod_id WHERE pi.prod_status = 'Available' AND YEAR(tt.trans_date) = YEAR(CURDATE()) AND MONTH(tt.trans_date) = MONTH(CURDATE()) GROUP BY pi.prod_id, pi.prod_name, pi.prod_price, pi.prod_photo ORDER BY SUM(tt.qty) DESC; ");
                if (dt.Rows.Count > 0)
                {
                    foreach(DataRow row in dt.Rows)
                    {
                        tr2 = new TableRow();
                        cellProdImg2 = new TableCell();
                        cellProdName2 = new TableCell();
                        cellProdPrice2 = new TableCell();
                        cellNoSold2 = new TableCell();
                        Image img2 = new Image();

                        img2.Width = 250;
                        img2.Height = 200;

                        img2.ImageUrl = row["prod_photo"].ToString();
                        cellProdImg2.Controls.Add(img2);

                        cellProdName2.Text = row["prod_name"].ToString();
                        cellProdPrice2.Text = row["prod_price"].ToString();
                        cellNoSold2.Text = row["total_qty"].ToString();

                        tr2.Cells.Add(cellProdImg2);
                        tr2.Cells.Add(cellProdName2);
                        tr2.Cells.Add(cellProdPrice2);
                        tr2.Cells.Add(cellNoSold2);

                        MyTable.Rows.Add(tr2);
                    }
                }
                else 
                {
                    NoDataSold.Text = "[ No Data to Show ]";
                }
                db.connectionclose();
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReportPage.aspx");
        }
    }
}