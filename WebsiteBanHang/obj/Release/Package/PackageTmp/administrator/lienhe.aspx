<%@ Page Title="" Language="C#" MasterPageFile="~/administrator/admin.Master" AutoEventWireup="true" CodeBehind="lienhe.aspx.cs" Inherits="WebsiteBanHang.administrator.lienhe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Họ và tên</th>
                <th>Email</th>
                <th>Số điện thoại</th>
                <th>Nội dung</th>
            </tr>
        </thead>
        <tbody id="lstLienHe" runat="server">
            
           
        </tbody>
    </table>
</asp:Content>
