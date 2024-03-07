using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace SMS
{
    public partial class ChangePassword2 : System.Web.UI.Page
    {
        SqlConnection SqlConn = new SqlConnection(ConfigurationManager.AppSettings["ConnString"]);
        SqlCommand SqlCmd;
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["UserType"]) == "Admin")
                this.MasterPageFile = "Admin.Master";
            else if (Convert.ToString(Session["UserType"]) == "Student")
                this.MasterPageFile = "loginStudent.Master";
            else if (Convert.ToString(Session["UserType"]) == "Faculty")
                this.MasterPageFile = "Faculty.Master";
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConn.Open();
            SqlCmd = new SqlCommand("SMS", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@query_type", SqlDbType.VarChar).Value = "changepassword2";
            String x = Convert.ToString(Session["ID"]);
            if (x.Contains("@"))
            {
                SqlCmd.Parameters.Add("@Email_ID", SqlDbType.VarChar).Value = Session["ID"];
            }
            else
            {
                SqlCmd.Parameters.Add("@Mobile_No", SqlDbType.BigInt).Value = Session["ID"];
            }
            Func obj = new Func();
            SqlCmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = obj.EncryptString(TextBox1.Text);
            SqlCmd.Parameters.Add("@UserType", SqlDbType.VarChar).Value = Session["UserType"].ToString();
            int y = SqlCmd.ExecuteNonQuery();
            if (y > 0)
            {
                Label3.Text = "Password Change Successfully";
                TextBox1.Text = "";
                TextBox2.Text = "";
                Session.Abandon();
            }
            else
            {
                Label3.Text = "Error";
            }
        }
    }
}