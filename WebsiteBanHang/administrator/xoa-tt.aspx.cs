using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsiteBanHang.administrator
{
    public partial class xoa_tt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            try
            {
                int id = int.Parse(Request.Params.Get("id"));
                SQLFunction.XoaTT(id);
                Response.Redirect("danh-sach-tin-tuc.aspx");
            }
            catch(Exception ex)
            {

            }
        }
    }
}