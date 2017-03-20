<{extends file="extends/main.block.tpl"}>

<{block "head-styles-after"}>
	<link rel="stylesheet" type="text/css" href="<{'static/css/iconfont/iconfont.css'|url}>" />
	<link rel="stylesheet" type="text/css" href="<{'static/css/iconfont/address.css'|url}>" />
<{/block}>

<{block "head-scripts-plus"}>
	<script type="text/javascript">
	(function($){
		$().ready(function(){
			//$(".delete").hide();
			
			$(".delete").click(
				function(){
					
					$(this).parent().remove();
				}
			);
			
			
		});
	})(jQuery);
	</script>
<{/block}>

<{block "body-container"}>
<!--header顶部标题-->
<div class="header">订单信息
	<div class="header_left"  onclick="window.history.go(-1)"><i class="iconfont icon-left"></i></div>
</div>
<!--address地址-->
<div class="address">
	<div class="border_top"></div>
		<h1>订单编号：<span>10002</span></h1>
    	<h2>户号：<span>1232132</span></h1>
        <h2>户名：<span>#13楼401室</span>&nbsp;&nbsp;&nbsp;&nbsp;电话：<span>15065421863</span></h2>
        <h2>地址：<span>熊家村二期还建房9栋1506</span></h2>
        <h2>交水费：<span>￥100元</span>&nbsp;&nbsp;状态：<span style="color:green;">未支付</span></h2>
        <div class="fix_right">
        <div class="pay">去支付</div>
        <div class="delete">删除</div>
        </div>
    <div class="border_bottom"></div>
</div>
<div class="address">
<div class="border_top"></div>
		<h1>订单编号：<span>10003</span></h1>
    	<h2>户号：<span>1232132</span></h1>
        <h2>户名：<span>#13楼401室</span>&nbsp;&nbsp;&nbsp;&nbsp;电话：<span>15065421863</span></h2>
        <h2>地址：<span>熊家村二期还建房9栋2003</span></h2>
        <h2>交水费：<span>￥50元</span>&nbsp;&nbsp;状态：<span style="color:red;">已支付</span></h2>
        <div class="fix_right">
        <div class="pay">再次付</div>
        <div class="delete">删除</div>
        </div>
    <div class="border_bottom"></div>
</div>
<{/block}>