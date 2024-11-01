<%@ Page Title="" Language="C#" MasterPageFile="~/administrator/admin.Master" AutoEventWireup="true" CodeBehind="Danh-sach-quang-cao.aspx.cs" Inherits="WebsiteBanHang.administrator.Danh_sach_quang_cao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-hover">
        <thead>
            <tr>
                <th style="width:30px;">STT</th>
                <th style="width:100px;">Tiêu đề</th>
                <th>Ảnh</th>
                <th>Nội dung</th>
                <th>Link</th>
                <th>Chức năng</th>
            </tr>
        </thead>
        <tbody id="lstDanhsach" runat="server">
            
            
        </tbody>
    </table>
</asp:Content>
