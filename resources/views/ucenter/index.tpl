<{extends file="extends/main.block.tpl"}>

<{block "head-styles-after"}>
	<link rel="stylesheet" type="text/css" href="<{'static/css/slick.css'|url}>" />
	<link rel="stylesheet" type="text/css" href="<{'static/css/style.css'|url}>" />
	<link rel="stylesheet" type="text/css" href="<{'static/css/iconfont/iconfont.css'|url}>" />
	<link rel="stylesheet" type="text/css" href="<{'static/css/base.css'|url}>" />
<{/block}>

<{block "head-scripts-plus"}>
	<script src="<{'static/js/rem.js'|url}>"></script>
	<script src="<{'static/js/basic.js'|url}>"></script>
<{/block}>

<{block "body-container"}>
	<div class="write-info">
			<span>
				<img src="<{'static/img/no-person.png'|url}>">
			</span>
			<p>您还没有填写信息哦</p>
			<span class="goin"><i class="iconfont icon-right"></i></span>
		</div>
		<ul class="ask-box">
			<li class="ask-item">
				<a href="<{'ucenter/info'|url}>">
				    <i class="iconfont icon-data"></i>
				    <span class="ask-word">个人信息</span>
				    <span class="goin"><i class="iconfont icon-right"></i></span>
				</a>
			</li>
			<li class="ask-item">
				<a href="<{'ucenter/order_list'|url}>">
				    <i class="iconfont icon-green"></i>
				    <span class="ask-word">我的交费</span>
				    <span class="goin"><i class="iconfont icon-right"></i></span>
				</a>
			</li>
			<li class="ask-item">
				<a href="<{'question/my_faq'|url}>">
				    <i class="iconfont icon-ask"></i>
				    <span class="ask-word">我的提问</span>
				    <span class="goin"><i class="iconfont icon-right"></i></span>
				</a>
			</li>
			<li class="ask-item">
				<a href="<{'ucenter/modify_pwd'|url}>">
				    <i class="iconfont icon-changpsw"></i>
				    <span class="ask-word">修改密码</span>
				    <span class="goin"><i class="iconfont icon-right"></i></span>
				</a>
			</li>
		</ul>
		<div class="sign-out">
				<a href="#">
					<i class="iconfont icon-logout"></i>
				   <span>退出</span>
				</a>
		</div>
<{include file="home/footer.inc.tpl"}>	
<{/block}>