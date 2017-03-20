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
		<span>我的提问</span>
		<a href="javascript:window.history.go(-1);" class="back"><i class="iconfont icon-left"></i></a>
	</div>
	<div class="banner">
		<img src="<{'static/img/self-report.png'|url}>">
	</div>
	<div class="contain">
				<div class="myanswer-box">
						<ul class="myanswer">
							<a href="<{'question/faq_item'|url}>">
							<li>
								<span class="route-icon"><i class="iconfont icon-zixun"></i></span>
								<span class="route-word">请问怎样才能申请助学贷款？</span>
								<span class="goin">2016-08-25</span>
							</li>
							</a>
							<li>
								<span class="route-icon"><i class="iconfont icon-zixun"></i></span>
								<span class="route-word">请问怎样才能申请助学贷款？</span>
								<span class="goin">2016-08-25</span>
							</li>
							<li>
								<span class="route-icon"><i class="iconfont icon-zixun"></i></span>
								<span class="route-word">请问怎样才能申请助学贷款？</span>
								<span class="goin">2016-08-25</span>
							</li>
							<li>
								<span class="route-icon"><i class="iconfont icon-zixun"></i></span>
								<span class="route-word">请问怎样才能申请助学贷款？</span>
								<span class="goin">2016-08-25</span>
							</li>
							<li>
								<span class="route-icon"><i class="iconfont icon-zixun"></i></span>
								<span class="route-word">请问怎样才能申请助学贷款？</span>
								<span class="goin">2016-08-25</span>
							</li>
						</ul>
					</div>
				</div>
	</div>
	<{include file="home/footer.inc.tpl"}>	
<{/block}>