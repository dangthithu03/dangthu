using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebsiteBanHang
{
    public partial class tin_tuc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowTinTuc();
        }

        private void ShowTinTuc()
        {
            DataTable dt = SQLFunction.ShowTinTuc();
            string chuoi = "";
            for(int i = 0; i < dt.Rows.Count; i++)
            {
                chuoi += "<div class=\"content-item clearfix\">"+
                "<div class=\"img-wrapper\">"+
                    "<div class=\"img\">"+
                        "<a href=\"chitiet-tintuc.aspx?id="+dt.Rows[i].ItemArray[0].ToString()+"\">"+
                            "<img src='./img/"+dt.Rows[i].ItemArray[3].ToString()+"' />"+
                        "</a>"+
                    "</div>"+
                "</div>"+
                "<div class=\"infott\">"+
                    "<div class=\"title\">"+
                        "<h2><a href=\"chitiet-tintuc.aspx?id=" + dt.Rows[i].ItemArray[0].ToString() + "\">" + dt.Rows[i].ItemArray[1].ToString() + "</a></h2>" +
                    "</div>"+
                    "<div class=\"desc\">" + dt.Rows[i].ItemArray[2].ToString() + "</div>" +
                "</div>"+
            "</div>";
            }
            tintuc.InnerHtml = chuoi;
        }
    }
}