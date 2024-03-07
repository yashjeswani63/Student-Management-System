using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMS
{
    public partial class loginStudent : System.Web.UI.MasterPage
    {
        SqlConnection SqlConn = new SqlConnection(ConfigurationManager.AppSettings["ConnString"]);
        SqlCommand SqlCmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logoutLink_Click(object sender, EventArgs e)
        {
            SqlConn.Open();
            SqlCmd = new SqlCommand("SMS", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@query_type", SqlDbType.VarChar).Value = "logout";
            if (Session["Email"] != null)
            {
                SqlCmd.Parameters.Add("@Email_ID", SqlDbType.VarChar).Value = Session["Email"];
            }
            else
            {
                SqlCmd.Parameters.Add("@Mobile_No", SqlDbType.VarChar).Value = Session["Mobile"];
            }
            int x = SqlCmd.ExecuteNonQuery();
            if(x > 0)
            {
                Session.Abandon();
                Response.Redirect("Login.aspx");
            }
        }
    }
}