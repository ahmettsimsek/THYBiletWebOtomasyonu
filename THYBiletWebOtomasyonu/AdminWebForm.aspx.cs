using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace THYBiletWebOtomasyonu
{
    public partial class AdminWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_AdminTableAdapter dt = new DataSet1TableAdapters.TBL_AdminTableAdapter();

            Repeater1.DataSource = dt.AdminListesi();
            Repeater1.DataBind();
        }
    }
}