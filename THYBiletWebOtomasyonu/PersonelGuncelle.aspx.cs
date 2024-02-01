using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace THYBiletWebOtomasyonu
{
    public partial class PersonelGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false)
            { //GÜNCELLE BUTONUNA HER BASTIĞINDA SAYFAYI YENİDEN YÜKLEMESİNİN ÖNÜNE GEÇMEK İÇİN FALSE'E EŞİTLEDİK
              //EĞER BUNU EKLEMEZSEK GÜNCELLE BUTONUNA BASTIGINDA GÜNCELLEMEDEN WEBFORM1.ASPX SAYFAMIZA GİDER


                int id = Convert.ToInt32(Request.QueryString["PERSONELID"].ToString());

                TxtpersId.Text = id.ToString(); //Hangi id'nin güncelle butonuna basarsan o ıd'i güncelle sayfasında otomatik doldurur

                DataSet1TableAdapters.TBL_PersonelTableAdapter dt = new DataSet1TableAdapters.TBL_PersonelTableAdapter();

                Txtpersno.Text = dt.PersonelSec(id)[0].PERSONELNUMARA;
                //DATASET1 de oluşturdumuz ogrencisec sorgmuzda  getir dedik yukarıda oluşturdugumuz değişken id'e,
                //0. indexi getir dedik yani ilk index hafızaya aldığı,
                //bu ilk değerin TCNUMARASINI  getiricek, bunu da textboxımıza atadık

                TxtpersSifree.Text = dt.PersonelSec(id)[0].PERSONELSIFRE;

                TxtpersAdd.Text = dt.PersonelSec(id)[0].PERSONELAD;
                //ogrencisec sorgmuzda  getir dedik yukarıda oluşturdugumuz değişken id'e,
                //0. indexi getir dedik yani ilk index hafızaya aldığı
                //bu ilk değerin adını getiricek, bunu da textboxımıza atadık


                TxtpersSoyadd.Text = dt.PersonelSec(id)[0].PERSONELSOYAD;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_PersonelTableAdapter dt = new DataSet1TableAdapters.TBL_PersonelTableAdapter();

            dt.PersonelGuncelle(Txtpersno.Text, TxtpersSifree.Text, TxtpersAdd.Text, TxtpersSoyadd.Text, Convert.ToInt32(TxtpersId.Text));
            //dt.UyeGuncelle ile halihazırda dataset1 de eklediğimiz sorgudaki dataları
            //sırasıyla yazdırır,metodumuzu yazınca parametrelerin kullanımını gösteriyor
            //onları tek tek ekliycez
            //UyeID'i int'e çevirmek gerkiyor int değer geliceği için datatable'dan


            Response.Redirect("PersonelListesi.aspx"); //güncelleme başarılı olursa webform1.aspx yani,
                                                   //anasayfaya göndersin bizi
        }
    }
}