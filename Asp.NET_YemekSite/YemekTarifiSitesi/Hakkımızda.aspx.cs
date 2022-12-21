using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSitesi
{
    public partial class Hakkımızda : System.Web.UI.Page
    {
        Dbo_YemekTarifiEntities dbo=new Dbo_YemekTarifiEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var query = from item in dbo.TBL_HAKKIMIZDA
                        select new { item.Metin,item.Metinid };
            DataList2.DataSource= query.ToList();
            DataList2.DataBind();



        }
    }
}