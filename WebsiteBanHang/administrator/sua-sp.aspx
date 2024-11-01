<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sua-sp.aspx.cs" Inherits="WebsiteBanHang.administrator.sua_sp" %>
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
    <form class="form-horizontal" runat="server" id="form2" accept-charset="utf-8" enctype="multipart/form-data">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">Sửa sản phẩm</h4>
        </div>
        <div class="modal-body">
            <div class="form-group">
                <label for="inputEmail" class="control-label col-xs-2">Tên sản phẩm</label>
                <div class="col-xs-10">
                    <input type="text" class="form-control" id="txtTenSP" placeholder="Tên sản phẩm" runat="server" />
                </div>
            </div>
            <div class="form-group">
                <label for="inputCategory" class="control-label col-xs-2">Nhóm sản phẩm</label>
                <div class="col-xs-10">
                    <asp:DropDownList ID="cbbLoaiSP" runat="server" CssClass="form-control"></asp:DropDownList>
                
                    <%--<select class="form-control" id="cbbLoaiSP" runat="server">
                    
                    </select>--%>
                </div>
            </div>
            <div class="form-group">
                <label for="inputPrice" class="control-label col-xs-2">Giá sản phẩm</label>
                <div class="col-xs-10">
                    <input type="text" class="form-control" placeholder="Giá sản phẩm" id="txtGia" runat="server" />
                </div>
            </div>
            <div class="form-group">
                <label for="inputPrice" class="control-label col-xs-2">Bảo hành (Tháng)</label>
                <div class="col-xs-10">
                    <input type="number" class="form-control" placeholder="1" id="numBaohanh" runat="server" style="width:60px;" />
                </div>
            </div>
            <div class="form-group">
                <label for="inputPrice" class="control-label col-xs-2">Ảnh sản phẩm</label>
                <div class="col-xs-10">
                    <asp:Image ID="AnhSP" runat="server" Width="50px" Height="50px" />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <%--<input type="file" class="form-control" style="padding-bottom:40px; width:300px; float:left;" id="AnhSP" runat="server" />--%>
                    <%--<span id="imageSP" runat="server" style="float:left; padding-left:20px;"></span>--%>
                </div>
            </div>
            <div class="form-group">
                <label for="inputPrice" class="control-label col-xs-2">Mô tả ngắn</label>
                <div class="col-xs-10">
                    <textarea class="form-control" id="mota" runat="server" placeholder="Mô tả ngắn"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label for="inputPrice" class="control-label col-xs-2">Chi tiết sản phẩm</label>
                <div class="col-xs-10">
                    <CKEditor:CKEditorControl ID="CKEditorControl1" runat="server" Width="90%"></CKEditor:CKEditorControl>
                    <%--<textarea name="CKEditorControl1" id="CKEditorControl1" rows="10" cols="80"></textarea>--%>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <div class="form-group">
                <div class="col-xs-offset-2 col-xs-10">
                    <button type="submit" class="btn btn-primary" id="btnSua" runat="server" onserverclick="btnSua_Click">Sửa sản phẩm</button>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
