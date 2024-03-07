using System;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;
using System.Configuration;
using System.Text;
using System.Web.UI.WebControls;

namespace SMS
{
    public partial class ViewContent : System.Web.UI.Page
    {
        SqlConnection SqlConn = new SqlConnection(ConfigurationManager.AppSettings["ConnString"]);
        SqlCommand SqlCmd;
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["UserType"]) == "Admin")
                this.MasterPageFile = "Admin.Master";
            else if (Convert.ToString(Session["UserType"]) == "Faculty")
                this.MasterPageFile = "Faculty.Master";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                long courseId = Convert.ToInt64(Session["cid"]);
                SqlConn.Open();
                SqlCmd = new SqlCommand("SMS", SqlConn);
                SqlCmd.CommandType = CommandType.StoredProcedure;
                SqlCmd.Parameters.Add("@query_type", SqlDbType.VarChar).Value = "getvideos";
                SqlCmd.Parameters.Add("@Course_ID", SqlDbType.BigInt).Value = courseId;

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

                sqldr.Close();
                SqlConn.Close();
            }
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string videoId = Convert.ToString(e.CommandArgument);
            SqlConn.Open();
            SqlCmd = new SqlCommand("SMS", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@query_type", SqlDbType.VarChar).Value = "deletecontent";
            SqlCmd.Parameters.Add("@Video_ID", SqlDbType.VarChar).Value = videoId;
            int x = SqlCmd.ExecuteNonQuery();
            SqlConn.Close();
        }
    }
}