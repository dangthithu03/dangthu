<%@ Page Title="" Language="C#" MasterPageFile="~/administrator/admin.Master" AutoEventWireup="true" CodeBehind="them-danh-muc-san-pham.aspx.cs" Inherits="WebsiteBanHang.administrator.them_danh_muc_san_pham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form class="form-horizontal" id="form2" runat="server">
        <div class="form-group">
            <label for="inputEmail" class="control-label col-xs-2">Tên nhóm sản phẩm</label>
            <div class="col-xs-10">
                <input type="text" class="form-control" id="txtTennhomsp" placeholder="Tên nhóm sản phẩm" runat="server">
            </div>
        </div>
        <div class="form-group">
            <label for="inputCategory" class="control-label col-xs-2">Nhóm Menu</label>
            <div class="col-xs-10">
                <asp:DropDownList ID="cbbMenu" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword" class="control-label col-xs-2">Ghi chú</label>
            <div class="col-xs-10">
                <textarea class="form-control" placeholder="Ghi chú" id="txtGhichu" runat="server"></textarea>
            </div>
        </div>
        <div class="form-group">
            <div class="col-xs-offset-2 col-xs-10">
                <div class="alert alert-success" runat="server" id="alertSuccess" visible="false" style="width:400px;">
                    <a href="#" class="close" data-dismiss="alert">&times;</a>
                    <strong>Hoàn tất!</strong> Đã thêm thành công.
                </div>
                <div class="alert alert-danger alert-error" runat="server" id="alertWarning" visible="false" style="width:400px;">
                    <a href="#" class="close" data-dismiss="alert">&times;</a>
                    <strong>Lỗi!</strong> Thêm không thành công.
                </div>
                <button type="submit" class="btn btn-primary" id="btnThem" runat="server" onserverclick="btnThem_Click">Thêm nhóm sản phẩm</button>
            </div>
        </div>
    </form>
</asp:Content>
