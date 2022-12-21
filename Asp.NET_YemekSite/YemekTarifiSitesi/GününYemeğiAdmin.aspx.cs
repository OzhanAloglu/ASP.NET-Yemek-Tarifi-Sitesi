using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSitesi
{
    public partial class GününYemeğiAdmin : System.Web.UI.Page
    {
        sqlEntityBaglanti bgl=new sqlEntityBaglanti();

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible= false;
           
            SqlCommand komut = new SqlCommand("select * from TBL_YEMEKLER", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();

            DataList1.DataSource= dr;
            DataList1.DataBind();
            bgl.baglanti().Close();

        }

        protected void BTN_aRTI_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void btn_eksi_Click(object sender, EventArgs e)
        {
            Panel2.Visible= false;
        }
    }
}