using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace SMS
{
    public partial class Courses1 : System.Web.UI.Page
    {
        SqlConnection SqlConn = new SqlConnection(ConfigurationManager.AppSettings["ConnString"]);
        SqlCommand SqlCmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                SqlConn.Open();
                SqlCmd = new SqlCommand("SMS", SqlConn);
                SqlCmd.CommandType = CommandType.StoredProcedure;
                SqlCmd.Parameters.Add("@query_type", SqlDbType.VarChar).Value = "bind_course";
                SqlDataReader sqldr = SqlCmd.ExecuteReader();
                if (sqldr.HasRows)
                {
                    Repeater1.DataSource = sqldr;
                    Repeater1.DataBind();

                }
                else
                {
                    Repeater1.DataSource = "";
                    Repeater1.DataBind();
                }
                SqlConn.Close();
            }
        }

        protected void Repeater1_ItemCommand1(object source, RepeaterCommandEventArgs e)
        {
            SqlConn.Open();
            SqlCmd = new SqlCommand("SMS", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@query_type", SqlDbType.VarChar).Value = "bind_course_ID";
            SqlCmd.Parameters.Add("@Course_ID", SqlDbType.BigInt).Value = e.CommandArgument;
            SqlDataReader sqldr = SqlCmd.ExecuteReader();

            if (sqldr.Read())
            {
                Session["CourseName"] = sqldr["Course_Name"];
            }
            sqldr.Close();
            SqlCmd.Parameters.Clear();
            SqlCmd.Parameters.Add("@query_type", SqlDbType.VarChar).Value = "favoritelist";
            SqlCmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = Convert.ToString(Session["UserID"]);
            SqlCmd.Parameters.Add("@Course_ID", SqlDbType.BigInt).Value = e.CommandArgument;
            SqlCmd.Parameters.Add("@Course_Name", SqlDbType.VarChar).Value = Convert.ToString(Session["CourseName"]);
            int x = SqlCmd.ExecuteNonQuery();
            SqlConn.Close();
        }
    }
}