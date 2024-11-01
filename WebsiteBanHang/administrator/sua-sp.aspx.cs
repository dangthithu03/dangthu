using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebsiteBanHang.administrator
{
    public partial class sua_sp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowLoaiSP();
            CKFinder.FileBrowser _FileBrowser = new CKFinder.FileBrowser();
            _FileBrowser.BasePath = "/ckfinder/";
            _FileBrowser.SetupCKEditor(CKEditorControl1);
            if (!IsPostBack)
            {
                int id = int.Parse(Request.Params.Get("id").ToString());
                Loadid(id);
            }
        }

        private void Loadid(int id)
        {
            DataTable dt = SQLFunction.GetSanPhamByID(id);
            txtTenSP.Value = dt.Rows[0].ItemArray[1].ToString();
            cbbLoaiSP.SelectedValue = dt.Rows[0].ItemArray[2].ToString();
            txtGia.Value = dt.Rows[0].ItemArray[3].ToString();
            string linkanh = dt.Rows[0].ItemArray[4].ToString();
            AnhSP.ImageUrl = "../img/" + linkanh;
            //string chuoi = "";
            //chuoi += "<img src='../img/" + dt.Rows[0].ItemArray[4].ToString() + "' width='100px' height='100px' />";
            //AnhSP.InnerHtml = chuoi;
            mota.Value = dt.Rows[0].ItemArray[5].ToString();
            CKEditorControl1.Text = dt.Rows[0].ItemArray[6].ToString();
            numBaohanh.Value = dt.Rows[0].ItemArray[7].ToString();
        }

        private void ShowLoaiSP()
        {
            if (!IsPostBack)
            {
                DataTable dt = SQLFunction.ShowLoaiSP();

                cbbLoaiSP.DataValueField = "MaLoaiSP";
                cbbLoaiSP.DataTextField = "TenLoaiSP";
                cbbLoaiSP.DataSource = dt;
                cbbLoaiSP.DataBind();
            }
        }
        protected void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                int id = int.Parse(Request.Params.Get("id").ToString());
                string filename = FileUpload1.FileName;
                //FileUpload1.SaveAs(Server.MapPath("../img/" + filename));
                SQLFunction.SuaSP(txtTenSP.Value, cbbLoaiSP.SelectedValue, txtGia.Value, numBaohanh.Value, filename, mota.Value, CKEditorControl1.Text, id);
                Response.Redirect("danh-sach-san-pham.aspx");
            }
            catch(Exception ex)
            {

            }
        }
    }
}