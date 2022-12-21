using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSitesi
{
    public partial class Tarifler : System.Web.UI.Page
    {
        sqlEntityBaglanti bgl=new sqlEntityBaglanti();

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel3.Visible= false;
            Panel5.Visible= false;

            SqlCommand komut = new SqlCommand("select * from TBL_TARİFLER where TarifDurum=0",bgl.baglanti());
            SqlDataReader dr= komut.ExecuteReader();
            
            DataList1.DataSource=dr;
            DataList1.DataBind();
            

            SqlCommand komut2 = new SqlCommand("select * from TBL_TARİFLER where TarifDurum=1",bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();

            DataList2.DataSource = dr2;
            DataList2.DataBind();

        }

        protected void btn_artı_Click(object sender, EventArgs e)
        {
            Panel3.Visible= true;
        }

        protected void btn_eksi_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
        }

        protected void BTN_ARTI2_Click(object sender, EventArgs e)
        {
            Panel5.Visible = true;
           
        }

        protected void btn_eksi2_Click(object sender, EventArgs e)
        {
            Panel5.Visible = false;
        }
    }
}