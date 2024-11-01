using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebsiteBanHang.administrator
{
    public partial class Danh_sach_quang_cao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowQuangCao();
        }

        private void ShowQuangCao()
        {
            DataTable dt = SQLFunction.ShowQuangCao();
            string chuoi = "";
            for(int i = 0; i< dt.Rows.Count; i++)
            {
                chuoi += "<tr><td>" + (i + 1) + "</td><td>" + dt.Rows[i].ItemArray[1].ToString() + "</td><td><img src='../images/" + dt.Rows[i].ItemArray[2].ToString() + "' width='100px' height='100px' /></td><td>" + dt.Rows[i].ItemArray[3].ToString() + "</td><td>" + dt.Rows[i].ItemArray[4].ToString() + "</td><td><a href='sua-qc.aspx?id=" + dt.Rows[i].ItemArray[0].ToString() + "' data-toggle='modal' data-target='#myModalSua'><button type='button' class='btn btn-success'>Sửa</button></a></td></tr><div id='myModalSua' class='modal fade'><div class='modal-dialog'><div class='modal-content'></div></div></div>";
            }
            lstDanhsach.InnerHtml = chuoi;
        }
    }
}