using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace THYBiletWebOtomasyonu
{
    public partial class HesapOlusturWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_UyeEklemeTableAdapter dt = new DataSet1TableAdapters.TBL_UyeEklemeTableAdapter();

            //dt.UyeEkle() metodumuzu yazınca parametrelerin kullanımını gösteriyor onları tek tek ekliycez
            dt.UyeEkle(TxtUyeTcsi.Text, TxtUyeSifresi.Text, TxtUyeAdi.Text, TxtUyeSoyadi.Text, TxtUyeTelefonu.Text, TxtUyeUlkesi.Text, TxtUyeSehiri.Text, TxtUyeMaili.Text);

            Response.Redirect("WebForm1.aspx");//yukardaki işlemi yaptıktan sonra bizi webform1 sayfasına yönlendirmesi
                                                            //için yönlendirme komutumuzu yzdık
        }
    }
}