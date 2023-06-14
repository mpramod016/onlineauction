using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Data;
public partial class LoginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM RegistrationTable WHERE Username = '" + txtusername.Text + "'  AND Password = '" + txtpassword.Text + "'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                Session["ID"] = dt.Rows[0]["ID"].ToString();
                Session["Username"] = dt.Rows[0]["Username"].ToString();
                Session["Email"] = dt.Rows[0]["Email"].ToString();

                string Ulevel;
                Ulevel = dt.Rows[0][10].ToString().Trim();

                if (Ulevel == "User")
                {
                    Response.Redirect("Home.aspx");
                }
                if (Ulevel == "Admin")
                {
                    Response.Redirect("~/Admin/Pages/User.aspx");
                }

            }
            else
            {
                string message = "Invalid Username or Password !";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(message);
                sb.Append("')};");
                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }
        }
    }
}