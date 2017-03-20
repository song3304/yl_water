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
		<span>公告详情</span>
		<a href="javascript:window.history.go(-1);" class="back"><i class="iconfont icon-left"></i></a>
	</div>
	<div class="banner">
		<img src="<{'static/img/self-report.png'|url}>">
	</div>
	<div class="noticeDtail">
					<p class="detail-tit">根据录取通知书附带的新生入学交通指引到学校报到.
					<span>2016-06-25</span>
					</p>
				    <p class="detail-txt">
                                              时请持大学录取通知书且按照录取通知书报到时间到校报到，为保证报到工作顺利进行， 请勿提前或者延期报到，逾期一周不报到者，取消入学资格。
					持录取通知书可购买半价火车票。来校期间费用自理。 时请持大学录取通知书且按照录取通知书报到时间到校报到，为保证报到工作顺利进行， 请勿提前或者延期报到，
					逾期一周不报到者，取消入学资格。持录取通知书可购买半价火车票。来校期间费用自理 时请持大学录取通知书且按照录取通知书报到时间到校报到，为保证报到工作顺利进行，
					 请勿提前或者延期报到，逾期一周不报到者，取消入学资格。持录取通知书可购买半价火车票。来校期间费用自理。 时请持大学录取通知书且按照录取通知书报到时间到校报到，
					 为保证报到工作顺利进行， 请勿提前或者延期报到，逾期一周不报到者，取消入学资格。持录取通知书可购买半价火车票。来校期间费用自理。 
					 时请持大学录取通知书且按照录取通知书报到时间到校报到，为保证报到工作顺利进行， 请勿提前或者延期报到，逾期一周不报到者，取消入学资格。
					 持录取通知书可购买半价火车票。来校期间费用自理。
				    </p>
	</div>
	<{include file="home/footer.inc.tpl"}>	
<{/block}>