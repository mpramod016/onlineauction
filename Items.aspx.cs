using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Items : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           // LblDate.Text = System.DateTime.Now.ToString("yyyy-MM-dd");
            BindBrandsRptr();

        }
    }
    private void BindBrandsRptr()
    {
        String id = Session["ID"].ToString();
        String CS = ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select * from ItemTable Inner Join ItemImagetbl  on ItemTable.ItemId = ItemImagetbl.ImageId Where ItemTable.UserID!='" + id + "' order by ItemTable.ItemId asc", con))
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
}