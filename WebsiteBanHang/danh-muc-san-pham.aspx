<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="danh-muc-san-pham.aspx.cs" Inherits="WebsiteBanHang.danh_muc_san_pham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="header-main clearfix">
        <div id="tieude-danhmuc" class="header-main clearfix">
            <div class="tieude" id="tieude" runat="server">
                <h2>Đồ chơi</h2>
            </div>
            <div class="clearfix" id="sitemap">
                <div id="sitemap1" runat="server">
                    <%--<div class="sitemap-item">
                        <a href="index.aspx">Trang chủ</a>
                    </div>
                    <div class="sitemap-item">
                        <span class="arrow"> >> </span>
                        <a class="current" href="lien-he.aspx">Đồ chơi</a>
                    </div>--%>
                </div>
            </div>
        </div>
        <div class="mid-category">
            <div class="product-content clearfix" id="product" runat="server">
                <%--<div class="product-box">
                    <a href="chi-tiet-san-pham.aspx" title="#">
                        <div class="product-image">
                            <img src="images/xe-lac-nhac-baby-o-to8.jpg" style="display:inline;" />
                        </div>
                        <div class="product-info">
                            <h3 class="product-title">
                                Xe lắc nhạc Baby ô tô
                            </h3>
                            <p class="gia-cu clearfix">450.000 đ</p>
                            <p class="gia-moi clearfix">430.000 đ</p>
                        </div>
                    </a>
                </div>
                <div class="product-box">
                    <a href="chi-tiet-san-pham.aspx" title="#">
                        <div class="product-image">
                            <img src="images/xe-lac-nhac-baby-o-to8.jpg" style="display:inline;" />
                        </div>
                        <div class="product-info">
                            <h3 class="product-title">
                                Xe lắc nhạc Baby ô tô
                            </h3>
                            <p class="gia-cu clearfix">450.000 đ</p>
                            <p class="gia-moi clearfix">430.000 đ</p>
                        </div>
                    </a>
                </div>
                <div class="product-box">
                    <a href="chi-tiet-san-pham.aspx" title="#">
                        <div class="product-image">
                            <img src="images/xe-lac-nhac-baby-o-to8.jpg" style="display:inline;" />
                        </div>
                        <div class="product-info">
                            <h3 class="product-title">
                                Xe lắc nhạc Baby ô tô
                            </h3>
                            <p class="gia-cu clearfix">450.000 đ</p>
                            <p class="gia-moi clearfix">430.000 đ</p>
                        </div>
                    </a>
                </div>
                <div class="product-box">
                    <a href="chi-tiet-san-pham.aspx" title="#">
                        <div class="product-image">
                            <img src="images/xe-lac-nhac-baby-o-to8.jpg" style="display:inline;" />
                        </div>
                        <div class="product-info">
                            <h3 class="product-title">
                                Xe lắc nhạc Baby ô tô
                            </h3>
                            <p class="gia-cu clearfix">450.000 đ</p>
                            <p class="gia-moi clearfix">430.000 đ</p>
                        </div>
                    </a>
                </div>
                <div class="product-box">
                    <a href="chi-tiet-san-pham.aspx" title="#">
                        <div class="product-image">
                            <img src="images/xe-lac-nhac-baby-o-to8.jpg" style="display:inline;" />
                        </div>
                        <div class="product-info">
                            <h3 class="product-title">
                                Xe lắc nhạc Baby ô tô
                            </h3>
                            <p class="gia-cu clearfix">450.000 đ</p>
                            <p class="gia-moi clearfix">430.000 đ</p>
                        </div>
                    </a>
                </div>
                <div class="product-box">
                    <a href="chi-tiet-san-pham.aspx" title="#">
                        <div class="product-image">
                            <img src="images/xe-lac-nhac-baby-o-to8.jpg" style="display:inline;" />
                        </div>
                        <div class="product-info">
                            <h3 class="product-title">
                                Xe lắc nhạc Baby ô tô
                            </h3>
                            <p class="gia-cu clearfix">450.000 đ</p>
                            <p class="gia-moi clearfix">430.000 đ</p>
                        </div>
                    </a>
                </div>
                <div class="product-box">
                    <a href="chi-tiet-san-pham.aspx" title="#">
                        <div class="product-image">
                            <img src="images/xe-lac-nhac-baby-o-to8.jpg" style="display:inline;" />
                        </div>
                        <div class="product-info">
                            <h3 class="product-title">
                                Xe lắc nhạc Baby ô tô
                            </h3>
                            <p class="gia-cu clearfix">450.000 đ</p>
                            <p class="gia-moi clearfix">430.000 đ</p>
                        </div>
                    </a>
                </div>
                <div class="product-box">
                    <a href="chi-tiet-san-pham.aspx" title="#">
                        <div class="product-image">
                            <img src="images/xe-lac-nhac-baby-o-to8.jpg" style="display:inline;" />
                        </div>
                        <div class="product-info">
                            <h3 class="product-title">
                                Xe lắc nhạc Baby ô tô
                            </h3>
                            <p class="gia-cu clearfix">450.000 đ</p>
                            <p class="gia-moi clearfix">430.000 đ</p>
                        </div>
                    </a>
                </div>
                <div class="product-box">
                    <a href="chi-tiet-san-pham.aspx" title="#">
                        <div class="product-image">
                            <img src="images/xe-lac-nhac-baby-o-to8.jpg" style="display:inline;" />
                        </div>
                        <div class="product-info">
                            <h3 class="product-title">
                                Xe lắc nhạc Baby ô tô
                            </h3>
                            <p class="gia-cu clearfix">450.000 đ</p>
                            <p class="gia-moi clearfix">430.000 đ</p>
                        </div>
                    </a>
                </div>
                <div class="product-box">
                    <a href="chi-tiet-san-pham.aspx" title="#">
                        <div class="product-image">
                            <img src="images/xe-lac-nhac-baby-o-to8.jpg" style="display:inline;" />
                        </div>
                        <div class="product-info">
                            <h3 class="product-title">
                                Xe lắc nhạc Baby ô tô
                            </h3>
                            <p class="gia-cu clearfix">450.000 đ</p>
                            <p class="gia-moi clearfix">430.000 đ</p>
                        </div>
                    </a>
                </div>
                <div class="product-box">
                    <a href="chi-tiet-san-pham.aspx" title="#">
                        <div class="product-image">
                            <img src="images/xe-lac-nhac-baby-o-to8.jpg" style="display:inline;" />
                        </div>
                        <div class="product-info">
                            <h3 class="product-title">
                                Xe lắc nhạc Baby ô tô
                            </h3>
                            <p class="gia-cu clearfix">450.000 đ</p>
                            <p class="gia-moi clearfix">430.000 đ</p>
                        </div>
                    </a>
                </div>
                <div class="product-box">
                    <a href="chi-tiet-san-pham.aspx" title="#">
                        <div class="product-image">
                            <img src="images/xe-lac-nhac-baby-o-to8.jpg" style="display:inline;" />
                        </div>
                        <div class="product-info">
                            <h3 class="product-title">
                                Xe lắc nhạc Baby ô tô
                            </h3>
                            <p class="gia-cu clearfix">450.000 đ</p>
                            <p class="gia-moi clearfix">430.000 đ</p>
                        </div>
                    </a>
                </div>--%>
            </div>
        </div>
    </div>
</asp:Content>
