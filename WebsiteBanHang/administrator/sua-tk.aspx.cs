using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebsiteBanHang.administrator
{
    public partial class sua_tk : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = int.Parse(Request.Params.Get("id").ToString());
                Loaddulieu(id);
            }
        }

        private void Loaddulieu(int id)
        {
            DataTable dt = SQLFunction.GetTaiKhoanByID(id);
            txtUser.Value = dt.Rows[0].ItemArray[1].ToString();
            txtPass.Value = dt.Rows[0].ItemArray[2].ToString();
            txtHoTen.Value = dt.Rows[0].ItemArray[3].ToString();
            txtDiaChi.Value = dt.Rows[0].ItemArray[4].ToString();
        }

        protected void btnSua_Click(object sender, EventArgs e)
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
                    int id = int.Parse(Request.Params.Get("id").ToString());
                    SQLFunction.SuaTaiKhoan(txtUser.Value, txtPass.Value, txtHoTen.Value, txtDiaChi.Value, id);
                    alertSuccess.Visible = true;
                    alertWarning.Visible = false;
                    Response.Redirect("danh-sach-tai-khoan.aspx");
                }
                catch(Exception ex)
                {

                }
            }
        }
    }
}