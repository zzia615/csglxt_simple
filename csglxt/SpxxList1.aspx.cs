using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace csglxt
{
    public partial class SpxxList1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s_cxnr = tbCxnr.Text;
            string s_tjlb = tjlb.Value;
            StringBuilder sql = new StringBuilder("select * from spxx where 1=1");
            if (!string.IsNullOrEmpty(s_tjlb) && !string.IsNullOrEmpty(s_cxnr))
            {
                sql.Append(" and " + s_tjlb + " like N'%" + s_cxnr + "%'");
            }
            SqlDataSource1.SelectCommand = sql.ToString();
            GridView1.DataBind();
        }
    }
}