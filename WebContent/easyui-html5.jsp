<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="./resources/icon/icon.css?3">
<link rel="stylesheet" type="text/css" href="./resources/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="./resources/easyui/themes/icon.css">
<script type="text/javascript" src="./resources/easyui/jquery.min.js"></script>
<script type="text/javascript" src="./resources/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="./resources/easyui/locale/easyui-lang-zh_CN.js"></script>
<style type="text/css">
	.mask {  
            position: absolute; top: 0px; filter: alpha(opacity=60); background-color: #777;
            z-index: 1002; left: 0px;
            opacity:0.5; -moz-opacity:0.5;
        }
</style>
<script type="text/javascript">
	 function getPageArea() {
		if (document.compatMode == 'BackCompat') {
			return {
				width: Math.max(document.body.scrollWidth, document.body.clientWidth),
				height: Math.max(document.body.scrollHeight, document.body.clientHeight)
			}
		} else {
			return {
				width: Math.max(document.documentElement.scrollWidth, document.documentElement.clientWidth),
				height: Math.max(document.documentElement.scrollHeight, document.documentElement.clientHeight)
			}
		}
	}
	jQuery.extend({ 
		showMask: function(el, msg) {
			if(!el)el =document.body;
			var _1c3=$(el);
			msg = msg?msg:"";
			if(!_1c3.children("div.datagrid-mask").length){
				$("<div class=\"datagrid-mask\" style=\"display:block\"></div>").appendTo(_1c3);
				var msg=$("<div class=\"datagrid-mask-msg\" style=\"display:block;left:50%\"></div>").html(msg).appendTo(_1c3);
				msg.css("marginLeft",-msg.outerWidth()/2);
			}
		}, 
		hideMask: function(el){ 
			if(!el)el =document.body;
		   var _1c4=$(el);
		   	var mask = _1c4.children("div.datagrid-mask-msg");
		   	if(mask){
		   		_1c4.children("div.datagrid-mask-msg").remove();
				_1c4.children("div.datagrid-mask").remove();
		   	}
			
		} 
	});
	
	Date.prototype.format = function(format){ 
		var o = { 
			"M+" : this.getMonth()+1, //month 
			"d+" : this.getDate(), //day 
			"h+" : this.getHours(), //hour 
			"m+" : this.getMinutes(), //minute 
			"s+" : this.getSeconds(), //second 
			"q+" : Math.floor((this.getMonth()+3)/3), //quarter 
			"S" : this.getMilliseconds() //millisecond 
		} 

		if(/(y+)/.test(format)) { 
			format = format.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length)); 
		} 

		for(var k in o) { 
			if(new RegExp("("+ k +")").test(format)) { 
				format = format.replace(RegExp.$1, RegExp.$1.length==1 ? o[k] : ("00"+ o[k]).substr((""+ o[k]).length)); 
			} 
		} 
			return format; 
	} 
	//使用方法 
	//var now = new Date(); 
	//var nowStr = now.format("yyyy-MM-dd hh:mm:ss"); 
	//使用方法2: 
	//var testDate = new Date(); 
	//var testStr = testDate.format("YYYY年MM月dd日hh小时mm分ss秒"); 
</script>