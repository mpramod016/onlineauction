using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewResult : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
          
            BindBrandsRptr();

        }
    }
    private void BindBrandsRptr()
    {
        String id = Session["ID"].ToString();
        String CS = ConfigurationManager.ConnectionStrings["ConnectionStrings"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select * from ItemTable Inner Join ItemImagetbl  on ItemTable.ItemId = ItemImagetbl.ImageId Inner join  BidTable on BidTable.ItemId =ItemTable.ItemId Where BidTable.Action='pur'", con))
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