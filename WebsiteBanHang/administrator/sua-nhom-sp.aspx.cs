using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebsiteBanHang.administrator
{
    public partial class sua_nhom_sp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowMenuCha();
            if (!IsPostBack)
            {
                int id = int.Parse(Request.Params.Get("id").ToString());
                Loadnhomsp(id);
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

        private void Loadnhomsp(int id)
        {
            DataTable dt = SQLFunction.GetLoaiSanPhamByID(id);
            txtTennhomsp.Value = dt.Rows[0].ItemArray[1].ToString();
            txtGhichu.Value = dt.Rows[0].ItemArray[2].ToString();
            cbbMenu.SelectedValue = dt.Rows[0].ItemArray[3].ToString();
        }

        protected void btnSua_Click(object sender, EventArgs e)
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
                    int id = int.Parse(Request.Params.Get("id").ToString());
                    SQLFunction.SuaNhomSP(txtTennhomsp.Value, txtGhichu.Value, cbbMenu.SelectedValue.ToString(), id);
                    alertSuccess.Visible = true;
                    alertWarning.Visible = false;
                    Response.Redirect("danh-sach-nhom-san-pham.aspx");
                }
                catch(Exception ex)
                {

                }
            }
        }
    }
}