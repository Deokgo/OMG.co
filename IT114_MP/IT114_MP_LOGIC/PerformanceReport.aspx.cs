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
            DatabaseClass db = new DatabaseClass();
            dt = db.Show("SELECT pi.prod_id, pi.prod_name, pi.prod_price, pi.prod_photo, SUM(tt.qty) AS total_qty FROM prod_info_tbl pi INNER JOIN trans_tbl tt ON pi.prod_id = tt.prod_id WHERE pi.prod_status = 'Available' GROUP BY pi.prod_id, pi.prod_name, pi.prod_price, pi.prod_photo ORDER BY SUM(tt.qty) DESC LIMIT 3; ");
            if (dt.Rows.Count > 0)
            {
                bestNameLbl.Text = dt.Rows[0]["prod_name"].ToString();
                bestImage.ImageUrl = dt.Rows[0]["prod_photo"].ToString();
                bestImage.Width = Unit.Pixel(100);
                bestImage.Height = Unit.Pixel(100);
                bestPriceLbl.Text = "Price: " + dt.Rows[0]["prod_price"].ToString();
                bestSoldLbl.Text = "Sold: " + dt.Rows[0]["total_qty"].ToString();

                if (dt.Rows.Count > 1)
                {
                    secNameLbl.Text = "1st Runner-up: " + dt.Rows[1]["prod_name"].ToString();
                    secPriceLbl.Text = "Price: " + dt.Rows[1]["prod_price"].ToString();
                    secSoldLbl.Text = "Sold: " + dt.Rows[1]["total_qty"].ToString();
                }

                if (dt.Rows.Count > 2)
                {
                    thirdNameLbl.Text = "2nd Runner-up: " + dt.Rows[2]["prod_name"].ToString();
                    thirdPriceLbl.Text = "Price: " + dt.Rows[2]["prod_price"].ToString();
                    thirdSoldLbl.Text = "Sold: " + dt.Rows[2]["total_qty"].ToString();
                }
            }
            dt = db.Show("SELECT pi.prod_id, pi.prod_name, pi.prod_price, pi.prod_photo, SUM(tt.qty) AS total_qty FROM prod_info_tbl pi INNER JOIN trans_tbl tt ON pi.prod_id = tt.prod_id WHERE pi.prod_status = 'Available' GROUP BY pi.prod_id, pi.prod_name, pi.prod_price, pi.prod_photo ORDER BY SUM(tt.qty) ASC LIMIT 1; ");
            if (dt.Rows.Count > 0)
            {
                worstNameLbl.Text = dt.Rows[0]["prod_name"].ToString();
                worstImage.ImageUrl = dt.Rows[0]["prod_photo"].ToString();
                worstImage.Width = Unit.Pixel(100);
                worstImage.Height = Unit.Pixel(100);
                worstPriceLbl.Text = "Price: " + dt.Rows[0]["prod_price"].ToString();
                worstSoldLbl.Text = "Sold: " + dt.Rows[0]["total_qty"].ToString();

            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReportPage.aspx");
        }
    }
}