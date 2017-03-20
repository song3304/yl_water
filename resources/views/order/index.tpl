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
	<script type="text/javascript">
	(function($){
		$().ready(function(){
			//<{call validate selector='#form'}>
		});
	})(jQuery);
	</script>
<{/block}>

<{block "body-container"}>
	<div class="header">
		<span>交水费</span>
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
    		<p class="step-txt">添加住址</p>
    	</li>
    	<li>
    		<span class="step-icon">3</span>
    		<p>交水费</p>
    	</li>
    	<li>
    		<span class="step-icon">4</span>
    		<p>充值成功</p>
    	</li>
    	</ul>
    	<span class="pro-line"><img src="<{'static/img/pro-line.png'|url}>"></span>
	</div>
	
<form action="<{'order/toPay'|url nofilter}>"  method="post" autocomplete="off" id="form">
	<input type="hidden" name="_token" value="<{csrf_token()}>">
	<ul class="dorm-book">
		<li style="cursor:pointer;" onclick="window.location.href='<{'ucenter/addressList?callback_url='|url}>'">
			<span class="book-tit">选择交费地址</span>
			<label>
				<div>户号:1232132&nbsp;&nbsp;</div>
				<div>户名:#13楼401室&nbsp;&nbsp;</div>
				<div>地址:熊家村二期还建房9栋201&nbsp;&nbsp;</div>
				<div>电话:18301302257</div>
			</label>
			<div style="min-width:10%;display: inline-block;text-align:right;"><img style="width:20px;" src="<{'static/img/arrow.png'|url}>"></div>
	        <input type="hidden" name="address_id" id="address_id" value="1"/>  
		</li>
		<li>
			<span class="book-tit">选择交费金额</span>
			<label>
		    	<span><input type="radio" name="sumMoney" value="50" checked/>￥50&nbsp;</span>
		    	<span><input type="radio" name="sumMoney" value="50"/>￥100&nbsp;</span>
		    	<span><input type="radio" name="sumMoney" value="150"/>￥150&nbsp;</span>
		    	<span><input type="radio" name="sumMoney" value="200"/>￥200</span>
		    </label>
		</li>
	</ul>
	<div class="step-btn">
		<input type="hidden" name="callback_url" value="<{$_callback_url}>"/>
		<button type="submit" class="ta-center db">交水费</button>
	</div>
</form>
<{include file="home/footer.inc.tpl"}>	
<{/block}>