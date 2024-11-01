using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsiteBanHang.administrator
{
    public partial class admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["IS_LOGIN"] == null)
            {
                Response.Redirect("login.aspx");
            }
            string chuoi = "";
            chuoi = ""+Session["name"].ToString()+"";
            name.InnerHtml = chuoi;
        }

        protected void btnThoat_Click(object sender, EventArgs e)
        {
            this.Session["IS_LOGIN"] = false;
            Response.Redirect("login.aspx");
        }
    }
}