using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSitesi
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        sqlEntityBaglanti bgl=new sqlEntityBaglanti();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
           
            id = Request.QueryString["Mesajid"];
            SqlCommand komut = new SqlCommand("select * from TBL_MESAJLAR where Mesajid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr= komut.ExecuteReader();

            while (dr.Read())
            {
                txt_Adısoyadı.Text = dr[1].ToString();
                txt_mesajbaslık.Text= dr[2].ToString();
                txtmail.Text= dr[3].ToString();
                txtiçerik.Text= dr[4].ToString();


            }
            bgl.baglanti().Close();
        }
    }
}