using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebsiteBanHang
{
    public partial class danh_muc_san_pham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.Params.Get("id").ToString());
            string chuoi = "";
            string chuoitd = "";
            chuoi += "<div class='sitemap-item'><a href='index.aspx'>Trang chủ</a></div>";
            chuoi += "<div class='sitemap-item'>" +
                    "<span class='arrow'> >> </span>" +
                    "<a class='current' href='danh-muc-san-pham.aspx?id=" + id + "'>" + SQLFunction.GetTenLoaiByMaLoai(id) + "</a>" +
                "</div>";
            chuoitd = "<h2>" + SQLFunction.GetTenLoaiByMaLoai(id) + "</h2>";
            sitemap1.InnerHtml = chuoi;
            tieude.InnerHtml = chuoitd;
            ShowAll(id);
        }

        private void ShowAll(int id)
        {
            DataTable dt = SQLFunction.ShowSanPham(id);
            string chuoi = "";
            //string chuoitd = "";
            //string chuoisitemap = "";
            //chuoisitemap += "<div class='sitemap-item'><a href='index.aspx'>Trang chủ</a></div>";
            for(int i = 0; i < dt.Rows.Count; i++)
            {
                chuoi += "<div class='product-box'>"+
                    "<a href='chi-tiet-san-pham.aspx?id="+dt.Rows[i].ItemArray[0].ToString()+"' title='"+dt.Rows[i].ItemArray[1].ToString()+"'>"+
                        "<div class='product-image'>"+
                            "<img src='img/"+dt.Rows[i].ItemArray[4].ToString()+"' style='display:inline;' />"+
                        "</div>"+
                        "<div class='product-info'>"+
                            "<h3 class='product-title'>"+dt.Rows[i].ItemArray[1].ToString()+"</h3>"+
                            "<p class='gia-cu clearfix'></p>"+
                            "<p class='gia-moi clearfix'>"+dt.Rows[i].ItemArray[3].ToString()+" đ</p>"+
                        "</div>"+
                    "</a>"+
                "</div>";
                //chuoitd += "<h2>"+SQLFunction.GetTenLoaiByMaLoai(id)+"</h2>";
                //chuoisitemap += "<div class='sitemap-item'>"+
                //    "<span class='arrow'> >> </span>"+
                //    "<a class='current' href='danh-muc-san-pham.aspx?id=" + id + "'>" + SQLFunction.GetTenLoaiByMaLoai(id) + "</a>" +
                //"</div>";
            }
            product.InnerHtml = chuoi;
            //tieude.InnerHtml = chuoitd;
            //sitemap1.InnerHtml = chuoisitemap;
        }
    }
}