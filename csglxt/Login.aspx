<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="csglxt.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>北京超市管理系统</title>
    <style>
        html,body{
            padding:0;margin:0;
        }
        body{
            background:#203968
        }
        form{
            width:350px;
            margin:50px auto;
            background:#fff;
            height:280px;
        }
        .login-head{
            text-align:center;
            padding-top:15px;
            font-family:"黑体";
            color:#203968;
        }
        hr{
            color:#eee;
        }
        table{
            margin:20px 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-head">
            <h2>用户登录（北京）</h2>
        </div>
        <hr />
        <div class="login-body">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="账户："></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbName" runat="server"></asp:TextBox>
                        <span style="color:red">*</span>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="账号不能为空" ForeColor="Red" ControlToValidate="tbPwd"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="密码："></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbPwd" TextMode="Password" runat="server"></asp:TextBox>
                        <span style="color:red">*</span>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="密码不能为空" ForeColor="Red" ControlToValidate="tbPwd"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="用户登录" OnClick="Button1_Click" />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registe.aspx">用户注册</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
        <div class="login-bottom"></div>
    </form>
</body>
</html>

