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
            if (string.IsNullOrEmpty(Session["role"] as string) || string.IsNullOrEmpty(Session["uname"] as string))
            {
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                DatabaseClass db = new DatabaseClass();

                TableRow tr2 = new TableRow();
                MyTableDaily.GridLines = GridLines.Both;
                tr2.BackColor = System.Drawing.Color.Indigo;
                tr2.ForeColor = System.Drawing.Color.White;
                TableCell cellDaily = new TableCell();
                cellDaily.Width = 300;
                TableCell cellDailySales = new TableCell();
                cellDailySales.Width = 300;

                cellDaily.Text = "TODAY'S DATE";
                cellDailySales.Text = "TOTAL DAILY SALES";

                tr2.Cells.Add(cellDaily);
                tr2.Cells.Add(cellDailySales);

                MyTableDaily.Rows.Add(tr2);

                //dateLbl.Text = DateTime.Now.ToString("MMMM d, yyyy");
                dt = db.Show("SELECT SUM(prod_price*qty) AS daily_sales FROM trans_tbl tt INNER JOIN prod_info_tbl pt ON tt.prod_id=pt.prod_id WHERE YEAR(tt.trans_date)=YEAR(CURDATE()) AND MONTH(tt.trans_date)=MONTH(CURDATE()) AND DAY(tt.trans_date)=DAY(CURDATE());");
                if (dt.Rows.Count > 0 && dt.Rows[0]["daily_sales"] != DBNull.Value)
                {
                    tr2 = new TableRow();
                    cellDaily = new TableCell();
                    cellDailySales = new TableCell();

                    cellDaily.Text = DateTime.Now.ToString("MMMM d, yyyy");
                    cellDailySales.Text = dt.Rows[0]["daily_sales"].ToString();

                    tr2.Cells.Add(cellDaily);
                    tr2.Cells.Add(cellDailySales);

                    MyTableDaily.Rows.Add(tr2);
                    //dailySales.Text = dt.Rows[0]["daily_sales"].ToString();
                }
                else
                {
                    tr2 = new TableRow();
                    cellDaily = new TableCell();
                    cellDailySales = new TableCell();

                    cellDaily.Text = DateTime.Now.ToString("MMMM d, yyyy");
                    cellDailySales.Text = "0";

                    tr2.Cells.Add(cellDaily);
                    tr2.Cells.Add(cellDailySales);

                    MyTableDaily.Rows.Add(tr2);
                }


                TableRow tr3 = new TableRow();
                MyTableOverall.GridLines = GridLines.Both;
                tr3.BackColor = System.Drawing.Color.Indigo;
                tr3.ForeColor = System.Drawing.Color.White;
                TableCell cellOverallSales = new TableCell();
                cellOverallSales.Width = 300;

                cellOverallSales.Text = "TOTAL OVERALL SALES";

                tr3.Cells.Add(cellOverallSales);

                MyTableOverall.Rows.Add(tr3);

                dt = db.Show("SELECT SUM(prod_price*qty) AS overall_sales FROM trans_tbl tt INNER JOIN prod_info_tbl pt ON tt.prod_id=pt.prod_id;");
                if (dt.Rows.Count > 0 && dt.Rows[0]["overall_sales"] != DBNull.Value)
                {
                    tr3 = new TableRow();
                    cellOverallSales = new TableCell();

                    cellOverallSales.Text = dt.Rows[0]["overall_sales"].ToString();

                    tr3.Cells.Add(cellOverallSales);

                    MyTableOverall.Rows.Add(tr3);

                    //overallSales.Text = dt.Rows[0]["overall_sales"].ToString();
                }
                else
                {
                    tr3 = new TableRow();
                    cellOverallSales = new TableCell();

                    cellOverallSales.Text = "0";

                    tr3.Cells.Add(cellOverallSales);

                    MyTableOverall.Rows.Add(tr3);
                }

                if (!this.IsPostBack)
                {
                    string sMonth = DateTime.Now.ToString("%M");
                    ddlMonths.SelectedValue = sMonth;

                    TableRow tr1 = new TableRow();
                    MyTableMonthly.GridLines = GridLines.Both;
                    tr1.BackColor = System.Drawing.Color.Indigo;
                    tr1.ForeColor = System.Drawing.Color.White;
                    TableCell cellMonth = new TableCell();
                    cellMonth.Width = 300;
                    TableCell cellMonthlySales = new TableCell();
                    cellMonthlySales.Width = 300;

                    cellMonth.Text = "PICKED MONTH";
                    cellMonthlySales.Text = "TOTAL MONTHLY SALES";

                    tr1.Cells.Add(cellMonth);
                    tr1.Cells.Add(cellMonthlySales);

                    MyTableMonthly.Rows.Add(tr1);

                    // monthLbl.Text = DateTime.Now.ToString("MMMM");
                    dt = db.Show("SELECT SUM(prod_price*qty) AS monthly_sales FROM trans_tbl tt INNER JOIN prod_info_tbl pt ON tt.prod_id=pt.prod_id WHERE YEAR(tt.trans_date)=YEAR(CURDATE()) AND MONTH(tt.trans_date)=MONTH(CURDATE());");
                    if (dt.Rows.Count > 0 && dt.Rows[0]["monthly_sales"] != DBNull.Value)
                    {
                        tr1 = new TableRow();
                        cellMonth = new TableCell();
                        cellMonthlySales = new TableCell();

                        cellMonth.Text = DateTime.Now.ToString("MMMM");
                        cellMonthlySales.Text = dt.Rows[0]["monthly_sales"].ToString();

                        tr1.Cells.Add(cellMonth);
                        tr1.Cells.Add(cellMonthlySales);

                        MyTableMonthly.Rows.Add(tr1);
                        // monthlySales.Text = dt.Rows[0]["monthly_sales"].ToString();
                    }
                    else
                    {
                        tr1 = new TableRow();
                        cellMonth = new TableCell();
                        cellMonthlySales = new TableCell();

                        cellMonth.Text = DateTime.Now.ToString("MMMM");
                        cellMonthlySales.Text = "0";

                        tr1.Cells.Add(cellMonth);
                        tr1.Cells.Add(cellMonthlySales);

                        MyTableMonthly.Rows.Add(tr1);
                    }
                }
            }   
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReportPage.aspx");
        }

        protected void ddlMonths_SelectedIndexChanged(object sender, EventArgs e)
        {
            DatabaseClass db = new DatabaseClass();

            TableRow tr1 = new TableRow();
            MyTableMonthly.GridLines = GridLines.Both;
            tr1.BackColor = System.Drawing.Color.Indigo;
            tr1.ForeColor = System.Drawing.Color.White;
            TableCell cellMonth = new TableCell();
            cellMonth.Width = 300;
            TableCell cellMonthlySales = new TableCell();
            cellMonthlySales.Width = 300;

            cellMonth.Text = "PICKED MONTH";
            cellMonthlySales.Text = "TOTAL MONTHLY SALES";

            tr1.Cells.Add(cellMonth);
            tr1.Cells.Add(cellMonthlySales);

            MyTableMonthly.Rows.Add(tr1);

            // monthLbl.Text = DateTime.Now.ToString("MMMM");
            DateTime date = new DateTime(2023, Convert.ToInt32(ddlMonths.SelectedValue), 1);
            string month_name = date.ToString("MMMM");
            dt = db.Show("SELECT SUM(prod_price*qty) AS monthly_sales FROM trans_tbl tt INNER JOIN prod_info_tbl pt ON tt.prod_id=pt.prod_id WHERE YEAR(tt.trans_date)=YEAR(CURDATE()) AND MONTH(tt.trans_date)='"+ddlMonths.SelectedValue+"';");
            if (dt.Rows.Count > 0 && dt.Rows[0]["monthly_sales"] != DBNull.Value)
            {
                tr1 = new TableRow();
                cellMonth = new TableCell();
                cellMonthlySales = new TableCell();

                cellMonth.Text = month_name;
                cellMonthlySales.Text = dt.Rows[0]["monthly_sales"].ToString();

                tr1.Cells.Add(cellMonth);
                tr1.Cells.Add(cellMonthlySales);

                MyTableMonthly.Rows.Add(tr1);
                // monthlySales.Text = dt.Rows[0]["monthly_sales"].ToString();
            }
            else
            {
                tr1 = new TableRow();
                cellMonth = new TableCell();
                cellMonthlySales = new TableCell();

                cellMonth.Text = month_name;
                cellMonthlySales.Text = "0";

                tr1.Cells.Add(cellMonth);
                tr1.Cells.Add(cellMonthlySales);

                MyTableMonthly.Rows.Add(tr1);
            }
        }
    }
}