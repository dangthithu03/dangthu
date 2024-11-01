using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsiteBanHang.administrator
{
    public partial class them_tin_tuc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CKFinder.FileBrowser _FileBrowser = new CKFinder.FileBrowser();
            _FileBrowser.BasePath = "/ckfinder/";
            _FileBrowser.SetupCKEditor(CKEditorControl1);
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            if(txtTen.Value == "" || txtMota.Value == "" || CKEditorControl1.Text == "")
            {
                alertWarning.Visible = true;
                alertSuccess.Visible = false;
            }
            else
            {
                try
                {
                    string tenfile = AnhTT.PostedFile.FileName;
                    AnhTT.PostedFile.SaveAs(Server.MapPath("../img/" + tenfile));
                    SQLFunction.ThemTT(txtTen.Value, txtMota.Value, tenfile, CKEditorControl1.Text);
                    alertWarning.Visible = false;
                    alertSuccess.Visible = true;
                    Response.Redirect("danh-sach-tin-tuc.aspx");
                }
                catch(Exception ex)
                {

                }
            }
        }
    }
}