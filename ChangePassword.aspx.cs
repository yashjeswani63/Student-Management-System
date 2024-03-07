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
    public partial class ChangePassword : System.Web.UI.Page
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

            if (Session["Email"] != null)
            {
                TextBox1.Text = Convert.ToString(Session["Email"]);
            }
            else
            {
                TextBox1.Text = Convert.ToString(Session["Mobile"]);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConn.Open();
            SqlCmd = new SqlCommand("SMS", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@query_type", SqlDbType.VarChar).Value = "changepassword";
            String x = TextBox1.Text;
            if (x.Contains("@"))
            {
                SqlCmd.Parameters.Add("@Email_ID", SqlDbType.VarChar).Value = TextBox1.Text;
            }
            else
            {
                SqlCmd.Parameters.Add("@Mobile_No", SqlDbType.BigInt).Value = TextBox1.Text;
            }
            Func obj = new Func();
            SqlCmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = obj.EncryptString(TextBox2.Text);
            SqlCmd.Parameters.Add("@UserType", SqlDbType.VarChar).Value = Session["UserType"].ToString();
            SqlDataReader sqldr = SqlCmd.ExecuteReader();
            if (sqldr.HasRows)
            {
                Session["ID"] = TextBox1.Text;
                Response.Redirect("ChangePassword2.aspx");
            }
            else
            {
                Label3.Text = "Invalid Details";
            }
        }
    }
}