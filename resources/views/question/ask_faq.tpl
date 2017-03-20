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
		<span>我要提问</span>
		<a href="javascript:window.history.go(-1);" class="back"><i class="iconfont icon-left"></i></a>
	</div>
	<div class="banner">
		<img src="<{'static/img/self-report.png'|url}>">
	</div>
	<div class="contain" style="background-color:#fff;">
		<form action="<{'auth/authenticate_query'|url nofilter}>" id="form" method="POST">
		<{csrf_field() nofilter}>
			<div class="reason">	
				<textarea  placeholder="请您在此输入您的申请原因，以便通过审核"></textarea>
			</div>
			<div class="step-btn">
				<input name="callback_url" value="" type="hidden">
				<button type="submit" class="ta-center db">提交</button>
			</div>
		</form>	
	</div>
	
	<{include file="home/footer.inc.tpl"}>	
<{/block}>