using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace THYBiletWebOtomasyonu
{
    public partial class KartListesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Ön tasarımı yaptıktan sonra data'nın tabloya gelebilmesi için backend tarafındaki kodları yazıcaz

            DataSet1TableAdapters.TBL_OdemeBilgisiTableAdapter dt = new DataSet1TableAdapters.TBL_OdemeBilgisiTableAdapter();
            //datasettableadapters içindeki metodları kullanmak için 

            Repeater1.DataSource = dt.KartListesi(); //repeaterin veri kaynagğı = dt'den gelen ÜYE listesi metodu
            Repeater1.DataBind(); //veriyi getir,veriyi bağla dedik
        }
    }
}