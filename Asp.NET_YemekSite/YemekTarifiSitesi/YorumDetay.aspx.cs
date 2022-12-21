using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        sqlEntityBaglanti bgl=new sqlEntityBaglanti();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yorumid"];

            if (Page.IsPostBack==false)
            {
                
                SqlCommand komut = new SqlCommand("select YorumAdSoyad,YorumMail,Yorumİcerik,YemekAd from TBL_YORUMLAR inner join TBL_YEMEKLER on TBL_YORUMLAR.Yemekid=TBL_YEMEKLER.Yemekid where Yorumid=@p4", bgl.baglanti());
                komut.Parameters.AddWithValue("@p4", id);
                SqlDataReader dr = komut.ExecuteReader();

                while (dr.Read())
                {
                    txt_adsoyad.Text = dr[0].ToString();
                    txt_mail.Text = dr[1].ToString();
                    txt_içerik.Text = dr[2].ToString();
                    txt_yemek.Text = dr[3].ToString();

                }
                bgl.baglanti().Close();
            }
          

        }

        protected void btn_onayla_Click(object sender, EventArgs e)
        {
            
            SqlCommand komut = new SqlCommand("update TBL_YORUMLAR set Yorumİcerik=@p1,YorumOnay=@p2 where Yorumid=@p3",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",txt_içerik.Text);
            komut.Parameters.AddWithValue("p2", "True");
            komut.Parameters.AddWithValue("p3", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}