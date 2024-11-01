using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsiteBanHang
{
    public partial class lien_he : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLienHe_Click(object sender, EventArgs e)
        {
            if(txtHoTen.Value == "" || txtEmail.Value == "" || txtSDT.Value == "" || txtNoiDung.Value == "")
            {
                alertSuccess.Visible = false;
                alertWarning.Visible = true;
            }
            else
            {
                SQLFunction.ThemLienHe(txtHoTen.Value, txtEmail.Value, txtSDT.Value, txtNoiDung.Value);
                alertWarning.Visible = false;
                alertSuccess.Visible = true;
            }
        }
    }
}