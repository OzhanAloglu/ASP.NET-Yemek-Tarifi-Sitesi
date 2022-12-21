using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        sqlEntityBaglanti bgl=new sqlEntityBaglanti();

        Dbo_YemekTarifiEntities dbo=new Dbo_YemekTarifiEntities();
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            
            id = Request.QueryString["Kategoriid"];
           
            if (Page.IsPostBack==false)
            {
                SqlCommand komut = new SqlCommand("select * from TBL_KATEGORİLER where Kategoriid=@p2", bgl.baglanti());
                komut.Parameters.AddWithValue("@p2", id);
                SqlDataReader dr = komut.ExecuteReader();

                while (dr.Read())
                {
                    txt_kategoriAd.Text = dr[1].ToString();
                    txt_kategoriadet.Text = dr[2].ToString();
                }
                
            }
            bgl.baglanti().Close();

        }

        protected void btn_güncelle_Click(object sender, EventArgs e)
        {

            
            SqlCommand komut = new SqlCommand("update TBL_KATEGORİLER set KategoriAd=@p1,KategoriAdet=@p2 where Kategoriid=@p3", bgl.baglanti());

            komut.Parameters.AddWithValue("@p1", txt_kategoriAd.Text);
            komut.Parameters.AddWithValue("@p2", txt_kategoriadet.Text);
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();


        }
    }
}