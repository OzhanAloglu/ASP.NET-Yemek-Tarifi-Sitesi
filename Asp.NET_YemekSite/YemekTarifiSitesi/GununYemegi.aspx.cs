using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSitesi
{
    public partial class GununYemegi : System.Web.UI.Page
    {
       sqlEntityBaglanti bgl=new sqlEntityBaglanti();

        protected void Page_Load(object sender, EventArgs e)
        {
            
            SqlCommand komut = new SqlCommand("select * from TBL_YEMEKLER where durum=1", bgl.baglanti());
            SqlDataReader dr=komut.ExecuteReader();
            DataList2.DataSource=dr;
            DataList2.DataBind();
            bgl.baglanti().Close();
        }
    }
}