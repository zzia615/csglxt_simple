using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace csglxt
{
    public partial class Registe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string name = tbName.Text;
                string pwd = tbPwd.Text;
                string name_cn = tbNameCN.Text;
                string sql = "insert into yhxx(yhzh,yhxm,yhmm,yhlb) values(N'"+name+ "',N'" + name_cn + "',N'" + pwd + "',N'个人')";
                new SqlServerHelper().ExecuteSql(sql);
                Response.Write("<script>alert('用户注册成功');window.location.href='Login.aspx'</script>");

            }
        }
    }
}