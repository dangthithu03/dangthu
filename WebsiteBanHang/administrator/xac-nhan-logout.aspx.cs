using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsiteBanHang.administrator
{
    public partial class xac_nhan_logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThoat_Click(object sender, EventArgs e)
        {
            this.Session.Remove("IS_LOGIN");
            this.Session.RemoveAll();
            Response.Redirect("login.aspx");
        }
    }
}