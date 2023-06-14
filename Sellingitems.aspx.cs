using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Sellingitems : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString;
    string connStr = ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString;
    SqlCommand com;
    string str;
    SqlDataReader rdr = null;
    SqlConnection con = null;
    SqlCommand cmd = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            AutoId();
            AutoId1();
        }
    }

    private void AutoId1()
    {
        int Num = 0;
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString);
        con.Open();
        string sql = "SELECT MAX(ID+1) FROM BidTable";
        cmd = new SqlCommand(sql);
        cmd.Connection = con;
        if (Convert.IsDBNull(cmd.ExecuteScalar()))
        {
            Num = 1;
            lblID1.Text = Convert.ToString(Num);
            lblItemID1.Text = Convert.ToString("BD" + Num);
        }
        else
        {
            Num = (int)(cmd.ExecuteScalar());

            lblID1.Text = Convert.ToString(Num);
            lblItemID1.Text = Convert.ToString("BD" + Num);
        }
        cmd.Dispose();
        con.Close();
        con.Dispose();

    }
    private void AutoId()
    {
        int Num = 0;
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString);
        con.Open();
        string sql = "SELECT MAX(ID+1) FROM ItemTable";
        cmd = new SqlCommand(sql);
        cmd.Connection = con;
        if (Convert.IsDBNull(cmd.ExecuteScalar()))
        {
            Num = 1;
            lblID.Text = Convert.ToString(Num);
            lblItemID.Text = Convert.ToString("UA" + Num);
        }
        else
        {
            Num = (int)(cmd.ExecuteScalar());

            lblID.Text = Convert.ToString(Num);
            lblItemID.Text = Convert.ToString("UA" + Num);
        }
        cmd.Dispose();
        con.Close();
        con.Dispose();

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string Username = Session["Username"].ToString();
        string UserID = Session["ID"].ToString();
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into ItemTable values('" + lblItemID.Text + "','" + txtnameitem.Text + "','" + txtnamemanufactuer.Text + "','" + txtprice.Text + "','" + txtdate.Text + "','" + DropDownList1.SelectedItem.Text + "','" + Username + "','" + UserID + "')", con);
            SqlCommand cmd1 = new SqlCommand("insert into BidTable values('" + lblItemID1.Text + "','" + lblItemID.Text + "','" + txtnameitem.Text + "','" + txtnamemanufactuer.Text + "','" + txtprice.Text + "','" + DropDownList1.SelectedItem.Text + "',0,'" + UserID + "','" + Username + "','pur')", con);
            cmd.ExecuteNonQuery();
            cmd1.ExecuteNonQuery();

            if (FileUpload1.HasFile)
            {
                string SavePath = Server.MapPath("Images/Service/") + lblItemID.Text;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                string Extention = Path.GetExtension(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(SavePath + "\\" + txtnameitem.Text.ToString().Trim() + "01" + Extention);

                SqlCommand cmd3 = new SqlCommand("insert into ItemImagetbl values('" + lblItemID.Text + "','" + txtnameitem.Text.ToString().Trim() + "01" + "','" + Extention + "')", con);
                cmd3.ExecuteNonQuery();
                string script = "alert(\"Successfull Added\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                Response.Redirect("MySelling.aspx");
                AutoId();
            }
        }
    }
}