using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace THYBiletWebOtomasyonu
{
    public partial class BiletEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_BiletOlusturmaTableAdapter dt = new DataSet1TableAdapters.TBL_BiletOlusturmaTableAdapter();

            //dt.UyeEkle() metodumuzu yazınca parametrelerin kullanımını gösteriyor onları tek tek ekliycez
            dt.BiletEkle(TxtNerden.Text, TxtNereye.Text, TxtTarıh.Text, TxtYolcu.Text, TxtKoltuk.Text);

            Response.Redirect("BiletListesi.aspx");//yukardaki işlemi yaptıktan sonra bizi webform1 sayfasına yönlendirmesi
                                                   //için yönlendirme komutumuzu yzdık
           
        }
    }
}