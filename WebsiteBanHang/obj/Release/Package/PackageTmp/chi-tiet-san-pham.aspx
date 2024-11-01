<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="chi-tiet-san-pham.aspx.cs" Inherits="WebsiteBanHang.chi_tiet_san_pham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form method="post" runat="server">
    <div class="header-main clearfix">
        <div id="tieude-danhmuc" class="header-main clearfix">
            <div class="tieude" id="tensanpham" runat="server">
                <%--<h2>Chi tiết sản phẩm</h2>--%>
            </div>
            <div id="sitemap" class="clearfix">
                <div class="sitemap-item">
                    <a href="index.aspx">Trang chủ</a>
                </div>
                <div class="sitemap-item">
                    <span class="arrow"> >> </span>
                    <a class="current" href="lien-he.aspx">Đồ chơi</a>
                </div>
            </div>
        </div>
        <div class="product_wrapper clearfix">
            
                <div class="product-wrapper clearfix">
                    <div class="product-image-wrapper">
                        <div class="zoom-section" id="showanh" runat="server">
                            
                        </div>
                    </div>
                    </div>
                    <div class="product-info1">
                        <div id="tieude" runat="server">
                            <%--<h2>Xe lắc nhạc Baby ô tô</h2>--%>
                        </div>
                        <div class="info-wrapper clearfix">
                            <div id="infosp" runat="server">
                                <%--<div class="row clearfix">
                                    <label>Giá bán</label>
                                    <div class="gia-moi">430.000 đ</div>
                                </div>
                                <div class="row clearfix">
                                    <label>Bảo hành</label>
                                    <div>3 tháng</div>
                                </div>
                                <div class="row clearfix">
                                    <label>Tình trạng</label>
                                    <div><span>Còn hàng</span></div>
                                </div>--%>
                            </div>
                            <div class="row clearfix">
                                <label>Số lượng</label>
                                <div>
                                    <select class="number">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row clearfix">
                                <label></label>
                                <div>
                                    <input type="submit" value="Mua ngay" class="mua-ngay" />
                                </div>
                            </div>
                        </div>
                        <div class="payment-info">
                            <p class="cung-cap">Chúng tôi cung cấp dịch vụ bán hàng, giao hàng và thu tiền tại nhà trên toàn lãnh thổ Việt Nam</p>
                            <p class="dia-chi"><strong>Hà Nội:</strong>Số 10 ngõ 218 Tây Sơn - Đống Đa - Hà Nội</p>
                            <p class="so-dien-thoai">04.666.34.688 - 04.666.24.777 - 04.666.37.333</p>
                            <p class="dia-chi"><strong>Hải Phòng:</strong>30A Trần Nguyên Hãn - Lê Chân - Hải Phòng</p>
                            <p class="so-dien-thoai">0934.686.078</p>
                            <p class="dia-chi"><strong>Đồng Nai:</strong>20A8 KDC An Bình, Khu phố 1, Phường An Bình, TP. Biên Hòa, Đồng Nai</p>
                            <p class="dia-chi"><strong>TP HCM:</strong>53A Giải Phóng, P.4 - Q. Tân Bình - Hồ Chí Minh</p>
                            <p class="so-dien-thoai">0934.686.078</p>
                        </div>
                    </div>
                    <div class="chi-tiet-san-pham clearfix">
                        <div class="thong-tin-san-pham">
                            <h2>Chi tiết sản phẩm</h2>
                            <div class="chi-tiet" id="chitiet" runat="server">
                                <div class="ten-san-pham">
                                    <h3 style="margin: 0px 0px 12px; padding: 0.2em 0px; color: rgb(0, 128, 0); font-family: Tahoma, arial, sans-serif; font-weight: 400; font-size: small; line-height: 14px; text-transform: uppercase; text-align: justify;">
                                        <strong id="tensp" runat="server"></strong>
                                    </h3>
                                </div>
                                <div id="motaNgan" runat="server"></div>
                                <div style="font-size:14px; color:#333; line-height:23.8px;">
                                    <div>
                                        <h3 style="margin: 0px 0px 12px; padding: 0.2em 0px; color: rgb(0, 128, 0); font-family: Tahoma, arial, sans-serif; font-weight: 400; font-size: small; line-height: 14px; text-transform: uppercase; text-align: justify;">
                                            <strong style="font-weight:bold;">THÔNG TIN SẢN PHẨM:</strong>
                                        </h3>
                                        <div id="chitietsp" runat="server"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="san-pham-quan-tam"></div>
                    </div>
                </div>
            
        </div>
    </div>
        </form>
</asp:Content>
