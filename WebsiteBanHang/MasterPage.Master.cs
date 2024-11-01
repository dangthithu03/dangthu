using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebsiteBanHang
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Menu();
        }

        private void Menu()
        {
            DataTable dt = SQLFunction.MenuCha("0");
            string chuoi = "";
            chuoi += "<ul class='clearfix'>";
            chuoi += "<li><a href='index.aspx'>Trang chủ</a></li>";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                //chuoi = "<ul class='clearfix'>" +
                //            "<li><a href='index.aspx'>Trang chủ</a></li>" +
                //            "<li><a href='danh-muc-san-pham.aspx'>Sản phẩm</a>" +
                //                "<ul id='sub-menu' class='clearfix'>" +
                //                    "<li><a href='danh-muc-san-pham.aspx'>Sản phẩm 1</a></li>" +
                //                    "<li><a href='danh-muc-san-pham.aspx'>Sản phẩm 2</a></li>" +
                //                    "<li><a href='danh-muc-san-pham.aspx'>Sản phẩm 3</a></li>" +
                //                "</ul>" +
                //            "</li>" +
                //            "<li><a href='#'>Giới thiệu</a></li>" +
                //            "<li><a href='lien-he.aspx'>Liên hệ</a></li>" +
                //            "<li><a href='#'>Quảng cáo</a></li>" +
                //        "</ul>";

                chuoi += "<li><a href='danh-muc-san-pham.aspx?id=" + dt.Rows[i].ItemArray[0].ToString() + "'>" + dt.Rows[i].ItemArray[1].ToString() + "</a>";
                chuoi += ShowMenuCon(dt.Rows[i].ItemArray[0].ToString());
                chuoi += "</li>";
            }
            chuoi += "<li><a href='tin-tuc.aspx'>Tin tức</a></li><li><a href='lien-he.aspx'>Liên hệ</a></li>";
            chuoi += "</ul>";
            menu.InnerHtml = chuoi;
        }

        private string ShowMenuCon(string MenuCha)
        {
            DataTable dt = SQLFunction.MenuCon(MenuCha);
            if(dt.Rows.Count <=0)
            {
                return "";
            }
            string chuoi = "";
            chuoi += "<ul id='sub-menu' class='clearfix'>";
            for (int i = 0; i < dt.Rows.Count; i++ )
            {
                chuoi += "<li><a href='danh-muc-san-pham.aspx?id="+dt.Rows[i].ItemArray[0].ToString()+"'>"+dt.Rows[i].ItemArray[1].ToString()+"</a></li>";
            }
            chuoi += "</ul>";
            return chuoi;
        }
    }
}