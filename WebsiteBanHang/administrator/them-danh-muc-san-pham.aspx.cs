using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebsiteBanHang.administrator
{
    public partial class them_danh_muc_san_pham : System.Web.UI.Page
    {
        //clsWebsiteBH cl = new clsWebsiteBH();
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowMenuCha();
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            if (txtTennhomsp.Value == "")
            {
                alertWarning.Visible = true;
                alertSuccess.Visible = false;
            }
            else
            {
                try
                {
                    SQLFunction.ThemNhomSP(txtTennhomsp.Value, txtGhichu.Value, cbbMenu.SelectedValue.ToString());
                    alertSuccess.Visible = true;
                    alertWarning.Visible = false;
                }
                catch(Exception ex)
                {

                }
            }
        }

        private void ShowMenuCha()
        {
            DataTable dt = SQLFunction.ShowMenuChaSP();
            if (!IsPostBack)
            {
                cbbMenu.DataSource = dt;
                cbbMenu.DataValueField = "MaLoaiSP";
                cbbMenu.DataTextField = "TenLoaiSP";

                cbbMenu.DataBind();
            }
        }
    }
}