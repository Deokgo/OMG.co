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
    public partial class SalesReport : System.Web.UI.Page
    {
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            dateLbl.Text = DateTime.Now.ToString("MMMM d, yyyy");
            DatabaseClass db = new DatabaseClass();
            dt = db.Show("SELECT SUM(prod_price*qty) AS daily_sales FROM trans_tbl tt INNER JOIN prod_info_tbl pt ON tt.prod_id=pt.prod_id WHERE YEAR(tt.trans_date)=YEAR(CURDATE()) AND MONTH(tt.trans_date)=MONTH(CURDATE()) AND DAY(tt.trans_date)=DAY(CURDATE());");
            if (dt.Rows.Count > 0 && dt.Rows[0]["daily_sales"] != DBNull.Value)
            {
                dailySales.Text = dt.Rows[0]["daily_sales"].ToString();
            }
            monthLbl.Text = DateTime.Now.ToString("MMMM");
            dt = db.Show("SELECT SUM(prod_price*qty) AS monthly_sales FROM trans_tbl tt INNER JOIN prod_info_tbl pt ON tt.prod_id=pt.prod_id WHERE YEAR(tt.trans_date)=YEAR(CURDATE()) AND MONTH(tt.trans_date)=MONTH(CURDATE());");
            if (dt.Rows.Count > 0 && dt.Rows[0]["monthly_sales"] != DBNull.Value)
            {
                monthlySales.Text = dt.Rows[0]["monthly_sales"].ToString();
            }
            dt = db.Show("SELECT SUM(prod_price*qty) AS overall_sales FROM trans_tbl tt INNER JOIN prod_info_tbl pt ON tt.prod_id=pt.prod_id;");
            if (dt.Rows.Count > 0 && dt.Rows[0]["overall_sales"] != DBNull.Value)
            {
                overallSales.Text = dt.Rows[0]["overall_sales"].ToString();
            }
        }
    }
}