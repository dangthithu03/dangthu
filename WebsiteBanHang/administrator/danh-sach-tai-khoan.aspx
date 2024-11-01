<%@ Page Title="" Language="C#" MasterPageFile="~/administrator/admin.Master" AutoEventWireup="true" CodeBehind="danh-sach-tai-khoan.aspx.cs" Inherits="WebsiteBanHang.administrator.danh_sach_tai_khoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Họ và tên</th>
                <th>Địa chỉ</th>
                <th>Username</th>
                <th>Chức năng</th>
            </tr>
        </thead>
        <tbody id="lstdanhsach" runat="server">
            
            
        </tbody>
    </table>
</asp:Content>
