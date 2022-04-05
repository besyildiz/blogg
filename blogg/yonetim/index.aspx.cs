using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blogg.yonetim
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int sil = 0;
        }



        string kullaniciAdi, sifre, vKullaniciAdi, vSifre;

        OleDbConnection con;
        OleDbCommand komut;
        OleDbDataReader reader;
        string sorgu;
        protected void btGiris_Click(object sender, EventArgs e)
        {
            try
            {
                kullaniciAdi= tbKullaniciAdi.Text;
                sifre = tbSifre.Text;

                con = new OleDbConnection(ConfigurationManager.ConnectionStrings["baglanti_cumlem"].ConnectionString);
                con.Open();
                sorgu = "select * from kullanici where kullaniciadi='" + kullaniciAdi + "' and sifre='" + sifre+"'";
                komut = new OleDbCommand(sorgu, con);
                reader = komut.ExecuteReader();

                if (reader.Read())
                {
                    vKullaniciAdi = reader["kullaniciadi"].ToString();
                    vSifre = reader["sifre"].ToString();
                    Session["adi"] = reader["adi"].ToString();
                    Session["soyadi"] = reader["soyadi"].ToString();
                    if (vKullaniciAdi==kullaniciAdi && vSifre==sifre)
                    {

                  
                        Response.Redirect("anasayfa.aspx");
                    }
                }
                else
                {
              
              ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "hello", "alert('Kullanıcı bilgileri hatalı')", true);


                }

            }
            catch (Exception w)
            {

                Response.Write(w.ToString());
            }

        }
    }
}