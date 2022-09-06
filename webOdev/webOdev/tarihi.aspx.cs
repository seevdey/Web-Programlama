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
    public partial class tarihi : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    tarihiSayfaYukle();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            } 
        }

        private void tarihiSayfaYukle()
        {
            SqlCommand komut = new SqlCommand("Select * From Tarihi_Tablo", bgl.baglantii());
            SqlDataReader oku = komut.ExecuteReader(); //okutuyoruz
            Repeater3.DataSource = oku;
            Repeater3.DataBind();
        }


    }
}