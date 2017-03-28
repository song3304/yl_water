<{extends file="extends/main.block.tpl"}>

<{block "head-styles-after"}>
	<link rel="stylesheet" type="text/css" href="<{'static/css/slick.css'|url}>" />
	<link rel="stylesheet" type="text/css" href="<{'static/css/style.css'|url}>" />
	<link rel="stylesheet" type="text/css" href="<{'static/css/iconfont/iconfont.css'|url}>" />
	<link rel="stylesheet" type="text/css" href="<{'static/css/base.css'|url}>" />
	<style>
		.dorm-book>li>label{
			font-size:14px;
			max-width:70%;
			display: inline-block;
			outline: medium none;
			padding-left: 2%;
    		vertical-align: middle;
		}
		.dorm-book>li>label>span{
			display: inline-block;
		}
	</style>
<{/block}>

<{block "head-scripts-plus"}>
	<script src="<{'static/js/rem.js'|url}>"></script>
<{/block}>

<{block "body-container"}>
	<div class="header">
		<span>交水费-扫码支付</span>
		<a href="javascript:window.history.go(-1);" class="back"><i class="iconfont icon-left"></i></a>
	</div>
	<div class="text-center">
		<h5 style="margin:10px;"><{$_pay_info['msg']}></h5>
		<div><img src="<{'qr/index?text='|url}><{$_qrcode|urlencode}>" style="max-width:60%;"/></div>
	</div>

<{include file="home/footer.inc.tpl"}>	
<{/block}>