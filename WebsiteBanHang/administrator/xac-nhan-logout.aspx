<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xac-nhan-logout.aspx.cs" Inherits="WebsiteBanHang.administrator.xac_nhan_logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form runat="server" id="form2">
    <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Đăng xuất</h4>
            </div>
            <div class="modal-body">
                <p>Bạn chắc chắn muốn đăng xuất không?</p>
                <p class="text-warning"><small>If you don't save, your changes will be lost.</small></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Không</button>
                <button type="submit" class="btn btn-primary" id="btnThoat" runat="server" onserverclick="btnThoat_Click">Có</button>
            </div>
        </form>
</body>
</html>
