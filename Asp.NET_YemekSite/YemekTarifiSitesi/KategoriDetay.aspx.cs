using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
       sqlEntityBaglanti bgl=new sqlEntityBaglanti();

        string kategoriid = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
            kategoriid = Request.QueryString["Kategoriid"];
            SqlCommand komut = new SqlCommand("select * from TBL_YEMEKLER where Kategoriid=@p5", bgl.baglanti());

            komut.Parameters.AddWithValue("@p5", kategoriid);
            
            SqlDataReader dr=komut.ExecuteReader();
            DataList2.DataSource= dr;
            DataList2.DataBind();
            bgl.baglanti().Close();

            
        }
    }
}