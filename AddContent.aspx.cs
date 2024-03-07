using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;


namespace SMS
{
    public partial class AddContent : System.Web.UI.Page
    {
        SqlConnection SqlConn = new SqlConnection(ConfigurationManager.AppSettings["ConnString"]);
        SqlCommand SqlCmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label6.Text = Request.QueryString["cid"];
            Label1.Text = Request.QueryString["cid"];
            Session["cid"] = Label6.Text;
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
            if(x > 0)
            {
                Label5.Text = "Course Updated";
            }
            else
            {
                Label5.Text = "error";
            } 
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConn.Open();
            SqlCmd = new SqlCommand("SMS", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@query_type", SqlDbType.VarChar).Value = "updatecourse";
            SqlCmd.Parameters.Add("@Course_ID", SqlDbType.BigInt).Value = Convert.ToInt64(Label1.Text);
            SqlCmd.Parameters.Add("@Course_Name", SqlDbType.VarChar).Value = TextBox1.Text;
            SqlCmd.Parameters.Add("@Duration", SqlDbType.VarChar).Value = TextBox2.Text;
            SqlCmd.Parameters.Add("@Total_Fee", SqlDbType.BigInt).Value = TextBox3.Text;
            SqlCmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = TextBox4.Text;
            int x = SqlCmd.ExecuteNonQuery();
            if(x > 0)
            {
                Label2.Text = "Course Updated";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConn.Open();
            SqlCmd = new SqlCommand("SMS", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@query_type", SqlDbType.VarChar).Value = "deletecourse";
            SqlCmd.Parameters.Add("@Course_ID", SqlDbType.BigInt).Value = Convert.ToInt64(Label1.Text);
            int x = SqlCmd.ExecuteNonQuery();
            if (x > 0)
            {
                Label7.Text = "Course deleted";
            }
        }
    }
}