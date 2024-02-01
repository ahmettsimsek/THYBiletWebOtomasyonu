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
    public partial class AdminLoginPanel : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=AHMET;Initial Catalog=THYWebOtomasyonu;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "showAlert", "showAlert();", true);
        }

        protected void Btngirisyap_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select * from TBL_Personel where PERSONELNUMARA=@p1 and PERSONELSIFRE=@p2", baglanti);
            komut.Parameters.AddWithValue("@p1", TxtPersNumara.Text);
            komut.Parameters.AddWithValue("@p2", TxtPersSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();

            if (dr.Read())
            {
                Response.Redirect("AdminLoginWebForm.aspx");
                //ASPX aonrasındaki sorgu ile şu tc'i taşı diyoruz, hangi tc'i, tc textinden gelen numarayı taşır
                //bu sayede seçtiğin kişinin bilgileri dogrudan login ekranı sonrası 2. web sayfamıza gelit(kullanıcıya ozel yapılan)

                Response.Write("<script>alert('Hesaba başarılı bir şekilde giriş yapılmıştır.');</script>");
            }
            else
            {
                TxtPersSifre.Text = "Hatalı Şifre!!!!!!";
            }

            baglanti.Close();



        }
    }
}