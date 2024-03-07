using System;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace SMS
{
    public partial class Course : System.Web.UI.Page
    {
        SqlConnection SqlConn = new SqlConnection(ConfigurationManager.AppSettings["ConnString"]);
        SqlCommand SqlCmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack == false)
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
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            Response.Redirect("SignUp.aspx?cid="+e.CommandArgument+"");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (TextBox1.Text != null)
            {
                SqlConn.Open();
                SqlCmd = new SqlCommand("SMS", SqlConn);
                SqlCmd.CommandType = CommandType.StoredProcedure;
                SqlCmd.Parameters.Add("@query_type", SqlDbType.VarChar).Value = "searchcourse";
                SqlCmd.Parameters.Add("@Course_Name", SqlDbType.VarChar).Value = TextBox1.Text;
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

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}