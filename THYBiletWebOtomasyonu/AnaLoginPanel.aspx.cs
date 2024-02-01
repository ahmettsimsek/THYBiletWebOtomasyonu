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
    public partial class AnaLoginPanel : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=AHMET;Initial Catalog=THYWebOtomasyonu;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "showAlert", "showAlert();", true);
        }

        protected void Btnnggirisyap_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select * from TBL_Admin where ADMINNUMARA=@p1 and ADMINSIFRE=@p2", baglanti);
            komut.Parameters.AddWithValue("@p1", TxtAdminNumara.Text);
            komut.Parameters.AddWithValue("@p2",TxtAdminSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();

            if (dr.Read())
            {
                Response.Redirect("AdminWebForm.aspx");
                //ASPX aonrasındaki sorgu ile şu tc'i taşı diyoruz, hangi tc'i, tc textinden gelen numarayı taşır
                //bu sayede seçtiğin kişinin bilgileri dogrudan login ekranı sonrası 2. web sayfamıza gelit(kullanıcıya ozel yapılan)

             
            }
            else
            {
                TxtAdminSifre.Text = "Sayın Kurucu Hatalı Şifre, Lütfen tekrar deneyiniz!!!!!!";
            }

            baglanti.Close();
        }
    }
}