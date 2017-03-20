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
	<script type="text/javascript">
	(function($){
		$().ready(function(){
			<{call validate selector='#form'}>
		});
	})(jQuery);
	</script>
<{/block}>

<{block "body-container"}>
	<div class="header">
		<span>扣费成功</span>
		<a href="javascript:window.history.go(-1);" class="back"><i class="iconfont icon-left"></i></a>
	</div>
	<div class="step">
		<ul class="fs0">
		 <li>
    		<span class="step-icon passbg">1</span>
    		<p>个人登录</p>
    	</li>
    	<li>
    	<span class="step-icon passbg">2</span>
    		<p>添加住址</p>
    	</li>
    	<li>
    		<span class="step-icon passbg">3</span>
    		<p class="step-txt">交费成功</p>
    	</li>
    	<li>
    		<span class="step-icon">4</span>
    		<p>充值成功</p>
    	</li>
    	</ul>
    	<span class="pro-line"><img src="<{'static/img/pro-line1.png'|url}>"></span>
	</div>
	
	<div class="row">
   		<div class="col-xs-12"><img src="<{'static/img/pay-2.png'|url}>" alt="" class="img-responsive center-block"></div>
   		<p class="col-xs-12 text-center">您已经交费成功，请等待一至两个工作日为您充值(温馨提示:保存以下二维码,扫描后可直接完成交费)。</p>
   		<div class="col-xs-12 text-center"><img src="<{'static/img/qrcode.jpg'|url}>" alt="" class="img-responsive" style="display: initial;max-width:250px;"></div>
   </div>
	
<{include file="home/footer.inc.tpl"}>	
<{/block}>