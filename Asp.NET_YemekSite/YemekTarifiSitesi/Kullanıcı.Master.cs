using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSitesi
{
    public partial class Kullanıcı : System.Web.UI.MasterPage
    {
        Dbo_YemekTarifiEntities dbo = new Dbo_YemekTarifiEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var query = from item in dbo.TBL_KATEGORİLER
                        select new { item.KategoriAd,item.KategoriAdet,item.Kategoriid};
            DataList1.DataSource = query.ToList();
            DataList1.DataBind();

            



        }
    }
}