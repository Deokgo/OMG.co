using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT114_MP_LOGIC
{
    public partial class ViewProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Session["role"] as string) || string.IsNullOrEmpty(Session["uname"] as string))
            {
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                admin_name.Text = "Hi, " + Session["uname"] + "!";
            }

            if (!this.IsPostBack)
            {
                Validation vd = new Validation();
                DatabaseClass view = new DatabaseClass();
                DataTable dataTable = view.Show("SELECT * FROM prod_info_tbl;");
                MySqlDataReader reader = view.getRec("SELECT * FROM prod_info_tbl;");

                if (reader.HasRows)
                {
                    TableRow tr = new TableRow();
                    MyTable.GridLines = GridLines.Both;
                    tr.BackColor = System.Drawing.Color.Indigo;
                    tr.ForeColor = System.Drawing.Color.White;
                    TableCell cellProdImg = new TableCell();
                    cellProdImg.Width = 600;
                    TableCell cellProdName = new TableCell();
                    cellProdName.Width = 300;
                    TableCell cellProdPrice = new TableCell();
                    cellProdPrice.Width = 300;
                    TableCell cellProdDesc = new TableCell();
                    cellProdDesc.Width = 600;

                    cellProdImg.Text = "IMAGE PRODUCT";
                    cellProdName.Text = "PRODUCT";
                    cellProdPrice.Text = "PRICE";
                    cellProdDesc.Text = "DESCRIPTION";

                    tr.Cells.Add(cellProdImg);
                    tr.Cells.Add(cellProdName);
                    tr.Cells.Add(cellProdPrice);
                    tr.Cells.Add(cellProdDesc);

                    MyTable.Rows.Add(tr);

                    foreach (DataRow access in dataTable.Rows)
                    {
                        tr = new TableRow();
                        cellProdImg = new TableCell();
                        cellProdName = new TableCell();
                        cellProdPrice = new TableCell();
                        cellProdDesc = new TableCell();
                        Image img = new Image();

                        img.Width = 200;
                        img.Height = 200;

                        img.ImageUrl = access["prod_photo"].ToString();
                        cellProdImg.Controls.Add(img);
                        cellProdName.Text = access["prod_name"].ToString();
                        cellProdPrice.Text = access["prod_price"].ToString();

                        if (!(vd.CheckIfNullDesc(access["description"])))
                        {
                            cellProdDesc.Text = access["description"].ToString();
                        }

                        tr.Cells.Add(cellProdImg);
                        tr.Cells.Add(cellProdName);
                        tr.Cells.Add(cellProdPrice);
                        tr.Cells.Add(cellProdDesc);

                        MyTable.Rows.Add(tr);
                    }
                }
                else
                {
                    Response.Write("<script>alert('No record.')</script>");
                }
                view.connectionclose();
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Validation vd = new Validation();
            DatabaseClass view = new DatabaseClass();
            DataTable dataTable = view.Show("SELECT * FROM prod_info_tbl WHERE (prod_id='" + txtSearch.Text 
                + "' OR prod_name LIKE '" + txtSearch.Text + "%') AND prod_status='" + ddlProdStatus.SelectedValue + "';");
            MySqlDataReader reader = view.getRec("SELECT * FROM prod_info_tbl WHERE (prod_id='" + txtSearch.Text
                + "' OR prod_name LIKE '" + txtSearch.Text + "%') AND prod_status='" + ddlProdStatus.SelectedValue + "';");

            TableRow tr = new TableRow();
            MyTable.GridLines = GridLines.Both;
            tr.BackColor = System.Drawing.Color.Indigo;
            tr.ForeColor = System.Drawing.Color.White;
            TableCell cellProdImg = new TableCell();
            cellProdImg.Width = 600;
            TableCell cellProdName = new TableCell();
            cellProdName.Width = 300;
            TableCell cellProdPrice = new TableCell();
            cellProdPrice.Width = 300;
            TableCell cellProdDesc = new TableCell();
            cellProdDesc.Width = 600;

            cellProdImg.Text = "IMAGE PRODUCT";
            cellProdName.Text = "PRODUCT";
            cellProdPrice.Text = "PRICE";
            cellProdDesc.Text = "DESCRIPTION";

            tr.Cells.Add(cellProdImg);
            tr.Cells.Add(cellProdName);
            tr.Cells.Add(cellProdPrice);
            tr.Cells.Add(cellProdDesc);

            MyTable.Rows.Add(tr);

            if (reader.HasRows)
            {
                foreach (DataRow access in dataTable.Rows)
                {
                    tr = new TableRow();
                    cellProdImg = new TableCell();
                    cellProdName = new TableCell();
                    cellProdPrice = new TableCell();
                    cellProdDesc = new TableCell();
                    Image img = new Image();

                    img.Width = 200;
                    img.Height = 200;

                    img.ImageUrl = access["prod_photo"].ToString();
                    cellProdImg.Controls.Add(img);
                    cellProdName.Text = access["prod_name"].ToString();
                    cellProdPrice.Text = access["prod_price"].ToString();

                    if (!(vd.CheckIfNullDesc(access["description"])))
                    {
                        cellProdDesc.Text = access["description"].ToString();
                    }

                    tr.Cells.Add(cellProdImg);
                    tr.Cells.Add(cellProdName);
                    tr.Cells.Add(cellProdPrice);
                    tr.Cells.Add(cellProdDesc);

                    MyTable.Rows.Add(tr);
                }
            }
            else
            {
                Response.Write("<script>alert('No record.')</script>");
            }
            view.connectionclose();
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPage.aspx");
        }
    }
}