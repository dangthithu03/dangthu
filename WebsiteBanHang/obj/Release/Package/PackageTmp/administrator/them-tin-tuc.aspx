<%@ Page Title="" Language="C#" MasterPageFile="~/administrator/admin.Master" AutoEventWireup="true" CodeBehind="them-tin-tuc.aspx.cs" Inherits="WebsiteBanHang.administrator.them_tin_tuc" %>
<%@ Register Assembly="CKFinder" Namespace="CKFinder" TagPrefix="CKFinder" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form class="form-horizontal" runat="server" id="form2">
        <div class="form-group">
            <label for="inputEmail" class="control-label col-xs-2">Tiêu đề</label>
            <div class="col-xs-10">
                <input type="text" class="form-control" id="txtTen" runat="server" placeholder="Tên sản phẩm" />
            </div>
        </div>
        <div class="form-group">
            <label for="inputPrice" class="control-label col-xs-2">Mô tả ngắn</label>
            <div class="col-xs-10">
                <textarea class="form-control" placeholder="Mô tả ngắn" id="txtMota" runat="server"></textarea>
            </div>
        </div>
        <div class="form-group">
            <label for="inputPrice" class="control-label col-xs-2">Ảnh tin tức</label>
            <div class="col-xs-10">
                <input type="file" class="form-control" style="padding-bottom:40px;" id="AnhTT" runat="server" />
            </div>
        </div>
        <div class="form-group">
            <label for="inputPrice" class="control-label col-xs-2">Chi tiết bài viết</label>
            <div class="col-xs-10">
                <CKEditor:CKEditorControl ID="CKEditorControl1" runat="server" Width="90%"></CKEditor:CKEditorControl>
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
                <button type="submit" class="btn btn-primary" id="btnThem" runat="server" onserverclick="btnThem_Click">Thêm bài viết</button>
            </div>
        </div>
        
    </form>
</asp:Content>
