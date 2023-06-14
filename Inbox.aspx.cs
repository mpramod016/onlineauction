using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Inbox : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    String CS = ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString;
    SqlDataReader rdr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            BindProjectRptr();
            BindProjectRptr1();
        }
    }
    private void BindProjectRptr()
    {
        String Mail = Session["Email"].ToString();
        String CS = ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select * from InboxTable where MailTo='" + Mail + "'", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtBrands = new DataTable();
                    sda.Fill(dtBrands);
                    Repeater2.DataSource = dtBrands;
                    Repeater2.DataBind();
                }

            }
        }
    }
    private void BindProjectRptr1()
    {
        String Mail = Session["Email"].ToString();
        String CS = ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select * from InboxTable where MailFrom='" + Mail + "'", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtBrands = new DataTable();
                    sda.Fill(dtBrands);
                    Repeater1.DataSource = dtBrands;
                    Repeater1.DataBind();
                }

            }
        }
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        String Mail = Session["Email"].ToString();
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString);
        con.Open();
        string myquery = null;
        myquery = "insert into InboxTable values('" + txtTo.Text + "','" + Mail + "','" + txtSubject.Text + "','" + txtMessage.Text + "')";
        cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = myquery;
        cmd.ExecuteNonQuery();
        txtTo.Text = "";
        txtSubject.Text = "";
        txtMessage.Text = "";
        BindProjectRptr1();
            BindProjectRptr();
        string message = "Send";
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