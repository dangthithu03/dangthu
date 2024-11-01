using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.UI.HtmlControls;

namespace WebsiteBanHang.administrator
{
    public partial class danh_sach_san_pham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadListSanPham();
        }

        private void LoadListSanPham()
        {
            DataTable dt = SQLFunction.ShowSP();
            string chuoi = "";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                chuoi += "<tr><td>" + dt.Rows[i].ItemArray[0].ToString() + "</td><td>" + dt.Rows[i].ItemArray[1].ToString() + "</td><td>" + SQLFunction.GetTenLoaiSP(dt.Rows[i].ItemArray[2].ToString()) + "</td><td>" + dt.Rows[i].ItemArray[3].ToString() + "</td><td><img src='../img/" + dt.Rows[i].ItemArray[4].ToString() + "' width='80px' height=80px'/></td><td><a href='sua-sp.aspx?id=" + dt.Rows[i].ItemArray[0].ToString() + "' data-toggle='modal' data-target='#myModalSua'><button type='button' class='btn btn-success'>Sửa</button></a> <a href='xoa-sp.aspx?id=" + dt.Rows[i].ItemArray[0].ToString() + "' data-toggle='modal' data-target='#myModalXoa'><button type='button' class='btn btn-info'>Xóa</button></a></td></tr><div id='myModalSua' class='modal fade'><div class='modal-dialog modal-lg'><div class='modal-content'></div></div></div><div id='myModalXoa' class='modal fade'><div class='modal-dialog'><div class='modal-content'></div></div></div>";
            }
            lstDanhsach.InnerHtml = chuoi;
        }
        
    }
}