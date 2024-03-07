using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMS
{
    public partial class AddContent2 : System.Web.UI.Page
    {
        SqlConnection SqlConn = new SqlConnection(ConfigurationManager.AppSettings["ConnString"]);
        SqlCommand SqlCmd;

        private void GridBind()
        {
            SqlConn.Open();
            SqlCmd = new SqlCommand("SMS", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@query_Type", SqlDbType.VarChar).Value = "getqueryfaculty";
            SqlCmd.Parameters.Add("@Course_ID", SqlDbType.VarChar).Value = Request.QueryString["cid"];
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
            Label6.Text = Request.QueryString["cid"];
            Session["cid"] = Label6.Text;
            GridBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConn.Open();
            SqlCmd = new SqlCommand("SMS", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            String link = "videos/" + Path.GetFileName(FileUpload1.FileName);
            String linkpath = "<video width = '350' height = '150' controls ><source src = '" + link + "'type = 'video/mp4'></video>";
            SqlCmd.Parameters.Add("@query_type", SqlDbType.VarChar).Value = "insertcontent";
            SqlCmd.Parameters.Add("@Course_ID", SqlDbType.BigInt).Value = Convert.ToInt64(Label6.Text);
            SqlCmd.Parameters.Add("@video_link", SqlDbType.VarChar).Value = linkpath;
            SqlCmd.Parameters.Add("@Video_ID", SqlDbType.VarChar).Value = TextBox5.Text;
            FileUpload1.SaveAs(Server.MapPath("~/videos/") + Path.GetFileName(FileUpload1.FileName));
            int x = SqlCmd.ExecuteNonQuery();
            if (x > 0)
            {
                Label5.Text = "Course Updated";
            }
            else
            {
                Label5.Text = "error";
            }
            SqlConn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConn.Open();
            SqlCmd = new SqlCommand("SMS", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@query_Type", SqlDbType.VarChar).Value = "updateanswer";
            SqlCmd.Parameters.Add("@queryID", SqlDbType.VarChar).Value = TextBox1.Text;
            SqlCmd.Parameters.Add("@response", SqlDbType.VarChar).Value = TextBox6.Text;
            int x = SqlCmd.ExecuteNonQuery();
            if(x > 0)
            {
                Label2.Text = "Response Submitted";
            }
            else
            {
                Label2.Text = "Error";
            }
            SqlConn.Close();
        }
    }
}