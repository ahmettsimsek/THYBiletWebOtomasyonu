using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace THYBiletWebOtomasyonu
{
    public partial class KartEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_OdemeBilgisiTableAdapter dt = new DataSet1TableAdapters.TBL_OdemeBilgisiTableAdapter();

            //dt.KartEkle() metodumuzu yazınca parametrelerin kullanımını gösteriyor onları tek tek ekliycez,bu şekilde yazdıklarımızı
            //sırasıyla yazdığımız yerlerekoymuş olucak, ama kod yazmadan once dataset1.aspx'e giderek sorgumuzu ekliyelim
            dt.KartEkle(TxtKarttAdSyd.Text, TxtKarttNo.Text, TxtKarttCvc.Text, TxtKarttTarih.Text);

            Response.Redirect("KartListesi.aspx");//yukardaki işlemi yaptıktan sonra bizi webform1 sayfasına yönlendirmesi
                                                  //için yönlendirme komutumuzu yzdık
        }
    }
}