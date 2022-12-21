using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        Dbo_YemekTarifiEntities dbo=new Dbo_YemekTarifiEntities();
        sqlEntityBaglanti bgl=new sqlEntityBaglanti();
        string yemekid = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            yemekid = Request.QueryString["yemekid"];
            SqlCommand komut = new SqlCommand("select YemekAd from TBL_YEMEKLER where yemekid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", yemekid);
            SqlDataReader dr = komut.ExecuteReader();

            while (dr.Read())
            {
                Label4.Text = dr[0].ToString();
            }
           

            //YORUMLARI LİSTELEME

        

            SqlCommand komut2 = new SqlCommand("select * from TBL_YORUMLAR where yemekid=@p2", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p2",yemekid);
            SqlDataReader dr2=komut2.ExecuteReader();
            DataList2.DataSource= dr2;
            DataList2.DataBind();
            bgl.baglanti().Close();
        }

        protected void txt_yorumyap_Click(object sender, EventArgs e)
        {
            //ENTİTY KISMI


            //TBL_YORUMLAR yorum=new TBL_YORUMLAR();

            //yorum.YorumAdSoyad=txt_Adsoyad.Text;
            //yorum.YorumMail=txt_mail.Text;
            //yorum.Yorumİcerik = txt_yorum.Text;

            //dbo.TBL_YORUMLAR.Add(yorum);
            //dbo.SaveChanges();
            
            SqlCommand komut = new SqlCommand("insert into TBL_YORUMLAR (yorumadsoyad,yorummail,yorumicerik,yemekid)values(@p1,@p1,@p3,@p4)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", txt_Adsoyad.Text);
            komut.Parameters.AddWithValue("@p2", txt_mail.Text);
            komut.Parameters.AddWithValue("@p3", txt_yorum.Text);
            komut.Parameters.AddWithValue("@p4", yemekid);

            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            txt_Adsoyad.Text = "";
            txt_mail.Text = "";
            txt_yorum.Text = "";



        }
    }
}