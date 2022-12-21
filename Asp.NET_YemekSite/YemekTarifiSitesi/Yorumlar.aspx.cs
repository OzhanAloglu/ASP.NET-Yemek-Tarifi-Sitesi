using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        sqlEntityBaglanti bgl=new sqlEntityBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel5.Visible = false;
            //Onaylı Yorumlar
            
            SqlCommand komut = new SqlCommand("select * from TBL_YORUMLAR where YorumOnay=1 ",bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
           

            //ONAYSIZ YORUM LİSTESİ
            
            SqlCommand komut3 = new SqlCommand("select * from TBL_YORUMLAR where YorumOnay=0  ", bgl.baglanti());
            SqlDataReader dr3 = komut3.ExecuteReader();
            DataList2.DataSource = dr3;
            DataList2.DataBind();
            bgl.baglanti().Close();

        }

        protected void btn_artı_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void btn_eksi_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel5.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel5.Visible = false;
        }
    }
}