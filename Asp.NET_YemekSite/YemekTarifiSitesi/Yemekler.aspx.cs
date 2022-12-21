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
    public partial class Yemekler : System.Web.UI.Page
    {
        //ENTİTY.

        Dbo_YemekTarifiEntities dbo=new Dbo_YemekTarifiEntities();
        sqlEntityBaglanti bgl = new sqlEntityBaglanti();

        string islem = "";
        string id = "";

        //ADO.NET BAGLANTISI

       
        protected void Page_Load(object sender, EventArgs e)
        {
            //ADO.NET İLE YAPIM.
            Panel2.Visible = false;
            Panel4.Visible = false;

           

            //ENTİTY İLE YAPIM.

            //Panel2.Visible= false;
            //Panel4.Visible=false;

            //var query = from item in dbo.TBL_YEMEKLER
            //            select new { item.YemekAd, item.Yemekid ,item.Kategoriid};
            //DataList1.DataSource = query.ToList();
            //DataList1.DataBind();

            //KATEGORİ LİSTESİ
            if (Page.IsPostBack==false)
            {
                id = Request.QueryString["Yemekid"];
                islem = Request.QueryString["islem"];
                

                SqlCommand komut2 = new SqlCommand("select * from TBL_KATEGORİLER", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";    //Kullanıcının gördüğü..
                DropDownList1.DataValueField = "Kategoriid";    //Bizim referans işlemimiz

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
               

            }
            bgl.baglanti().Close();

            SqlCommand komut = new SqlCommand("select * from TBL_YEMEKLER ", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            bgl.baglanti().Close();


            if (islem == "sil")
            {
                
                SqlCommand komut2 = new SqlCommand("delete from TBL_YEMEKLER where Yemekid=@p1", bgl.baglanti());
                komut2.Parameters.AddWithValue("@p1", id);
                komut2.ExecuteNonQuery();
                bgl.baglanti().Close();
            }


        }

        protected void btn_artı_Click(object sender, EventArgs e)
        {
            Panel2.Visible= true;
        }

        protected void btn_eksi_Click(object sender, EventArgs e)
        {
            Panel2.Visible= false;
        }

        protected void btn_artı2_Click(object sender, EventArgs e)
        {
            Panel4.Visible= true;
        }

        protected void btn_eksi2_Click(object sender, EventArgs e)
        {
            Panel4.Visible= false;
        }

        public void BTN_YEMEKEKLE_Click(object sender, EventArgs e)
        {

            // Yemek EKleme

            SqlCommand komut3 = new SqlCommand("insert into TBL_YEMEKLER (YemekAd,YemekMalzeme,YemekTarif,Kategoriid)values(@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut3.Parameters.AddWithValue("@p1", txt_yemekadd.Text);
            komut3.Parameters.AddWithValue("@p2", txt_yemekmalzemee.Text);
            komut3.Parameters.AddWithValue("@p3", txt_yemektariff.Text);
            komut3.Parameters.AddWithValue("@p4",DropDownList1.SelectedValue);
            komut3.ExecuteNonQuery();
            bgl.baglanti().Close();

            txt_yemekadd.Text = "";
            txt_yemekmalzemee.Text = "";
            txt_yemektariff.Text = "";

            //Kategori sayısını arttırma
            
            SqlCommand komut2 = new SqlCommand("update TBL_KATEGORİLER set KategoriAdet=KategoriAdet+1 where Kategoriid=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1",DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}