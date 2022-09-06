using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webOdev
{
    public partial class urun : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    urunleriYukle();
                }
            }
            catch (Exception)
            {
                Response.Write("Veri okuma işleminde hata meydana geldi");
            }
        }

        private void urunleriYukle()
        {
            SqlCommand komut3 = new SqlCommand("Select * From Urun_Tablo", bgl.baglantii());
            SqlDataReader oku = komut3.ExecuteReader();
            Repeater1.DataSource = oku;
            Repeater1.DataBind();
            oku.Close();
        }
        protected void btnSiparisOlustur_Click(object sender, EventArgs e)
        {
            SqlCommand komut4 = new SqlCommand("insert into [Siparis_Tablo] (siparisUrun,siparisAdSoyad,siparisMail,siparisAdres) values (@siparis1,@siparis2,@siparis3,@siparis4)", bgl.baglantii());
            komut4.Parameters.AddWithValue("@siparis1", txtUrun.Text);
            komut4.Parameters.AddWithValue("@siparis2", txtSiparisAdSoyad.Text);
            komut4.Parameters.AddWithValue("@siparis3", txtSiparisMail.Text);
            komut4.Parameters.AddWithValue("@siparis4", txtSiparisAdres.Text);

            komut4.ExecuteNonQuery();
            CleartextBoxes(this);
            bgl.baglantii().Close();
            lblSonuc.Text = "SİPARİŞİNİZ ALINMIŞTIR!!";
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

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            Label ilbl = (Label)e.Item.FindControl("lblurunID");
            SqlCommand komut7 = new SqlCommand("update  Urun_Tablo set urunBegeni=urunBegeni+1 where urunID=@urunID", bgl.baglantii());

            komut7.Parameters.AddWithValue("@urunID", ilbl.Text);

            komut7.ExecuteNonQuery();
            
            urunleriYukle();
            bgl.baglantii().Close();
        }
    }
}