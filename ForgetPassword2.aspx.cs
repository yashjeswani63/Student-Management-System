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
    public partial class ForgetPassword2 : System.Web.UI.Page
    {
        SqlConnection SqlConn = new SqlConnection(ConfigurationManager.AppSettings["ConnString"]);
        SqlCommand SqlCmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConn.Open();
            Func obj = new Func();
            SqlCmd = new SqlCommand("SMS", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@query_type", SqlDbType.VarChar).Value = "ForgotPassword2";
            SqlCmd.Parameters.Add("@otp", SqlDbType.BigInt).Value = Convert.ToInt64(TextBox3.Text);
            SqlCmd.Parameters.Add("@Email_ID", SqlDbType.VarChar).Value = Convert.ToString(Session["Email_otp"]);
            SqlCmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = obj.EncryptString(TextBox1.Text);
            String message = Convert.ToString(SqlCmd.ExecuteScalar());
            if(message != "")
            {
                Label3.Text = message;
            }
            else
            {
                Label4.Text = "OTP is incorrect";
            }
        }
    }
}