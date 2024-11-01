using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsiteBanHang
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowSPMoiNhat();
            ShowQC();
        }

        private void ShowSPMoiNhat()
        {
            DataTable dt = SQLFunction.ShowSPMoiNhat();
            string chuoi = "";
            chuoi += "<ul id='mycarousel' class='jcarousel-skin-tango'>";
            for(int i = 0; i < dt.Rows.Count; i++)
            {
                
                chuoi += "<li>"+
                        "<div class='product-box'>"+
                            "<a href='chi-tiet-san-pham.aspx?id=" + dt.Rows[i].ItemArray[0].ToString() + "' title='" + dt.Rows[i].ItemArray[1].ToString() + "'>" +
                                "<div class='product-image'>"+
                                    "<img src='../img/" + dt.Rows[i].ItemArray[4].ToString() + "' style='display:inline;' />" +
                                "</div>"+
                                "<div class='product-info'>"+
                                    "<h3 class='product-title'>"+
                                        "" + dt.Rows[i].ItemArray[1].ToString() + "" +
                                    "</h3>"+
                                    "<p class='gia-cu clearfix'></p>"+
                                    "<p class='gia-moi clearfix'>" + dt.Rows[i].ItemArray[3].ToString() + " đ</p>" +
                                "</div>"+
                            "</a>"+
                        "</div>"+
                    "</li>";
            }
            chuoi += "</ul>";
            spmoi.InnerHtml = chuoi;
        }

        private void ShowQC()
        {
            DataTable dt = SQLFunction.ShowQuangCao();
            string chuoi = "";
            for(int i = 0; i< dt.Rows.Count; i++)
            {
                chuoi += "<div class='da-slide'>"+
					"<h2>"+dt.Rows[i].ItemArray[1].ToString()+"</h2>"+
                    "<p>" + dt.Rows[i].ItemArray[3].ToString() + "</p>" +
                    "<a href='" + dt.Rows[i].ItemArray[4].ToString() + "' class='da-link'>Read more</a>" +
                    "<div class='da-img'><img src='images/" + dt.Rows[i].ItemArray[2].ToString() + "' width='256' height='256' /></div>" +
				"</div>";
            }
            daslider.InnerHtml = chuoi;
        }
    }
}