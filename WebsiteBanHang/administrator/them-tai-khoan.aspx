<%@ Page Title="" Language="C#" MasterPageFile="~/administrator/admin.Master" AutoEventWireup="true" CodeBehind="them-tai-khoan.aspx.cs" Inherits="WebsiteBanHang.administrator.them_tai_khoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form class="form-horizontal" runat="server" id="form2">
        <div class="form-group">
            <label for="inputEmail" class="control-label col-xs-2">Tên đăng nhập</label>
            <div class="col-xs-10">
                <input type="text" class="form-control" id="txtUser" placeholder="Tên đăng nhập" runat="server" />
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword" class="control-label col-xs-2">Mật khẩu</label>
            <div class="col-xs-10">
                <input type="password" class="form-control" id="txtPass" placeholder="Mật khẩu" runat="server" />
            </div>
        </div>
        <div class="form-group">
            <label for="inputEmail" class="control-label col-xs-2">Họ và tên</label>
            <div class="col-xs-10">
                <input type="text" class="form-control" id="txtHoTen" placeholder="Họ và tên" runat="server" />
            </div>
        </div>
        <div class="form-group">
            <label for="inputEmail" class="control-label col-xs-2">Địa chỉ</label>
            <div class="col-xs-10">
                <input type="text" class="form-control" id="txtDiaChi" placeholder="Địa chỉ" runat="server" />
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
                <button type="submit" class="btn btn-primary" id="btnThem" runat="server" onserverclick="btnThem_Click">Thêm tài khoản</button>  
            </div>
        </div>
        
    </form>
</asp:Content>
