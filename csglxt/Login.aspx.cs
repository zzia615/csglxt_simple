using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace csglxt
{
    public partial class Login : System.Web.UI.Page
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
                string sql = "select * from yhxx where yhzh='" + name + "' and yhmm='" + pwd + "'";
                DataTable table = new SqlServerHelper().QuerySqlDataTable(sql);
                if (table != null && table.Rows.Count > 0)
                {
                    Session[SessionData.登录用户] = name;
                    Session[SessionData.登录用户名称] = name;
                    Session[SessionData.用户类别] = table.Rows[0]["yhlb"].AsString();
                    if (Session[SessionData.用户类别].AsString() == "管理员")
                    {
                        Response.Write("<script>alert('用户登录成功');window.location.href='SpxxList.aspx'</script>");
                    }
                    else
                        Response.Write("<script>alert('用户登录成功');window.location.href='SpxxList1.aspx'</script>");

                }
                else
                {
                    Response.Write("<script>alert('用户名密码错误，登录失败');</script>");
                }
            }
        }
    }
}