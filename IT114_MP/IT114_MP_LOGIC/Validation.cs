using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace IT114_MP_LOGIC
{
    public class Validation
    {
        string sqlStatement = "";

        public string GetSQLInsertStatement(string id, string name, string price, string photo, string description, string status)
        {
            if(description == String.Empty)
            {
                sqlStatement = "INSERT INTO prod_info_tbl (prod_id, prod_name, prod_price, prod_photo, prod_status)" +
                    "VALUES('" + id + "', '" + name + "', '" + price + "', '" + photo + "', '" + status + "');";
            }
            else
            {
                sqlStatement = "INSERT INTO prod_info_tbl (prod_id, prod_name, prod_price, prod_photo, description, prod_status)" +
                    "VALUES('" + id + "', '" + name + "', '" + price + "', '" + photo + "', '" + description + "', '" + status + "');";
            }
            return sqlStatement;
        }

        public bool IsNameAndPriceNull (string name, string price)
        {
            if ((name == "") || (price == ""))
            {
                return true;
            }
            return false;
        }
    }
}