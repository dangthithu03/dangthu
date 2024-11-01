using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CKFinder;
using System.Data;

namespace WebsiteBanHang.administrator
{
    public partial class them_san_pham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowLoaiSP();
            CKFinder.FileBrowser _FileBrowser = new CKFinder.FileBrowser();
            _FileBrowser.BasePath = "/ckfinder/";
            _FileBrowser.SetupCKEditor(CKEditorControl1);
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                if (AnhSP.Value == "")
                {

                }
                else
                {
                    string tenfile = AnhSP.PostedFile.FileName;
                    AnhSP.PostedFile.SaveAs(Server.MapPath("../img/" + tenfile));
                    SQLFunction.ThemSP(txtTenSP.Value, cbbLoaiSP.SelectedValue.ToString(), txtGia.Value, tenfile, mota.Value, CKEditorControl1.Text, numBaohanh.Value);
                    Response.Redirect("danh-sach-san-pham.aspx");
                }
            }
            catch (Exception ex)
            {

            }
        }

        private void ShowLoaiSP()
        {
            DataTable dt = SQLFunction.ShowLoaiSP();
            if (!IsPostBack)
            {
                cbbLoaiSP.DataSource = dt;
                cbbLoaiSP.DataValueField = "MaLoaiSP";
                cbbLoaiSP.DataTextField = "TenLoaiSP";

                cbbLoaiSP.DataBind();
            }
        }

        private void uphinhanh()
        {
            string tenfile = AnhSP.PostedFile.FileName;
            AnhSP.PostedFile.SaveAs(Server.MapPath("img/" + tenfile));
        }
    }
}