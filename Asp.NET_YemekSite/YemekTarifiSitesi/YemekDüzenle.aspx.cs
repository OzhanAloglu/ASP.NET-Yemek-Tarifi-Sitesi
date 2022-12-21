using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    
    public partial class YemekDüzenle : System.Web.UI.Page
    {

        sqlEntityBaglanti bgl = new sqlEntityBaglanti();
          string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yemekid"];


            
           
            if (Page.IsPostBack == false)
            {
                
                SqlCommand komut = new SqlCommand("select * from TBL_YEMEKLER where Yemekid=@p2", bgl.baglanti());
                komut.Parameters.AddWithValue("@p2", id);
                SqlDataReader dr = komut.ExecuteReader();

                while (dr.Read())
                {
                    txt_yemekad.Text = dr[1].ToString();
                    txt_malzemelerr.Text = dr[2].ToString();
                    txt_yemektariff.Text = dr[3].ToString();
                    
                }
                bgl.baglanti().Close();
            }

            if (Page.IsPostBack == false)
            {
                

                SqlCommand komut2 = new SqlCommand("select * from TBL_KATEGORİLER", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();
                DropDownList2.DataTextField = "KategoriAd";    //Kullanıcının gördüğü..
                DropDownList2.DataValueField = "Kategoriid";    //Bizim referans işlemimiz

                DropDownList2.DataSource = dr2;
                DropDownList2.DataBind();
                bgl.baglanti().Close();

            }


        }

        protected void btn_güncelle_Click(object sender, EventArgs e)
        {

            FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));
            
            SqlCommand komut = new SqlCommand("update TBL_YEMEKLER set yemekad=@p1,yemekmalzeme=@p2,yemektarif=@p3,kategoriid=@p4,yemekresim=@p6 where yemekid=@p5",bgl.baglanti());

            komut.Parameters.AddWithValue("@p1", txt_yemekad.Text);
            komut.Parameters.AddWithValue("@p2", txt_malzemelerr.Text);
            komut.Parameters.AddWithValue("@p3", txt_yemektariff.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList2.SelectedValue);
            komut.Parameters.AddWithValue("@p5", id);
            komut.Parameters.AddWithValue("@p6", "~/resimler/" + FileUpload1.FileName);
            komut.ExecuteNonQuery();

            bgl.baglanti().Close();


        }

        protected void btn_gününyemek_Click(object sender, EventArgs e)
        {
            //TÜM YEMEKLERİN DURUMU FALSE YAPILDI
            
            SqlCommand komut = new SqlCommand("update TBL_YEMEKLER set Durum=0", bgl.baglanti());
            komut.ExecuteNonQuery();
           
            //GÜNÜN YEMEĞİNİ İD E GÖRE TRUE YAPALIM

            
            SqlCommand komut2 = new SqlCommand("update TBL_YEMEKLER set  durum=1 where Yemekid=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", id);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}