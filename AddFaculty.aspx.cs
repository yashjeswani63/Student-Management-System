using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace SMS
{
    public partial class AddFaculty : System.Web.UI.Page
    {

        SqlConnection SqlConn = new SqlConnection(ConfigurationManager.AppSettings["ConnString"]);
        SqlCommand SqlCmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                TextBox12.Text = Request.QueryString["cid"];
                SqlConn.Open();
                SqlCmd = new SqlCommand("SMS", SqlConn);
                SqlCmd.CommandType = CommandType.StoredProcedure;
                SqlCmd.Parameters.Add("@query_Type", SqlDbType.VarChar).Value = "bind_state";

                SqlDataAdapter sqldata = new SqlDataAdapter(SqlCmd);
                DataTable dt = new DataTable();
                sqldata.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    DropDownList1.DataSource = dt;
                    DropDownList1.DataTextField = "State_Name";
                    DropDownList1.DataValueField = "State_ID";
                    DropDownList1.DataBind();
                    DropDownList1.Items.Insert(0, "select");

                }
                else
                {
                    DropDownList1.DataSource = "";
                    DropDownList1.DataBind();
                    DropDownList1.Items.Insert(0, "select");

                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConn.Open();
            SqlCommand SqlCmd = new SqlCommand("SMS", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@query_type", SqlDbType.VarChar).Value = "insert_faculty";
            SqlCmd.Parameters.Add("@First_Name", SqlDbType.VarChar).Value = TextBox1.Text;
            SqlCmd.Parameters.Add("@Last_Name", SqlDbType.VarChar).Value = TextBox2.Text;
            SqlCmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = RadioButtonList1.SelectedValue;
            SqlCmd.Parameters.Add("@Mobile_No", SqlDbType.BigInt).Value = TextBox3.Text;
            SqlCmd.Parameters.Add("@YearsofExp", SqlDbType.Int).Value = TextBox12.Text;
            SqlCmd.Parameters.Add("@Expertise", SqlDbType.VarChar).Value = TextBox13.Text;
            SqlCmd.Parameters.Add("@Email_ID", SqlDbType.VarChar).Value = TextBox4.Text;
            Func obj = new Func();
            SqlCmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = obj.EncryptString(TextBox10.Text);
            SqlCmd.Parameters.Add("@State", SqlDbType.VarChar).Value = DropDownList1.SelectedValue;
            SqlCmd.Parameters.Add("@City", SqlDbType.VarChar).Value = DropDownList2.SelectedValue;
            SqlCmd.Parameters.Add("@Location", SqlDbType.VarChar).Value = TextBox5.Text;
            SqlCmd.Parameters.Add("@Landmark", SqlDbType.VarChar).Value = TextBox6.Text;
            SqlCmd.Parameters.Add("@PINCODE", SqlDbType.BigInt).Value = TextBox7.Text;
            String y = Convert.ToString(SqlCmd.ExecuteScalar());

            if (y == "User Already exists")
            {
                Label1.Text = y;
            }
            else if (y == "Successfully Registered")
            {
                Label1.Text = y;
            }
            else
            {
                Label1.Text = "error";
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConn.Open();
            SqlCommand SqlCmd = new SqlCommand("SMS", SqlConn);
            SqlCmd.CommandType = CommandType.StoredProcedure;
            SqlCmd.Parameters.Add("@query_type", SqlDbType.VarChar).Value = "bind_city";
            SqlCmd.Parameters.Add("@State_ID", SqlDbType.BigInt).Value = DropDownList1.SelectedValue;

            SqlDataReader sqldr = SqlCmd.ExecuteReader();
            if (sqldr.HasRows)
            {
                DropDownList2.DataSource = sqldr;
                DropDownList2.DataTextField = "City_Name";
                DropDownList2.DataValueField = "City_ID";
                DropDownList2.DataBind();
            }
            else
            {
                DropDownList2.DataSource = "";
                DropDownList2.DataBind();
            }
        }
    }
}