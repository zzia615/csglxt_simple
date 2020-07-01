using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace csglxt
{
    public partial class ChangePwd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string s_yhmm = tbYhmm.Text;
                string s_yhmm2 = tbYhmm2.Text;
                if (s_yhmm != s_yhmm2)
                {
                    Response.Write("<script>alert('两次密码输入不一致');</script>");
                    return;
                }
                string sql = string.Format("update yhxx set yhmm = N'"+s_yhmm+"'" +
                    " where yhzh=N'"+Session[SessionData.登录用户]+"'");

                new SqlServerHelper().ExecuteSql(sql);
                Response.Write("<script>alert('修改用户密码成功');window.location.href='ChangePwd.aspx'</script>");
            }
        }
    }
}