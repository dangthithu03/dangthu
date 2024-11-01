<%@ Page Title="" Language="C#" MasterPageFile="~/administrator/admin.Master" AutoEventWireup="true" CodeBehind="danh-sach-nhom-san-pham.aspx.cs" Inherits="WebsiteBanHang.administrator.danh_sach_nhom_san_pham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Tên nhóm sản phẩm</th>
                <th>Ghi chú</th>
                <th>Chức năng</th>
            </tr>
        </thead>
        <tbody id="lstNhomSP" runat="server">
            
           
        </tbody>
    </table>
</asp:Content>
