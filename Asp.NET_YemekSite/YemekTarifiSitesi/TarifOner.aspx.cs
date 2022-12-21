using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSitesi
{
    public partial class TarifOner : System.Web.UI.Page
    {

        Dbo_YemekTarifiEntities dbo=new Dbo_YemekTarifiEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTarifÖner_Click(object sender, EventArgs e)
        {
            //Alınan tarifleri sql e yazdırma komutları. (Kaydet)

            TBL_TARİFLER tbltarifler=new TBL_TARİFLER();

            tbltarifler.TarifAd = TxtTarifAd.Text;
            tbltarifler.TarifMalzeme=TxtMalzemeler.Text;
            tbltarifler.Tarifyapilis=TxtYapilisi.Text;
            tbltarifler.TarifResim = FileResim.FileName;
            tbltarifler.TarifSahip=TxtTarifÖneren.Text;
            tbltarifler.TarifSahipMail = TxtMailAdresi.Text;

            dbo.TBL_TARİFLER.Add(tbltarifler);
            dbo.SaveChanges();
            Response.Write("<script> alert('Tarifiniz değerlendirildikten sonra paylaşılacaktır.') </script>");

            TxtTarifAd.Text = "";          
            TxtMalzemeler.Text = "";
            TxtYapilisi.Text = "";
            TxtTarifÖneren.Text = "";
            TxtMailAdresi.Text = "";
        }
    }
}