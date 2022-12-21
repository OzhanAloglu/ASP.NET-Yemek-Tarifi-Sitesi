using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    
    public partial class KATEGORİLER : System.Web.UI.Page
    {
        sqlEntityBaglanti bgl=new sqlEntityBaglanti();
        Dbo_YemekTarifiEntities dbo = new Dbo_YemekTarifiEntities();

        string id = "";
        string islem = "";


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                id = Request.QueryString["Kategoriid"];
                islem = Request.QueryString["islem"];
            }


            var query = from item in  dbo.TBL_KATEGORİLER
                        select new { item.KategoriAd,item.Kategoriid };
            DataList1.DataSource= query.ToList();
            DataList1.DataBind();

            if (islem=="sil")
            {
                
                SqlCommand komut = new SqlCommand("delete from TBL_KATEGORİLER where Kategoriid=@p1", bgl.baglanti()) ;
                komut.Parameters.AddWithValue("@p1", id);
                komut.ExecuteNonQuery();
                bgl.baglanti().Close();
            }

            Panel2.Visible= false;
            Panel4.Visible= false;
        }

        protected void btn_artı_Click(object sender, EventArgs e)
        {
            Panel2.Visible= true;
            
           
        }

        protected void btn_eksi_Click(object sender, EventArgs e)
        {
            Panel2.Visible= false;
           
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       
        protected void btn_artı2_Click1(object sender, EventArgs e)
        {
            Panel4.Visible= true;
        }

        protected void btn_eksi2_Click1(object sender, EventArgs e)
        {
            Panel4.Visible=false;
        }

        protected void btn_ekle_Click1(object sender, EventArgs e)
        {
            TBL_KATEGORİLER ekle = new TBL_KATEGORİLER();
            ekle.KategoriAd = txt_kategoriAd.Text;
            ekle.KategoriResim = FileUpload1.FileName;

            dbo.TBL_KATEGORİLER.Add(ekle);
            dbo.SaveChanges();
            Response.Write("<script> Kategori Eklendi. </script>");
        }
    }
}