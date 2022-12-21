using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class Mesajlar : System.Web.UI.Page
    {
        sqlEntityBaglanti bgl = new sqlEntityBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Panel2.Visible= false;
            SqlCommand komut = new SqlCommand("select * from TBL_MESAJLAR",bgl.baglanti());
            SqlDataReader dr=komut.ExecuteReader();
            DataList1.DataSource= dr;
            DataList1.DataBind();
            bgl.baglanti().Close();

        }

        protected void btn_eksi_Click(object sender, EventArgs e)
        {
            Panel2.Visible= false;  
        }

        protected void btn_artı_Click1(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }
    }
}