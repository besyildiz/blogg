using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blogg
{
    public partial class index : System.Web.UI.Page
    {
        OleDbConnection con;
        OleDbCommand komut;
        OleDbDataReader reader;
        string sorgu;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                con = new OleDbConnection(ConfigurationManager.ConnectionStrings["baglanti_cumlem"].ConnectionString);
                con.Open();
                sorgu = "select * from kullanici where id=1";
                komut = new OleDbCommand(sorgu, con);
                reader = komut.ExecuteReader();

                if (reader.Read())
                {
                    ltYuklenirken.Text = reader["adi"].ToString()+" "+ reader["soyadi"].ToString();



                }

            }
        }
    }
     
}