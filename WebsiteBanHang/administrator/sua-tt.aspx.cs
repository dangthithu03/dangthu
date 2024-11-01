using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsiteBanHang.administrator
{
    public partial class sua_tt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CKFinder.FileBrowser _FileBrowser = new CKFinder.FileBrowser();
            _FileBrowser.BasePath = "/ckfinder/";
            _FileBrowser.SetupCKEditor(CKEditorControl1);
            if (!IsPostBack)
            {
                int id = int.Parse(Request.Params.Get("id"));
                ShowTT(id);
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                int id = int.Parse(Request.Params.Get("id"));
                string filename = FileUpload1.FileName;
                SQLFunction.SuaTT(txtTen.Value, txtMota.Value, filename, CKEditorControl1.Text, id);
                Response.Redirect("danh-sach-tin-tuc.aspx");
            }
            catch(Exception ex)
            {

            }
        }

        private void ShowTT(int id)
        {
            DataTable dt = SQLFunction.ShowTinTucByID(id);
            txtTen.Value = dt.Rows[0].ItemArray[1].ToString();
            txtMota.Value = dt.Rows[0].ItemArray[2].ToString();
            string linkanh = dt.Rows[0].ItemArray[3].ToString();
            Image1.ImageUrl = "../img/" + linkanh;
            CKEditorControl1.Text = dt.Rows[0].ItemArray[4].ToString();
        }
    }
}