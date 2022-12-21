using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSitesi
{
    public partial class iletisim : System.Web.UI.Page
    {
        Dbo_YemekTarifiEntities dbo=new Dbo_YemekTarifiEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Gönder_Click(object sender, EventArgs e)
        {
            TBL_MESAJLAR mesaj= new TBL_MESAJLAR();

            mesaj.MesajGönderen = txt_MesajAdSoyad.Text;
            mesaj.MesajMail=txt_MesajMailadres.Text;
            mesaj.MesajBaslik=txt_mesajkonu.Text;
            mesaj.Mesajicerik = txt_mesaj.Text;

            dbo.TBL_MESAJLAR.Add(mesaj);
            dbo.SaveChanges();
            Response.Write("<script> Mesajınız gönderilmiştir.<script/> ");

            txt_MesajAdSoyad.Text = "";
            txt_MesajMailadres.Text = "";
            txt_mesajkonu.Text = "";
            txt_mesaj.Text = "";

        }
    }
}