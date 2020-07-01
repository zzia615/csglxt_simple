<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SpxxList1.aspx.cs" Inherits="csglxt.SpxxList1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>用户管理</h2>
    <hr />
    <div>
        <select id="tjlb" runat="server">
            <option value="tm">条形码</option>
            <option value="bm">商品编码</option>
            <option value="mc">商品名称</option>
            <option value="lb">类别</option>
            <option value="gg">规格</option>
        </select>
        <asp:TextBox ID="tbCxnr" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="查询" OnClick="Button1_Click"/>
    </div>
    
    <asp:GridView ID="GridView1" Width="100%" runat="server" AutoGenerateColumns="False" DataKeyNames="bm" DataSourceID="SqlDataSource1" EmptyDataText="无数据显示">
        <Columns>
            <asp:BoundField DataField="bm" HeaderText="商品编码" ReadOnly="True" SortExpression="bm" />
            <asp:BoundField DataField="mc" HeaderText="商品名称" SortExpression="mc" />
            <asp:BoundField DataField="tm" HeaderText="条形码" SortExpression="tm" />
            <asp:BoundField DataField="lb" HeaderText="分类" SortExpression="lb" />
            <asp:BoundField DataField="gg" HeaderText="规格" SortExpression="gg" />
            <asp:BoundField DataField="dj" HeaderText="单价" SortExpression="dj" />
            <asp:BoundField DataField="kcsl" HeaderText="库存数量" SortExpression="kcsl" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:csglxtConStr %>" SelectCommand="SELECT * FROM [spxx]">
    </asp:SqlDataSource>
</asp:Content>
