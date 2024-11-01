using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebsiteBanHang
{
    public partial class chitiet_tintuc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.Params.Get("id"));
            ShowChitiet(id);
        }

        private void ShowChitiet(int id)
        {
            DataTable dt = SQLFunction.ShowTinTucByID(id);
            string chuoimota = "";
            string chuoichitiet = "";
            string chuoitieude = "";
            for(int i = 0; i< dt.Rows.Count; i++)
            {
                chuoimota += ""+dt.Rows[0].ItemArray[2].ToString()+"";
                chuoichitiet += "" + dt.Rows[0].ItemArray[4].ToString() + "";
                chuoitieude += "<h2>" + dt.Rows[0].ItemArray[1].ToString() + "</h2>";
            }
            motangan.InnerHtml = chuoimota;
            chitiet.InnerHtml = chuoichitiet;
            tieude.InnerHtml = chuoitieude;
        }
    }
}