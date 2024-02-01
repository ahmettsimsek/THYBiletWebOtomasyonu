using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace THYBiletWebOtomasyonu
{
    public partial class LoginWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBoxx1.Text = Request.QueryString["TCNUMARA"];//numara değişkenini yazdırır,LOGİN EKRANI SONRASI AÇILAN
             //SAYFAYA TCNUMARASINI TAŞIR,BUNU HER BİRİ İÇİN YAPIÇAZ ŞİMDİ

            DataSet1TableAdapters.TBL_UyeEklemeTableAdapter dt = new DataSet1TableAdapters.TBL_UyeEklemeTableAdapter();

            TextBoxx2.Text = "ŞİFRE:  " + dt.UyePaneliGetir(TextBoxx1.Text)[0].UYESIFRE;
            TextBoxx3.Text = "AD:  " + dt.UyePaneliGetir(TextBoxx1.Text)[0].UYEAD;
            TextBoxx4.Text = "SOYAD:  " + dt.UyePaneliGetir(TextBoxx1.Text)[0].UYESOYAD;
            TextBoxx5.Text = "TELEFON:  " + dt.UyePaneliGetir(TextBoxx1.Text)[0].UYETELEFON;
            TextBoxx6.Text = "ÜLKE:  " + dt.UyePaneliGetir(TextBoxx1.Text)[0].UYEULKE;
            TextBoxx7.Text = "ŞEHİR:  " + dt.UyePaneliGetir(TextBoxx1.Text)[0].UYESEHIR;
            TextBoxx8.Text = "MAİL:" + dt.UyePaneliGetir(TextBoxx1.Text)[0].UYEMAIL;

            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UyeGuncelle.aspx");
        }
    }
}