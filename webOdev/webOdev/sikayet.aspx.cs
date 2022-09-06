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
    public partial class sikayet : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    yukle();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void yukle()
        {
            SqlCommand komut2 = new SqlCommand("Select * From Sikayet_Tablo", bgl.baglantii());
            SqlDataReader dr = komut2.ExecuteReader();
            Repeater2.DataSource = dr;
            Repeater2.DataBind();
            dr.Close();
        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand komut = new SqlCommand("insert into [Sikayet_Tablo] (sikayetKisiAdSoyad,sikayetKisiMail,sikayetKonu,sikayetIcerik) values (@s1,@s2,@s3,@s4)", bgl.baglantii());
                komut.Parameters.AddWithValue("@s1", txtAdSoyad.Text);
                komut.Parameters.AddWithValue("@s2", txtMail.Text);
                komut.Parameters.AddWithValue("@s3", txtSikayetKonu.Text);
                komut.Parameters.AddWithValue("@s4", txtIcerik.Text);

                komut.ExecuteNonQuery();//sorguyu gerçekleştirmesi için
                CleartextBoxes(this);
                bgl.baglantii().Close(); // bağlantıyı kapat
                lblSonuc.Text = "ŞİKAYETİNİZ ALINMIŞTIR!!";

            }
            catch (Exception ex)
            {
                lblSonuc.Text = ex.Message;
            }
        }


        protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            
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