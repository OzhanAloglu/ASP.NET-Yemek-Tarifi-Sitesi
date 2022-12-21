using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSitesi
{
    public partial class AnaSayfa : System.Web.UI.Page
    {
        Dbo_YemekTarifiEntities dbo = new Dbo_YemekTarifiEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            var query = from item in dbo.TBL_YEMEKLER
                        select new { item.YemekAd, item.YemekMalzeme, item.YemekTarif, item.YemekTarih, item.YemekPuan,item.Yemekid };
            DataList2.DataSource = query.ToList();
            DataList2.DataBind();


        }
    }
}