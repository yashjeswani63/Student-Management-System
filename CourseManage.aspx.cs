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
    public partial class CourseManage : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConn.Open();
            String ImagePath = "~/CourseImage/" + FileUpload1.FileName;
            SqlCmd = new SqlCommand("SMS", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@query_type", SqlDbType.VarChar).Value = "insertcourse";
            SqlCmd.Parameters.Add("@Course_ID", SqlDbType.BigInt).Value = TextBox1.Text;
            SqlCmd.Parameters.Add("@Course_Name", SqlDbType.VarChar).Value = TextBox2.Text;
            SqlCmd.Parameters.Add("@Duration", SqlDbType.VarChar).Value = TextBox3.Text;
            SqlCmd.Parameters.Add("@Total_Fee", SqlDbType.BigInt).Value = TextBox4.Text;
            SqlCmd.Parameters.Add("@Course_Img", SqlDbType.VarChar).Value = ImagePath;
            SqlCmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = TextBox5.Text;
            int x = SqlCmd.ExecuteNonQuery();
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/CourseImage/") + FileUpload1.FileName);
            if (x > 0)
            {
                Label1.Text = "Course Inserted";
            }
        }

        protected void Repeater1_ItemCommand1(object source, RepeaterCommandEventArgs e)
        {
            Response.Redirect("AddContent.aspx?cid=" + e.CommandArgument + "");
        }
    }
}