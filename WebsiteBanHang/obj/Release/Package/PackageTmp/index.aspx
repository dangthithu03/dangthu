<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebsiteBanHang.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {

            $("#<%=daslider.ClientID%>").cslider({
		            autoplay: true,
		            bgincrement: 450
		        });

		    });
		</script>  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form2" runat="server">
    <div class="header-main clearfix">
        <div id="slide" class="clearfix">
            <div id="daslider" class="da-slider" runat="server">
				<div class="da-slide">
					<h2>Easy management</h2>
					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
					<a href="#" class="da-link">Read more</a>
					<div class="da-img"><img src="images/dielac.png" width="256" height="256" alt="image01" /></div>
				</div>
				<div class="da-slide">
					<h2>Revolution</h2>
					<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
					<a href="#" class="da-link">Read more</a>
					<div class="da-img"><img src="images/3.png" alt="image01" /></div>
				</div>
				<div class="da-slide">
					<h2>Warm welcome</h2>
					<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane.</p>
					<a href="#" class="da-link">Read more</a>
					<div class="da-img"><img src="images/1.png" alt="image01" /></div>
				</div>
				<div class="da-slide">
					<h2>Quality Control</h2>
					<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
					<a href="#" class="da-link">Read more</a>
					<div class="da-img"><img src="images/4.png" alt="image01" /></div>
				</div>
				<nav class="da-arrows">
					<span class="da-arrows-prev"></span>
					<span class="da-arrows-next"></span>
				</nav>
			</div>
        </div>
        <div class="sanpham-noibat clearfix">
            <div class="block-title clearfix">
                <h2>SẢN PHẨM MỚI NHẤT</h2>
            </div>
            <div class="san-pham-noi-bat" id="spmoi" runat="server">
            </div>
        </div>
    </div>
        </form>
</asp:Content>
