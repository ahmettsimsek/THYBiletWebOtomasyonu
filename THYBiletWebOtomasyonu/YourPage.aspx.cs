using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace THYBiletWebOtomasyonu
{
    public partial class YourPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "showAlert", "showAlert();", true);
        }
    }
}