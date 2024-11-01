using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebsiteBanHang.administrator
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUser.Value == "" || txtPass.Value == "")
            {
                alertSuccess.Visible = false;
                alertWarning.Visible = true;
            }
            else
            {
                DataTable dt = SQLFunction.KiemTraTaiKhoan(txtUser.Value.Trim(), txtPass.Value);
                if (dt.Rows.Count > 0)
                {
                    this.Session["name"] = dt.Rows[0].ItemArray[3].ToString();
                    this.Session["IS_LOGIN"] = dt.Rows[0].ItemArray[1].ToString();
                    Response.Redirect("index.aspx");
                }
                else
                {
                    alertSuccess.Visible = false;
                    alertWarning.Visible = true;
                }
            }
        }
    }
}