<{extends file="admin/extends/create.block.tpl"}>

<{block "head-plus"}>
<{include file="common/uploader.inc.tpl"}>
<{/block}>

<{block "inline-script-plus"}>
$('#cover').uploader();
<{/block}>

<{block "title"}>Banner<{/block}>

<{block "name"}>banner<{/block}>

<{block "fields"}>
<{include file="admin/banner/fields.inc.tpl"}>
<{/block}>
