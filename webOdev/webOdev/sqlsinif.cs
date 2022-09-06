using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace webOdev
{
    public class sqlsinif
    {
        public SqlConnection baglantii()
        {
            string baglantiString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection baglan = new SqlConnection(baglantiString);
            baglan.Open();
            return baglan;
        }
        
       
    }
}