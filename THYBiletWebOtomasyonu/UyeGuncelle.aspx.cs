using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace THYBiletWebOtomasyonu
{
    public partial class UyeGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            { //GÜNCELLE BUTONUNA HER BASTIĞINDA SAYFAYI YENİDEN YÜKLEMESİNİN ÖNÜNE GEÇMEK İÇİN FALSE'E EŞİTLEDİK
              //EĞER BUNU EKLEMEZSEK GÜNCELLE BUTONUNA BASTIGINDA GÜNCELLEMEDEN WEBFORM1.ASPX SAYFAMIZA GİDER


                int id = Convert.ToInt32(Request.QueryString["UYEID"].ToString());

                TxtUyeId.Text = id.ToString(); //Hangi id'nin güncelle butonuna basarsan o ıd'i güncelle sayfasında otomatik doldurur

                DataSet1TableAdapters.TBL_UyeEklemeTableAdapter dt = new DataSet1TableAdapters.TBL_UyeEklemeTableAdapter();

                TxtUyeTcc.Text = dt.UyeSec(id)[0].TCNUMARA;
                //DATASET1 de oluşturdumuz ogrencisec sorgmuzda  getir dedik yukarıda oluşturdugumuz değişken id'e,
                //0. indexi getir dedik yani ilk index hafızaya aldığı,
                //bu ilk değerin TCNUMARASINI  getiricek, bunu da textboxımıza atadık

                TxtUyeSifree.Text = dt.UyeSec(id)[0].UYESIFRE;

                TxtUyeAdd.Text = dt.UyeSec(id)[0].UYEAD;
                //ogrencisec sorgmuzda  getir dedik yukarıda oluşturdugumuz değişken id'e,
                //0. indexi getir dedik yani ilk index hafızaya aldığı
                //bu ilk değerin adını getiricek, bunu da textboxımıza atadık


                TxtUyeSoyadd.Text = dt.UyeSec(id)[0].UYESOYAD;
                TxtUyeTelefonn.Text = dt.UyeSec(id)[0].UYETELEFON;
                TxtUyeeUlkee.Text = dt.UyeSec(id)[0].UYEULKE;
                TxtUyeeSehirr.Text = dt.UyeSec(id)[0].UYESEHIR;
                TxtUyeeMaili.Text = dt.UyeSec(id)[0].UYEMAIL;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_UyeEklemeTableAdapter dt = new DataSet1TableAdapters.TBL_UyeEklemeTableAdapter();

            dt.UyeGuncelle(TxtUyeTcc.Text, TxtUyeSifree.Text, TxtUyeAdd.Text, TxtUyeSoyadd.Text, TxtUyeTelefonn.Text, TxtUyeeUlkee.Text, TxtUyeeSehirr.Text, TxtUyeeMaili.Text, Convert.ToInt32(TxtUyeId.Text));
            //dt.UyeGuncelle ile halihazırda dataset1 de eklediğimiz sorgudaki dataları
            //sırasıyla yazdırır,metodumuzu yazınca parametrelerin kullanımını gösteriyor
            //onları tek tek ekliycez
            //UyeID'i int'e çevirmek gerkiyor int değer geliceği için datatable'dan


            Response.Redirect("WebForm1.aspx"); //güncelleme başarılı olursa webform1.aspx yani,
                                                //anasayfaya göndersin bizi
        }
    }

}