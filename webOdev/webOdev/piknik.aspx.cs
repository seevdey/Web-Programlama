using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webOdev
{
    public partial class piknik : System.Web.UI.Page
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
            SqlCommand komut = new SqlCommand("Select * From Piknik_Tablo", bgl.baglantii());
            SqlDataReader oku = komut.ExecuteReader(); 
            Repeater8.DataSource = oku;
            Repeater8.DataBind();
        }
    }
}