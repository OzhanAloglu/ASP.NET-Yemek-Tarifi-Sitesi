using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSitesi
{
    public partial class TarifÖnerDetay : System.Web.UI.Page
    {

        sqlEntityBaglanti bgl = new sqlEntityBaglanti();

        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Tarifid"];

            if (Page.IsPostBack == false)
            {

                SqlCommand komut = new SqlCommand("select * from TBL_TARİFLER where Tarifid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();

                while (dr.Read())
                {
                    txt_tarifad.Text = dr[1].ToString();
                    txt_tarifmalzeme.Text = dr[2].ToString();
                    txt_tarifyapilis.Text = dr[3].ToString();
                    txt_tariföneren.Text = dr[5].ToString();
                    txt_önerenmail.Text = dr[6].ToString();
                }

                bgl.baglanti().Close();
            }

            SqlCommand komut2 = new SqlCommand("select * from TBL_KATEGORİLER", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DropDownList1.DataTextField = "KategoriAd";    //Kullanıcının gördüğü..
            DropDownList1.DataValueField = "Kategoriid";    //Bizim referans işlemimiz

            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();
            bgl.baglanti().Close();
        }

        protected void btn_onayla_Click(object sender, EventArgs e)
        {
            //Durum GÜNCELLEME

            SqlCommand komut = new SqlCommand("update TBL_TARİFLER set TarifDurum=1 where Tarifid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();


            //Yemeği Ana Sayfaya Ekleme

            SqlCommand komut2 = new SqlCommand("insert into TBL_YEMEKLER (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values(@p1,@p2,@p3,@p4)", bgl.baglanti());

            komut2.Parameters.AddWithValue("@p1", txt_tarifad.Text);
            komut2.Parameters.AddWithValue("@p2", txt_tarifmalzeme.Text);
            komut2.Parameters.AddWithValue("@p3", txt_tarifyapilis.Text);
            komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);

            komut2.ExecuteNonQuery();

            bgl.baglanti().Close();


        }
    }
}