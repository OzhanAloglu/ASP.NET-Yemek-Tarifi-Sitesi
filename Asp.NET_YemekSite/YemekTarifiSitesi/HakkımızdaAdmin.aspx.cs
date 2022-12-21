using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSitesi
{
    public partial class HakkımızdaAdmin : System.Web.UI.Page
    {
        sqlEntityBaglanti bgl = new sqlEntityBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {

                SqlCommand komut = new SqlCommand("select * from TBL_HAKKIMIZDA",bgl.baglanti());
                SqlDataReader dr = komut.ExecuteReader();

                while (dr.Read())
                {
                    txt_acıklama.Text = dr[1].ToString();
                }

                bgl.baglanti().Close();
            }
        }

        protected void btn_Güncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("update TBL_HAKKIMIZDA set Metin=@p1",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1",txt_acıklama.Text);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}