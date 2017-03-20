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
<div class="header">添加住址信息
	<div class="header_left"  onclick="window.history.go(-1)"><i class="iconfont icon-left"></i></div>
</div>
<form action="<{'member/addMember'|url nofilter}>"  method="POST" autocomplete="off" id="form">
	<input type="hidden" name="_token" value="<{csrf_token()}>">
<!--column姓名-->
<div class="column_box">
	<div class="column_img"><img src="<{'static/img/reduce.png'|url}>"></div>
    <input placeholder="户号" type="text" name="account_num"  id="account_num"/>
    <div class="border_bottom"></div>
</div>
<!--column性别-->
<div class="column_box">
	<div class="column_img"><img src="<{'static/img/people.png'|url}>"></div>
    <input placeholder="户名" type="text" name="account_name"  id="account_name"/>
    <div class="border_bottom"></div>
</div>
<!--column电话-->
<div class="column_box">
	<div class="column_img"><img src="<{'static/img/phone.png'|url}>"></div>
    <input placeholder="电话" type="text" name="account_phone" id="account_phone"/>
    <div class="border_bottom"></div>
</div>

<!--column身份证-->
<div class="column_box">
	<div class="column_img"><img src="<{'static/img/adrress_2.png'|url}>"></div>
    <input placeholder="地址" type="text" name="account_address" id="account_address"/>
    <div class="border_bottom"></div>
</div>
<!--confirm确认添加-->
	<button class="confirm">确认添加</button>
</form>	
<{/block}>