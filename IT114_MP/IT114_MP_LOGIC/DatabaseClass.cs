using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace IT114_MP_LOGIC
{
    public class DatabaseClass
    {
        MySqlConnection sqlCon;
        MySqlCommand sqlCom;
        MySqlDataReader sqlReader;
        MySqlDataAdapter sqlAdapter;
        DataSet ds;
        DataTable tb;

        string connectionStr = "server=localhost;user id=root; database=it114l_mp;Password=";

        public int insDelUp(string cmnd) // insert, delete, update (kaya ExecuteNonQuery)
        {
            sqlCon = new MySqlConnection();
            sqlCon.ConnectionString = connectionStr;
            sqlCon.Open();

            sqlCom = new MySqlCommand(cmnd, sqlCon);

            int x = sqlCom.ExecuteNonQuery();
            sqlCon.Close();

            return x;
        }

        public MySqlDataReader getRec(string cmnd)
        {
            sqlCon = new MySqlConnection();
            sqlCon.ConnectionString = connectionStr;
            sqlCon.Open();

            sqlCom = new MySqlCommand(cmnd, sqlCon);
            sqlReader = sqlCom.ExecuteReader();

            return sqlReader;
        }

        public DataTable Show(string cmnd)
        {
            sqlCon = new MySqlConnection();
            sqlCon.ConnectionString = connectionStr;
            sqlCon.Open();

            sqlCom = new MySqlCommand(cmnd, sqlCon);
            sqlAdapter = new MySqlDataAdapter(sqlCom);
            tb = new DataTable();
            sqlAdapter.Fill(tb);
            return tb;
        }
        public DataSet getDataSet(string cmd)
        {
            sqlCon = new MySqlConnection();
            sqlCon.ConnectionString = connectionStr;
            sqlCon.Open();
            sqlCom = new MySqlCommand(cmd, sqlCon);
            sqlReader = sqlCom.ExecuteReader();
            if (sqlReader.HasRows)
            {
                sqlCon.Close();
                sqlCon.Open();
                sqlAdapter = new MySqlDataAdapter(sqlCom);
                ds = new DataSet();
                sqlAdapter.Fill(ds);

            }
            sqlCon.Close();
            return ds;
        }

        public void connectionclose()
        {
            sqlCon.Close();
        }
    }
}