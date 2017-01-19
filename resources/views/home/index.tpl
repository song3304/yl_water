<{extends file="extends/main.block.tpl"}>
<{block "head-styles-plus"}>
	<link rel="stylesheet" type="text/css" href="<{'static/css/slick.css'|url}>" />
	<link rel="stylesheet" type="text/css" href="<{'static/css/base.css'|url}>" />
	<link rel="stylesheet" type="text/css" href="<{'static/css/style.css'|url}>" />
	<link rel="stylesheet" type="text/css" href="<{'static/css/all.css'|url}>"/>
	<link rel="stylesheet" type="text/css" href="<{'static/css/swiper.min.css'|url}>"/>
	<link rel="stylesheet" type="text/css" href="<{'static/css/iconfont/iconfont.css'|url}>" />
<{/block}>
<{block "head-scripts-plus"}>
	<script src="<{'static/js/fastclick.js'|url}>"></script>
	<script src="<{'static/js/slick.min.js'|url}>"></script>	
	<script src="<{'static/js/rem.js'|url}>"></script>
	<script src="<{'static/js/basic.js'|url}>"></script>
	<script src="<{'static/js/swiper.jquery.min.js'|url}>"></script>
    <script>
	(function($){
		$(function() { 
			$('.autoplay').slick({
				slidesToScroll: 1,
				autoplay: true,
				autoplaySpeed: 2000,
				dots:true,
			});
		    var banner = new Swiper('.banner',{
		        autoplay: 5000,
		        pagination : '.swiper-pagination',
		        paginationClickable: true,
		        lazyLoading : true,
		        loop:true
		    });		
		});
	})(jQuery);
	</script>
<{/block}>
<{block "body-container"}>	
<div class="header">
			<span><{$_site.title}></span>
			<a href="user-center.html"><span class="user"><i class="iconfont icon-person"></i></span></a>
		</div>
		<div class="banner swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide"><a href="javascript:void(0)"><img class="swiper-lazy" data-src="<{'static/img/banner1.png'|url}>" alt=""></a></div>
                <div class="swiper-slide"><a href="javascript:void(0)"><img class="swiper-lazy" data-src="<{'static/img/banner1.png'|url}>" alt=""></a></div>
                <div class="swiper-slide"><a href="javascript:void(0)"><img class="swiper-lazy" data-src="<{'static/img/banner1.png'|url}>" alt=""></a></div>
                <div class="swiper-slide"><a href="javascript:void(0)"><img class="swiper-lazy" data-src="<{'static/img/banner1.png'|url}>" alt=""></a></div>
            </div>
            <div class="swiper-pagination"></div>
        </div>
		<div class="menu">
			<ul class="clearfix">
				<li>
					<a href="self-report.html">
						<img src="<{'static/img/icon1.png'|url}>">
						<p class="menu-txt">交水费</p>
					</a>
				</li>
				<li>
					<a href="green.html">
						<img src="<{'static/img/icon2.png'|url}>">
						<p class="menu-txt">查水费</p>
					</a>
				</li>
				<li>
					<a href="notice.html">
						<img src="<{'static/img/icon6.png'|url}>">
						<p class="menu-txt">通知公告</p>
					</a>
				</li>
				<li>
					<a href="ask.html">
						<img src="<{'static/img/icon8.png'|url}>">
						<p class="menu-txt">咨询帮助</p>
					</a>
				</li>
			</ul>
		</div>
		<div class="brief">
			<h3 class="brief-tit">公司简介</h3>
			<div class="brirf-content clearfix">
				<div class="bc-left fl">
					<img src="<{'static/img/pic1.png'|url}>">
				</div>
				<div class="bc-right fr">
					合肥学院(Hefei University)简称合院， 是国家首批61所"卓越工程师教育培养计划"和首批52所"服务国家特殊需求人才培养项目"培养硕士专业学位研究生试点工
				</div>
			</div>
		</div>
		<dl class="news">
			<dt class="news-tit">公司资讯</dt>
			<dd class="news-content clearfix">
				<div class="nc-left fl">
					<img src="<{'static/img/pic1.png'|url}>">
				</div>
				<div class="nc-right fr">
					<a class="ncr-top">李克强与默克尔共同考察合肥学院宣布 建立中德教育合作示范基地合作基金
					</a>
					<span class="nc-time">07-26 17:00</span>
				</div>
			</dd>
			<dd class="news-content clearfix">
				<div class="nc-left fl">
					<img src="<{'static/img/pic1.png'|url}>">
				</div>
				<div class="nc-right fr">
					<a class="ncr-top">李克强与默克尔共同考察合肥学院宣布 建立中德教育合作示范基地合作基金
					</a>
					<span class="nc-time">07-26 17:00</span>
				</div>
			</dd>
		</dl>
		<div class="footer">
			<ul class="footer-page clearfix">
				<li class="page-item active">
					<a href="index.html">
						<i class="iconfont icon-index"></i>
						<p>首页</p>
					</a>
				</li>
				<li class="page-item">
					<a href="entrance.html">
						<i class="iconfont icon-computer"></i>
						<p>自助入学</p>
					</a>
				</li>
				<li class="page-item">
					<a href="ask.html">
						<i class="iconfont icon-ask"></i>
						<p>咨询帮助</p>
					</a>
				</li>
				<li class="page-item">
					<a href="user-center.html">
						<i class="iconfont icon-person1"></i>
						<p>个人中心</p>
					</a>
				</li>
			</ul>
		</div>
<{/block}>