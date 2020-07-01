<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChangePwd.aspx.cs" Inherits="csglxt.ChangePwd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>修改密码</h2>
    <hr />
    <div style="margin:0 auto;width:500px;">
    
    <div>
        <asp:Label ID="Label3" runat="server" Text="新密码" Width="90"></asp:Label>
        <asp:TextBox ID="tbYhmm" runat="server" TextMode="Password"></asp:TextBox>
        <span style="color:red">*</span>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="新密码不能为空" ControlToValidate="tbYhmm" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>
    <div>
        <asp:Label ID="Label1" runat="server" Text="重复密码" Width="90"></asp:Label>
        <asp:TextBox ID="tbYhmm2" runat="server" TextMode="Password"></asp:TextBox>
        <span style="color:red">*</span>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="重复密码不能为空" ControlToValidate="tbYhmm2" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>
    <asp:Button ID="Button1" runat="server" Text="保存" OnClick="Button1_Click" />
    <button type="reset">清空</button>
    </div>
</asp:Content>
