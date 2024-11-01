<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sua-nhom-sp.aspx.cs" Inherits="WebsiteBanHang.administrator.sua_nhom_sp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form class="form-horizontal" id="form2" runat="server">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">Sửa nhóm sản phẩm</h4>
        </div>
        <div class="modal-body">
            <div class="form-group">
                <label for="inputEmail" class="control-label col-xs-2">Tên nhóm sản phẩm</label>
                <div class="col-xs-10">
                    <input type="text" class="form-control" id="txtTennhomsp" placeholder="Tên nhóm sản phẩm" runat="server" />
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
        </div>
        <div class="modal-footer">
            <div class="form-group">
                <div class="col-xs-offset-2 col-xs-10">
                    <div class="alert alert-success" runat="server" id="alertSuccess" visible="false" style="width:400px;">
                        <a href="#" class="close" data-dismiss="alert">&times;</a>
                        <strong>Hoàn tất!</strong> Đã sửa thành công.
                    </div>
                    <div class="alert alert-danger alert-error" runat="server" id="alertWarning" visible="false" style="width:400px;">
                        <a href="#" class="close" data-dismiss="alert">&times;</a>
                        <strong>Lỗi!</strong> Sửa không thành công.
                    </div>
                    <button type="submit" class="btn btn-primary" id="btnSua" runat="server" onserverclick="btnSua_Click">Sửa nhóm sản phẩm</button>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
