<{extends file="extends/main.block.tpl"}>

<{block "head-styles-after"}>
  <link rel="stylesheet" type="text/css" href="<{'static/css/slick.css'|url}>"/>
  <link rel="stylesheet" type="text/css" href="<{'static/css/base.css'|url}>"/>
  <link rel="stylesheet" type="text/css" href="<{'static/css/style.css'|url}>"/>
  <link rel="stylesheet" type="text/css" href="<{'static/css/iconfont/iconfont.css'|url}>"/>
<{/block}>

<{block "head-scripts-plus"}>
	<script src="<{'static/js/basic.js'|url}>"></script>
	<script src="<{'static/js/rem.js'|url}>"></script>
<{/block}>

<{block "body-container"}>
	<div class="header">
		<span>通知公告</span>
		<a href="javascript:window.history.go(-1);" class="back"><i class="iconfont icon-left"></i></a>
	</div>
	<div class="banner">
		<img src="<{'static/img/self-report.png'|url}>">
	</div>
	<div class="notice-box">
			<ul class="notice-content">
				<a href="<{'notice/info'|url}>">
				<li class="notice-list">
					<h3 class="list-tit">2016-08-01</h3>
				    <p class="list-txt">
                                               根据录取通知书附带的新生入学交通指引到学校报到。
				    </p>
				</li>
				<span class="goin"><i class="iconfont icon-right"></i></span>
				</a>
				<a href="<{'notice/info'|url}>">
				<li class="notice-list">
					<h3 class="list-tit">2016-08-02</h3>
				    <p class="list-txt">
                                               根据录取通知书附带的新生入学交通指引到学校报到。
				    </p>
				</li>
				<span class="goin"><i class="iconfont icon-right"></i></span>
				</a>
				<a href="<{'notice/info'|url}>">
				<li class="notice-list">
					<h3 class="list-tit">2016-08-03</h3>
				    <p class="list-txt">
                                               根据录取通知书附带的新生入学交通指引到学校报到,根据录取通知书附带的新生入学交通指引到学校报到,根据录取通知书附带的新生入学交通指引到学校报到。
				    </p>
				</li>
				<span class="goin"><i class="iconfont icon-right"></i></span>
				</a>
				<a href="<{'notice/info'|url}>">
				<li class="notice-list">
					<h3 class="list-tit">2016-08-04</h3>
				    <p class="list-txt">
                                               根据录取通知书附带的新生入学交通
				    </p>
				</li>
				<span class="goin"><i class="iconfont icon-right"></i></span>
				</a>
				<a href="<{'notice/info'|url}>">
				<li class="notice-list">
					<h3 class="list-tit">2016-08-05</h3>
				    <p class="list-txt">
                                               根据录取通知书附带的新生入学交通指引到学校报到。
				    </p>
				</li>
				<span class="goin"><i class="iconfont icon-right"></i></span>
				</a>
			</ul>
	</div>
	<{include file="home/footer.inc.tpl"}>	
<{/block}>