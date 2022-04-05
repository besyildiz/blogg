using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.OleDb;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blogg.yonetim
{
    public partial class anasayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adi"]==null)
            {
           //     Response.Redirect("index.aspx");
            }
        }

        protected void btOturumuKapat_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("index.aspx");
        }
        OleDbConnection con;
        OleDbCommand komut;
        OleDbDataReader reader;
        string sorgu;

        protected void btIsimSoyisimKaydet_Click(object sender, EventArgs e)
        {
             con =  new OleDbConnection(ConfigurationManager.ConnectionStrings["baglanti_cumlem"].ConnectionString);
            con.Open();
            OleDbCommand komut;


            komut = new OleDbCommand("update kullanici set adi= '" + tbIsim.Text + "', soyadi= '" +
               tbSoyisim.Text + "'  where id=1", con);

            komut.ExecuteNonQuery();
        }
    }
}