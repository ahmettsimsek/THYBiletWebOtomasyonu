using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; //bu ve altındaki kütüphaneyi ekledik sqlconnection ile bağlantı olabilmesi için
using System.Data.SqlClient;

namespace THYBiletWebOtomasyonu
{
    public partial class LoginPanel : System.Web.UI.Page
    {

        SqlConnection baglanti = new SqlConnection("Data Source=AHMET;Initial Catalog=THYWebOtomasyonu;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "showAlert", "showAlert();", true);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            baglanti.Open();
            SqlCommand komut = new SqlCommand("select * from TBL_UyeEkleme where TCNUMARA=@p1 and UYESIFRE=@p2", baglanti);
            komut.Parameters.AddWithValue("@p1", TxtKullTcNumara.Text);
            komut.Parameters.AddWithValue("@p2", TxtKullSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();



            if (dr.Read())
            {
                Response.Redirect("LoginWebForm.aspx?TCNUMARA=" + TxtKullTcNumara.Text);
                //ASPX aonrasındaki sorgu ile şu tc'i taşı diyoruz, hangi tc'i, tc textinden gelen numarayı taşır
                //bu sayede seçtiğin kişinin bilgileri dogrudan login ekranı sonrası 2. web sayfamıza gelit(kullanıcıya ozel yapılan)

               
            }
            else
            {
                TxtKullSifre.Text = "Hatalı Şifre!!!!!!";
            }

            baglanti.Close();


        }
        
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("UyeEkle.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLoginPanel.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("AnaLoginPanel.aspx");
        }


    }
}