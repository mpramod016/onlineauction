using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

public partial class RegistrationPage : System.Web.UI.Page
{

    string connStr = ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString;
    SqlCommand com;
    string str;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click1(object sender, EventArgs e)
    {
        string Username = this.txtusername.Text;
        string Firstname = this.txtfirstname.Text;
        string Lastname = this.txtlastname.Text;
        string Email = this.txtemail.Text;
        string Gender = this.GenderDropDown.SelectedItem.Text;
        string Address = this.txtaddress.Text;
        string Password = this.txtpassword.Text;
        string ConfirmPassword = this.txtconfirmpassword.Text;
        string Mobile = this.txtmobile.Text;

        String CS = ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlConnection con1 = new SqlConnection(connStr);
            con1.Open();
            str = "select count(*)from RegistrationTable where Email='" + txtemail.Text + "' And Username='"+ txtusername.Text +"'";
            com = new SqlCommand(str, con1);
            int count = Convert.ToInt32(com.ExecuteScalar());
            if (count > 0)
            {
                string message = "Your Email or Username is Already Register With us Try Again!!!!";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(message);
                sb.Append("')};");
                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }
            else
            {
                SqlCommand cmd = new SqlCommand("insert into RegistrationTable values('" + Username + "','" + Firstname + "','" + Lastname + "','" + Email + "','" + Gender + "','" + Address + "','" + Password + "','" + ConfirmPassword + "','" + Mobile + "','User')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Redirect("LoginPage.aspx");
            }
        }
    }
}