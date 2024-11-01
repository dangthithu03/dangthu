<%@ Page Title="" Language="C#" MasterPageFile="~/administrator/admin.Master" AutoEventWireup="true" CodeBehind="them-san-pham.aspx.cs" Inherits="WebsiteBanHang.administrator.them_san_pham" %>

<%@ Register Assembly="CKFinder" Namespace="CKFinder" TagPrefix="CKFinder" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .themsp{
            width:1000px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form class="form-horizontal" runat="server" id="form2">
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
                <input type="file" class="form-control" style="padding-bottom:40px;" id="AnhSP" runat="server" />
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
            </div>
        </div>
        <div class="form-group">
            <div class="col-xs-offset-2 col-xs-10">
                <button type="submit" class="btn btn-primary" id="btnThem" runat="server" onserverclick="btnThem_Click">Thêm sản phẩm</button>
            </div>
        </div>
        
    </form>

</asp:Content>
