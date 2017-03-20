<{extends file="extends/main.block.tpl"}>

<{block "head-styles-after"}>
	<link rel="stylesheet" type="text/css" href="<{'static/css/iconfont/iconfont.css'|url}>" />
	<link rel="stylesheet" type="text/css" href="<{'static/css/iconfont/address.css'|url}>" />
<{/block}>

<{block "head-scripts-plus"}>
	<script type="text/javascript">
	(function($){
		$().ready(function(){
			$(".delete").hide();
			
			$(".delete").click(
				function(){
					$(this).parent().remove();
				}
			);
			
			$('#edit').on('click',function(){
				var edit_html = $('#edit').html();
				if(edit_html=="编辑"){
					$(".delete").show();$('#edit').html("取消");
				}else if(edit_html=="取消"){
					$(".delete").hide();$('#edit').html("编辑");
				}
			});
		});
	})(jQuery);
	</script>
<{/block}>

<{block "body-container"}>
<!--header顶部标题-->
<div class="header">地址信息
	<div class="header_left"  onclick="window.history.go(-1)"><i class="iconfont icon-left"></i></div>
    <div class="header_right" id="edit" onClick="onedit()">编辑</div>
</div>
<!--address地址-->
<div class="address">
	<div class="border_top"></div>
    	<h1>户号：<span>1232132</span></h1>
        <h2>户名：<span>#13楼401室</span>&nbsp;&nbsp;&nbsp;&nbsp;电话：<span>15065421863</span></h2>
        <h2>地址：<span>熊家村二期还建房9栋1506</span></h2>
        <div class="delete">删除</div>
    <div class="border_bottom"></div>
</div>
<div class="address">
<div class="border_top"></div>
    	<h1>户号：<span>1232132</span></h1>
        <h2>户名：<span>#13楼401室</span>&nbsp;&nbsp;&nbsp;&nbsp;电话：<span>15065421863</span></h2>
        <h2>地址：<span>熊家村二期还建房9栋2003</span></h2>
        <div class="delete">删除</div>
    <div class="border_bottom"></div>
</div>
<!--column添加新地址-->
<div class="column_box" style="margin-top:14px;" onclick="document.location='<{'ucenter/add_address'|url}>';">
	<div class="border_top"></div>
	<div class="column_img"><img src="<{'static/img/add.png'|url}>"></div>
    <p>添加新预约人</p>
    <div class="next"><img src="<{'static/img/arrow.png'|url}>"></div>
    <div class="border_bottom"></div>
</div>
<{/block}>