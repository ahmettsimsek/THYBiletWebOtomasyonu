using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace THYBiletWebOtomasyonu
{
    public partial class BiletGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            { //GÜNCELLE BUTONUNA HER BASTIĞINDA SAYFAYI YENİDEN YÜKLEMESİNİN ÖNÜNE GEÇMEK İÇİN FALSE'E EŞİTLEDİK
              //EĞER BUNU EKLEMEZSEK GÜNCELLE BUTONUNA BASTIGINDA GÜNCELLEMEDEN WEBFORM1.ASPX SAYFAMIZA GİDER


                int id = Convert.ToInt32(Request.QueryString["BILETID"].ToString());

                TxtBiletId.Text = id.ToString(); //Hangi id'nin güncelle butonuna basarsan o ıd'i güncelle sayfasında otomatik doldurur

                DataSet1TableAdapters.TBL_BiletOlusturmaTableAdapter dt = new DataSet1TableAdapters.TBL_BiletOlusturmaTableAdapter();

                TxtNerdenn.Text = dt.BiletSec(id)[0].NEREDEN;
                //DATASET1 de oluşturdumuz ogrencisec sorgmuzda  getir dedik yukarıda oluşturdugumuz değişken id'e,
                //0. indexi getir dedik yani ilk index hafızaya aldığı,
                //bu ilk değerin TCNUMARASINI  getiricek, bunu da textboxımıza atadık

                TxtNereyee.Text = dt.BiletSec(id)[0].NEREYE;

                TxtTarihh.Text = dt.BiletSec(id)[0].TARIH.ToString();
                //ogrencisec sorgmuzda  getir dedik yukarıda oluşturdugumuz değişken id'e,
                //0. indexi getir dedik yani ilk index hafızaya aldığı
                //bu ilk değerin adını getiricek, bunu da textboxımıza atadık


                TxtYolcuu.Text = dt.BiletSec(id)[0].YOLCU;
                TxtKoltukNo.Text = dt.BiletSec(id)[0].KOLTUKNO;


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_BiletOlusturmaTableAdapter dt = new DataSet1TableAdapters.TBL_BiletOlusturmaTableAdapter();

            dt.BiletGuncelle(TxtNerdenn.Text, TxtNereyee.Text, TxtTarihh.Text, TxtYolcuu.Text, TxtKoltukNo.Text, Convert.ToInt32(TxtBiletId.Text));
            //dt.UyeGuncelle ile halihazırda dataset1 de eklediğimiz sorgudaki dataları
            //sırasıyla yazdırır,metodumuzu yazınca parametrelerin kullanımını gösteriyor
            //onları tek tek ekliycez
            //UyeID'i int'e çevirmek gerkiyor int değer geliceği için datatable'dan


            Response.Redirect("BiletListesi.aspx"); //güncelleme başarılı olursa webform1.aspx yani,
                                                    //anasayfaya göndersin bizi
        }
    }
}