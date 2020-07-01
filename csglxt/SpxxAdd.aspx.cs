using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace csglxt
{
    public partial class SpxxAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string s_bm = bm.Text;
                string s_mc = mc.Text;
                string s_gg = gg.Text;
                string s_lb = lb.Text;
                string s_tm = tm.Text;
                string s_dj = dj.Text;
                string s_kcsl = kcsl.Text;

                string sql = string.Format("insert into spxx(bm,mc,gg,lb,tm,dj,kcsl)" +
                    "values(N'{0}',N'{1}',N'{2}',N'{3}',N'{4}',{5},{6})",
                    s_bm, s_mc, s_gg, s_lb, s_tm, s_dj, s_kcsl);

                new SqlServerHelper().ExecuteSql(sql);
                Response.Write("<script>alert('新增商品信息成功');window.location.href='SpxxAdd.aspx'</script>");
            }
        }
    }
}