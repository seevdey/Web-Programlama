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
    public partial class restoran : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    listele();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void listele()
        {
            SqlCommand komut = new SqlCommand("Select * From Restoran_Tablo", bgl.baglantii());
            SqlDataReader oku = komut.ExecuteReader();
            Repeater6.DataSource = oku;
            Repeater6.DataBind();
        }
    }
}