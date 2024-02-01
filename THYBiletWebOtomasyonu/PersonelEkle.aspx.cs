using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace THYBiletWebOtomasyonu
{
    public partial class PersonelEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Buttton1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_PersonelTableAdapter dt = new DataSet1TableAdapters.TBL_PersonelTableAdapter();

            //dt.UyeEkle() metodumuzu yazınca parametrelerin kullanımını gösteriyor onları tek tek ekliycez
            dt.PersonelEkle(TxtUyeTcsi.Text, TxtUyeSifresi.Text, TxtUyeAdi.Text, TxtUyeSoyadi.Text);

            Response.Redirect("PersonelListesi.aspx");//yukardaki işlemi yaptıktan sonra bizi webform1 sayfasına yönlendirmesi
                                               //için yönlendirme komutumuzu yzdık
        }
    }
}