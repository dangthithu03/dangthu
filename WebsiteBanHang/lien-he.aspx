<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="lien-he.aspx.cs" Inherits="WebsiteBanHang.lien_he" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
    <%--<link href="css/bootstrap.min.css" rel="stylesheet" />--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form2" runat="server">
        <div class="header-main clearfix">
            <div id="tieude-danhmuc" class="header-main clearfix">
                <div class="tieude">
                    <h2>Liên Hệ</h2>
                </div>
                <div id="sitemap" class="clearfix">
                    <div class="sitemap-item">
                        <a href="index.aspx">Trang chủ</a>
                    </div>
                    <div class="sitemap-item">
                        <span class="arrow"> >> </span>
                        <a class="current" href="lien-he.aspx">Liên hệ</a>
                    </div>
                </div>
            </div>
            <div id="form-lienhe" class="header-main clearfix">
                <div class="form">
                    <div class="form-name">Họ và tên:</div>
                    <input type="text" style="width:300px; height:20px;" id="txtHoTen" runat="server" placeholder="Họ và tên" />
                </div>
                <div class="form">
                    <div class="form-name">Email:</div>
                    <input type="text" style="width:300px; height:20px;" id="txtEmail" runat="server" placeholder="Email" />
                </div>
                <div class="form">
                    <div class="form-name">Số điện thoại:</div>
                    <input type="text" style="width:300px; height:20px;" id="txtSDT" runat="server" placeholder="Số điện thoại" />
                </div>
                <div class="form">
                    <div class="form-name">Nội dung:</div>
                    <textarea class="noidung-lienhe" style="width:400px; height:120px; font-family:sans-serif; color:#333" id="txtNoiDung" runat="server" placeholder="Nội dung"></textarea>
                </div>
                <div class="form">
                    <div class="alert alert-success" runat="server" id="alertSuccess" visible="false" style="width:400px;">
                        <a href="#" class="close" data-dismiss="alert">&times;</a>
                        <strong>Hoàn tất!</strong> Đã gửi thành công.
                    </div>
                    <div class="alert alert-danger alert-error" runat="server" id="alertWarning" visible="false" style="width:400px;">
                        <a href="#" class="close" data-dismiss="alert">&times;</a>
                        <strong>Lỗi!</strong> Gửi không thành công.
                    </div>
                </div>
                <div class="form" style="padding-left:180px;">
                    <input type="button" style="width:70px; height:35px;" value="Gửi" id="btnLienHe" runat="server" onserverclick="btnLienHe_Click" />
                </div>
            </div>
        </div>
    </form>
</asp:Content>
