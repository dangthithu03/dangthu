<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sua-tt.aspx.cs" Inherits="WebsiteBanHang.administrator.sua_tt" %>
<%@ Register Assembly="CKFinder" Namespace="CKFinder" TagPrefix="CKFinder" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="../ckeditor/ckeditor.js" ></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <style type="text/css">
        .bs-example{
    	    margin: 20px;
            width:1000px;
            margin:0 auto;
            padding:10px 0px 10px;
            box-shadow:0px 0px 10px rgba(0, 0, 0, 0.2);
        } 
        .content{
            width:1000px;
            padding-top:50px;
        }
        .form-control{
            width:70%;
        }
        .themsp{
            width:1000px;
        }
    </style>
    <script>
        CKEDITOR.replace('CKEditorControl1', { htmlEncodeOutput: true });
        $.fn.modal.Constructor.prototype.enforceFocus = function () {
            modal_this = this
            $(document).on('focusin.modal', function (e) {
                if (modal_this.$element[0] !== e.target && !modal_this.$element.has(e.target).length
                    // add whatever conditions you need here:
                &&
                !$(e.target.parentNode).hasClass('cke_dialog_ui_input_select') && !$(e.target.parentNode).hasClass('cke_dialog_ui_input_text')) {
                    modal_this.$element.focus()
                }
            })
        };
    </script>
</head>
<body>
    <form class="form-horizontal" runat="server" id="form2">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">Sửa tin tức</h4>
        </div>
        <div class="modal-body">
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
                    <asp:Image ID="Image1" runat="server" Width="100px" Height="100px" />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </div>
            </div>
            <div class="form-group">
                <label for="inputPrice" class="control-label col-xs-2">Chi tiết bài viết</label>
                <div class="col-xs-10">
                    <CKEditor:CKEditorControl ID="CKEditorControl1" runat="server" Width="90%"></CKEditor:CKEditorControl>
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
                    <button type="submit" class="btn btn-primary" id="btnSua" runat="server" onserverclick="btnSua_Click">Sửa bài viết</button>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
