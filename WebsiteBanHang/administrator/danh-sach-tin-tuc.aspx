<%@ Page Title="" Language="C#" MasterPageFile="~/administrator/admin.Master" AutoEventWireup="true" CodeBehind="danh-sach-tin-tuc.aspx.cs" Inherits="WebsiteBanHang.administrator.danh_sach_tin_tuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-hover">
        <thead>
            <tr>
                <th style="width:190px;">Tiêu đề</th>
                <th style="width:520px;">Mô tả ngắn</th>
                <th>Ảnh</th>
                <th>Chức năng</th>
            </tr>
        </thead>
        <tbody id="lstTintuc" runat="server">
            
        </tbody>
    </table>
</asp:Content>
