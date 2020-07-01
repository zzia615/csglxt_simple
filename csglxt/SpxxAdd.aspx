<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SpxxAdd.aspx.cs" Inherits="csglxt.SpxxAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>新增用户</h2>
    <hr />
    <div style="margin:0 auto;width:500px;">
    <div>
        <asp:Label ID="Label1" runat="server" Text="商品编码" Width="90"></asp:Label>
        <asp:TextBox ID="bm" runat="server"></asp:TextBox>
        <span style="color:red">*</span>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="商品编码不能为空" ControlToValidate="bm" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>
    <div>
        <asp:Label ID="Label2" runat="server" Text="商品名称" Width="90"></asp:Label>
        <asp:TextBox ID="mc" runat="server"></asp:TextBox>
        <span style="color:red">*</span>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="商品名称不能为空" ControlToValidate="mc" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>
    <div>
        <asp:Label ID="Label7" runat="server" Text="条码" Width="90"></asp:Label>
        <asp:TextBox ID="tm" runat="server"></asp:TextBox>
        <span style="color:red">*</span>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="条码不能为空" ControlToValidate="tm" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>
    <div>
        <asp:Label ID="Label3" runat="server" Text="商品规格" Width="90"></asp:Label>
        <asp:TextBox ID="gg" runat="server"></asp:TextBox>
        <span style="color:red">*</span>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="商品规格不能为空" ControlToValidate="gg" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>
    <div>
        <asp:Label ID="Label4" runat="server" Text="分类" Width="90"></asp:Label>
        <asp:TextBox ID="lb" runat="server"></asp:TextBox>
        <span style="color:red">*</span>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="类别不能为空" ControlToValidate="lb" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>
    <div>
        <asp:Label ID="Label5" runat="server" Text="单价" Width="90"></asp:Label>
        <asp:TextBox ID="dj" runat="server"></asp:TextBox>
        <span style="color:red">*</span>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="单价不能为空" ControlToValidate="dj" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="单价不合法（0-999999）" ControlToValidate="dj" ForeColor="Red" Display="Dynamic" Type="Double" MaximumValue="999999" MinimumValue="0"></asp:RangeValidator>

    </div>
    <div>
        <asp:Label ID="Label6" runat="server" Text="库存数量" Width="90"></asp:Label>
        <asp:TextBox ID="kcsl" runat="server"></asp:TextBox>
        <span style="color:red">*</span>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="库存数量不能为空" ControlToValidate="kcsl" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="库存数量不合法（0-999999）" ControlToValidate="dj" ForeColor="Red" Display="Dynamic" Type="Integer" MaximumValue="999999" MinimumValue="0"></asp:RangeValidator>

    </div>
    <asp:Button ID="Button1" runat="server" Text="保存" OnClick="Button1_Click" />
    <button type="reset">清空</button>
    </div>
</asp:Content>
