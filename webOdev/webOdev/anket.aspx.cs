using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace webOdev
{
    public partial class anket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (!IsPostBack)
            {
                cb1.Focus(); // sayfa yüklendiğinde cb1 in (seçenek1)seçili olmasını istersen -- etrafındaki siyah çizgi
                cb1.Checked = true; // sayfa açıldığında cb1 de (seçenek1) yanında tik olmasını istersen
            }
            */
            
            if (!IsPostBack)
            {
                //3.SORU -- DropDownList
                ListItem listItems1 = new ListItem("seçiniz" , "1");
                ListItem listItems2 = new ListItem("seçenek1" , "2");
                ListItem listItems3 = new ListItem("seçenek2", "3");

                DropDownList1.Items.Add(listItems1);
                DropDownList1.Items.Add(listItems2);
                DropDownList1.Items.Add(listItems3);

                //lblSonuc3.Text = "Seçilen : ";

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //1. SORU -- RadioButton
            //autopostback true olursa otomatik geri gönderme
            if (rb1.Checked)
            {
                lblSonuc.Text += rb1.Text + " seçtiniz <br/>";
            }
            else if (rb2.Checked)
            {
                lblSonuc.Text += rb2.Text + " seçtiniz <br/>";
            }

            //2.SORU --CheckBox
            StringBuilder sb = new StringBuilder();
            if (cb1.Checked)
            {
                sb.Append(cb1.Text);
            }
            if (cb2.Checked)
            {
                sb.Append(", " + cb2.Text);
            }
            lblSonuc2.Text = "Seçim veya seçimler : " + sb.ToString();

            
            
           
        }
    }
}