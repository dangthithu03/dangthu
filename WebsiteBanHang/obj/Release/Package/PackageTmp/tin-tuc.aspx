<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="tin-tuc.aspx.cs" Inherits="WebsiteBanHang.tin_tuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="header-main clearfix">
        <div id="tieude-danhmuc" class="header-main clearfix">
            <div class="tieude" id="tieude" runat="server">
                <h2>Tin Tức</h2>
            </div>
            <div class="clearfix" id="sitemap">
                <div id="sitemap1" runat="server">
                    <div class="sitemap-item">
                        <a href="index.aspx">Trang chủ</a>
                    </div>
                    <div class="sitemap-item">
                        <span class="arrow"> >> </span>
                        <a class="current" href="lien-he.aspx">Tin Tức</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix" id="tintuc" runat="server">
            
            
        </div>
    </div>
</asp:Content>
