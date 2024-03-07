using System;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.UI.WebControls;

namespace SMS
{
    public partial class Faculty1 : System.Web.UI.Page
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
                SqlCmd.Parameters.Add("@query_type", SqlDbType.VarChar).Value = "bind_course_faculty";
                SqlCmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = Convert.ToString(Session["UserID"]);
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
            Response.Redirect("AddContent2.aspx?cid=" + e.CommandArgument + "");
        }
    }
}