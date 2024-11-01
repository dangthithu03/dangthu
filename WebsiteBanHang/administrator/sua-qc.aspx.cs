using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebsiteBanHang.administrator
{
    public partial class sua_qc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = int.Parse(Request.Params.Get("id"));
                ShowQC(id);
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                int id = int.Parse(Request.Params.Get("id"));
                string filename = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("../images/" + filename + ""));
                SQLFunction.UpdateQC(txtTieude.Value, filename, txtNoiDung.Value, txtLink.Value, id);
                Response.Redirect("Danh-sach-quang-cao.aspx");
            }
            catch(Exception ex)
            {

            }
        }

        private void ShowQC(int id)
        {
            DataTable dt = SQLFunction.ShowQC(id);
            txtTieude.Value = dt.Rows[0].ItemArray[1].ToString();
            string filename = dt.Rows[0].ItemArray[2].ToString();
            AnhSP.ImageUrl = "../images/"+ filename+"";
            txtNoiDung.Value = dt.Rows[0].ItemArray[3].ToString();
            txtLink.Value = dt.Rows[0].ItemArray[4].ToString();
        }
    }
}