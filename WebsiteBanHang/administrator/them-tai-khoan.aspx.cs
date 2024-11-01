using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsiteBanHang.administrator
{
    
    public partial class them_tai_khoan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            if (txtUser.Value == "" || txtPass.Value == "")
            {
                alertWarning.Visible = true;
                alertSuccess.Visible = false;
            }
            else
            {
                try
                {
                    SQLFunction.Themtaikhoan(txtUser.Value, txtPass.Value, txtHoTen.Value, txtDiaChi.Value);
                    alertSuccess.Visible = true;
                    alertWarning.Visible = false;
                }
                catch(Exception ex)
                {

                }
            } 
        }  
    }
}