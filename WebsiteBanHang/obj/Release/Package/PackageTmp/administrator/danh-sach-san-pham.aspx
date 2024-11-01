<%@ Page Title="" Language="C#" MasterPageFile="~/administrator/admin.Master" AutoEventWireup="true" CodeBehind="danh-sach-san-pham.aspx.cs" Inherits="WebsiteBanHang.administrator.danh_sach_san_pham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<%--    <%@ Register Assembly="CKFinder" Namespace="CKFinder" TagPrefix="CKFinder" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>--%>

    <%--<script>
        CKEDITOR.replace('CKEditorControl1');

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
    </script>--%>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-hover">
        <thead>
            <tr>
                <th style="width:120px;">Mã sản phẩm</th>
                <th>Tên sản phẩm</th>
                <th>Nhóm sản phẩm</th>
                <th>Giá sản phẩm (đ)</th>
                <th>Ảnh sản phẩm</th>
                <th>Chức năng</th>
            </tr>
        </thead>
        <tbody id="lstDanhsach" runat="server">
            
            
        </tbody>
    </table>
</asp:Content>
