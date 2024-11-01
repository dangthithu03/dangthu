using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebsiteBanHang.administrator
{
    public partial class danh_sach_nhom_san_pham : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadlistNhomSP();
        }

        private void LoadlistNhomSP()
        {
            //LoaiSanPham loaisp = new LoaiSanPham();
            //List<LoaiSanPham> listNhomSP = cl.getListNhomSP();
            DataTable dt = SQLFunction.ShowLoaiSP();
            String chuoi = "";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                chuoi += "<tr><td>" + dt.Rows[i].ItemArray[1].ToString() + "</td><td>" + dt.Rows[i].ItemArray[2].ToString() + "</td><td><a href='sua-nhom-sp.aspx?id=" + dt.Rows[i].ItemArray[0].ToString() + "' data-toggle='modal' data-target='#myModalSua'><button type='button' class='btn btn-success'>Sửa</button></a> <a href='xoa-nhom-sp.aspx?id=" + dt.Rows[i].ItemArray[0].ToString() + "' data-toggle='modal' data-target='#myModalXoa'><button type='button' class='btn btn-info'>Xóa</button></a></td></tr><div id='myModalSua' class='modal fade'><div class='modal-dialog'><div class='modal-content'></div></div></div><div id='myModalXoa' class='modal fade'><div class='modal-dialog'><div class='modal-content'></div></div></div>";
            }
            lstNhomSP.InnerHtml = chuoi;
        }
    }
}