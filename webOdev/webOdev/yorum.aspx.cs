using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webOdev
{
    public partial class yorum : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();

        string urunid = ""; // boş urunid tanımladık. İlk değeri null
        protected void Page_Load(object sender, EventArgs e)
        {
            urunid = Request.QueryString["urunid"]; //sayfa yüklendiği zaman diğer formdan gelen urunid değişkeni bu değişkenin içerisine ata

            SqlCommand komut4 = new SqlCommand("Select urunAd From Urun_Tablo where urunid=@p1", bgl.baglantii());
            komut4.Parameters.AddWithValue("@p1", urunid);

            SqlDataReader dr = komut4.ExecuteReader(); //Sql Veri okuyucu sınıfından nesne türettik. Bunu komuttan gelen sorguyla ilişkiledirdik
            while (dr.Read()) //dr nesnesi okuma yaptığı sürece
            {
                lblBaslik.Text = dr[0].ToString(); //lblBaslik a dr den gelecek olan sorgudan 0. parametredeki değeri yazdır
            }
            bgl.baglantii().Close();

            //Yorumları Listeleme
            bgl.baglantii();
            SqlCommand komut5 = new SqlCommand("Select * From Yorum_Tablo where urunid=@p2", bgl.baglantii());
            komut5.Parameters.AddWithValue("@p2", urunid);
            SqlDataReader dr2 = komut5.ExecuteReader();
            Repeater4.DataSource = dr2;
            Repeater4.DataBind();
        }

        protected void btnYorumYap_Click(object sender, EventArgs e)
        {
            SqlCommand komut6 = new SqlCommand("insert into Yorum_Tablo (yorumAdSoyad, yorumMail, yorumIcerik, urunid) values (@y1, @y2, @y3, @y4)", bgl.baglantii());
            komut6.Parameters.AddWithValue("@y1", txtadsoyad.Text);
            komut6.Parameters.AddWithValue("@y2", txtmail.Text);
            komut6.Parameters.AddWithValue("@y3", txticerik.Text);
            komut6.Parameters.AddWithValue("@y4", urunid);
            komut6.ExecuteNonQuery();
            CleartextBoxes(this);
            bgl.baglantii().Close();
            lblSonuc.Text = "!!Yorumunuz başarıyla kaydedildi";
        }

        public void CleartextBoxes(Control parent)
        {
            foreach (Control x in parent.Controls)
            {
                if ((x.GetType() == typeof(TextBox)))
                {
                    ((TextBox)(x)).Text = "";
                }

                if (x.HasControls())
                {
                    CleartextBoxes(x);
                }
            }
        }
    }
}