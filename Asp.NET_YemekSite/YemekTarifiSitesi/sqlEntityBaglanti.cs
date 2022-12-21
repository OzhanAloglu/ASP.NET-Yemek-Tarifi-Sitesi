using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace YemekTarifiSitesi
{
    public class sqlEntityBaglanti
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection("Data Source=ALOGLU\\SQLEXPRESS;Initial Catalog=Dbo_YemekTarifi;Integrated Security=True");
            baglan.Open();
            return baglan;
        }

        public Dbo_YemekTarifiEntities entitydbo()
        {
            Dbo_YemekTarifiEntities db = new Dbo_YemekTarifiEntities();
            return db;
        }



    }
}