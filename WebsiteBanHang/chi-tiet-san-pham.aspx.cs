using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebsiteBanHang
{
    public partial class chi_tiet_san_pham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.Params.Get("id").ToString());
            Showchitiet(id);
        }

        private void Showchitiet(int id)
        {
            DataTable dt = SQLFunction.ShowChiTietSanPham(id);
            string chuoitieude = "";
            string chuoiinfo = "";
            string chuoimota = "";
            string chuoichitiet = "";
            string chuoianh = "";
            chuoianh += "<img src='../img/"+dt.Rows[0].ItemArray[4].ToString()+"' width='400px' /";
            chuoitieude += "<h2>"+dt.Rows[0].ItemArray[1].ToString()+"</h2>";
            chuoiinfo += "<div class='row clearfix'>"+
                                    "<label>Giá bán</label>"+
                                    "<div class='gia-moi'>"+dt.Rows[0].ItemArray[3].ToString()+" đ</div>"+
                                "</div>"+
                                "<div class='row clearfix'>"+
                                    "<label>Bảo hành</label>"+
                                    "<div>"+dt.Rows[0].ItemArray[7].ToString()+" tháng</div>"+
                                "</div>"+
                                "<div class='row clearfix'>"+
                                    "<label>Tình trạng</label>"+
                                    "<div><span>Còn hàng</span></div>"+
                                "</div>";
            chuoimota += ""+dt.Rows[0].ItemArray[5].ToString()+"";
            chuoichitiet += ""+dt.Rows[0].ItemArray[6].ToString()+"";
            tieude.InnerHtml = chuoitieude;
            infosp.InnerHtml = chuoiinfo;
            tensp.InnerHtml = chuoitieude;
            motaNgan.InnerHtml = chuoimota;
            chitietsp.InnerHtml = chuoichitiet;
            tensanpham.InnerHtml = chuoitieude;
            showanh.InnerHtml = chuoianh;
        }
    }
}