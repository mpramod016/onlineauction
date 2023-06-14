using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Bidding : System.Web.UI.Page
{
    string connStr = ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString;
    SqlCommand com;
    string str;
    SqlCommand cmd;
    SqlConnection con;
    String CS = ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString;
    SqlDataReader rdr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindBrandsRptr();
            AutoId();
            string ID = Request.QueryString["ItemId"].ToString();
            string sql = "select * from ItemTable where ItemId='" + ID + "'";
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString;
            SqlDataAdapter adpt = new SqlDataAdapter(sql, con.ConnectionString);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            Itemname.Text = dt.Rows[0]["Itemname"].ToString();
            Itemmanufactor.Text = dt.Rows[0]["Itemmanufactor"].ToString();
            Price.Text = dt.Rows[0]["Itemprice"].ToString();
            Itemcategory.Text = dt.Rows[0]["Itemcategory"].ToString();
            lblItemID.Text = dt.Rows[0]["ItemID"].ToString();
        }
    }
    private void AutoId()
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
            lblID.Text = Convert.ToString(Num);
            lblBooking.Text = Convert.ToString("BID-" + Num);
        }
        else
        {
            Num = (int)(cmd.ExecuteScalar());

            lblID.Text = Convert.ToString(Num);
            lblBooking.Text = Convert.ToString("BID-" + Num);
        }
        cmd.Dispose();
        con.Close();
        con.Dispose();

    }
    private void BindBrandsRptr()
    {
        String ID = Request.QueryString["ItemId"].ToString();
        String CS = ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select * from ItemTable Inner Join ItemImagetbl  on ItemTable.ItemId = ItemImagetbl.ImageId Where ItemImagetbl.ImageId='" + ID + "'", con))
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
    protected void btnBid_Click(object sender, EventArgs e)
    { 
        string UserID = Session["ID"].ToString();
        string Username = Session["Username"].ToString();
           string ID = Request.QueryString["ItemId"].ToString();
        AutoId();

        String CS = ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlConnection con1 = new SqlConnection(connStr);
            con1.Open();
            str = "select count(*)from BidTable where UserID='" + UserID + "' And ItemID='" + ID + "'";
            com = new SqlCommand(str, con1);
            int count = Convert.ToInt32(com.ExecuteScalar());
            if (count > 0)
            {
                string message = "Your Already Bid this item check your my biddling Page";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(message);
                sb.Append("')};");
                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                return;
            }
            else
            {
           con.Open();
           SqlCommand cmd = new SqlCommand("insert into BidTable(BidID,ItemID,Itemname,Itemmanufactor,Itemprice,Itemcategory,BiddingPrice,UserID,Username,Action) values('" + lblBooking.Text + "','" + lblItemID.Text + "','" + Itemname.Text + "','" + Itemmanufactor.Text + "','" + Price.Text + "','" + Itemcategory.Text + "','"+ txtEnterAmount.Text +"','" + UserID + "','" + Username + "','pur')", con);
            cmd.ExecuteNonQuery();
            Response.Redirect("ViewResult.aspx");
            }
        }
    }
}