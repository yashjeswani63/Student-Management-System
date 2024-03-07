using System;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Net;
using System.Net.Mail;

namespace SMS
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        SqlConnection SqlConn = new SqlConnection(ConfigurationManager.AppSettings["ConnString"]);
        SqlCommand SqlCmd;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }




        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConn.Open();
            EmailSender obj1 = new EmailSender();
            Random rnd = new Random();
            int randomNumber = rnd.Next(100000, 999999);
            SqlCmd = new SqlCommand("SMS", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@query_type", SqlDbType.VarChar).Value = "forgotpassword";
            String x = TextBox1.Text;
            if (x.Contains("@"))
            {
                SqlCmd.Parameters.Add("@Email_ID", SqlDbType.VarChar).Value = TextBox1.Text;
            }
            else
            {
                SqlCmd.Parameters.Add("@Mobile_No", SqlDbType.BigInt).Value = TextBox1.Text;
            }
            SqlCmd.Parameters.Add("@otp", SqlDbType.BigInt).Value = randomNumber;
            SqlDataReader sqldr = SqlCmd.ExecuteReader();
            

            
            
            if (sqldr.Read())
            {
                obj1.SendEmail(sqldr["User_ID"].ToString(), randomNumber.ToString());
                Session["Email_otp"] = sqldr["User_ID"];
                Response.Redirect("ForgetPassword2.aspx");
            }
            else
            {
                Label2.Text = "id is incorrect";
            }
        }
    }
}