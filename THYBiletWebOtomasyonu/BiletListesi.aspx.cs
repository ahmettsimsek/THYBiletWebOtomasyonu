using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace THYBiletWebOtomasyonu
{
    public partial class BiletListesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            DataSet1TableAdapters.TBL_BiletOlusturmaTableAdapter dt = new DataSet1TableAdapters.TBL_BiletOlusturmaTableAdapter();
            //datasettableadapters içindeki metodları kullanmak için 

            Repeater1.DataSource = dt.BiletListesi(); //repeaterin veri kaynagğı = dt'den gelen bilet listesi metodu
            Repeater1.DataBind(); //veriyi getir,veriyi bağla dedik

           
        }
    }
}