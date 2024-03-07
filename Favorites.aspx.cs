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
    public partial class Favorites : System.Web.UI.Page
    {
        SqlConnection SqlConn = new SqlConnection(ConfigurationManager.AppSettings["ConnString"]);
        SqlCommand SqlCmd;
        private void GridBind()
        {
            SqlConn.Open();
            SqlCmd = new SqlCommand("SMS", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@query_Type", SqlDbType.VarChar).Value = "getfavoritelist";
            SqlCmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = Convert.ToString(Session["UserID"]);
            SqlDataReader sqldr = SqlCmd.ExecuteReader();
            if (sqldr.HasRows)
            {
                GridView1.DataSource = sqldr;
                GridView1.DataBind();

            }
            else
            {
                GridView1.DataSource = "";
                GridView1.DataBind();
            }
            SqlConn.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack == false)
            {
                GridBind();
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConn.Open();
            Label CID = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
            SqlCmd = new SqlCommand("SMS", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@query_Type", SqlDbType.VarChar).Value = "deletefavorite";
            SqlCmd.Parameters.Add("@Course_ID", SqlDbType.BigInt).Value = CID.Text;
            SqlCmd.ExecuteNonQuery();
            SqlConn.Close();
            GridView1.EditIndex = -1;
            GridBind();
        }
    }
}