using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace THYBiletWebOtomasyonu
{
    public partial class KartSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["KARTID"].ToString());
            //öncelikle ilgili sayfadan ıd değerini taşımam gerek, VERİTABANINA İNT TÜRÜNDE OLDUGU
            //İÇİN BURDA DA İNT GÖRCEZconvert yapmassan hata verir veritabanında int tuttuk bu id bilgisibi
            //REQUEST.QUERY İLE İLGİLİ DATAYI TAŞI DEMEK HANGİ DATA ÜYEID DATASINI

            DataSet1TableAdapters.TBL_OdemeBilgisiTableAdapter dt = new DataSet1TableAdapters.TBL_OdemeBilgisiTableAdapter();

            dt.KartSil(id); //neyi sil dedik, id değişkeninden gelen değeri sil dedik

            Response.Redirect("KartListesi.aspx"); // anasayfay yönlendirsin sonra bizi silme işlemi sonra
        }
    }
}