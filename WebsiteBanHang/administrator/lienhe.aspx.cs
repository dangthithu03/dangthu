using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebsiteBanHang.administrator
{
    public partial class lienhe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowLienHe();
        }

        private void ShowLienHe()
        {
            DataTable dt = SQLFunction.ShowLienHe();
            string chuoi = "";
            for(int i = 0; i<dt.Rows.Count; i++)
            {
                chuoi += "<tr><td>" + dt.Rows[i].ItemArray[1].ToString() + "</td><td>" + dt.Rows[i].ItemArray[2].ToString() + "</td><td>" + dt.Rows[i].ItemArray[3].ToString() + "</td><td>" + dt.Rows[i].ItemArray[4].ToString() + "</td></tr>";
            }
            lstLienHe.InnerHtml = chuoi;
        }
    }
}