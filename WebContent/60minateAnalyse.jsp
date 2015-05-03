<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.alibaba.fastjson.*" %>
<%
StringBuffer moxingData = new StringBuffer("");
moxingData.append("[");
	moxingData.append("{\"id\":\"1\"");
	moxingData.append(",\"moXingName\":\"情况1\"");
	moxingData.append(",\"moXingImg\":\"\"");
	moxingData.append(",\"moXingDesc\":\"上涨阳量大于下跌阴量，我们称为良性量能，当某小时上涨阳量小于下跌阴量，同时随后出现的下跌阴量依然在放大时，显示多空力量开始转化，空方占优，同时价格跌破5单元均线，目标在技术高位死叉，为卖点。\"");
	moxingData.append(",\"moXingSuggest\":\"高位卖出.假如价格已下滑到重要均线支持位或者目标下滑到超卖区，可不必急着卖出，等候其进行技术反抽。\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"\"");
	moxingData.append(",\"moXingOperateAble\":\"1\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	moxingData.append(",{\"id\":\"2\"");
	moxingData.append(",\"moXingName\":\"情况二\"");
	moxingData.append(",\"moXingImg\":\"\"");
	moxingData.append(",\"moXingDesc\":\"某小时下破5单元均线后，两个小时都被均线压制，无法站回均线，5单元均线向下拐头，综合指标的技术位置，为卖点。\"");
	moxingData.append(",\"moXingSuggest\":\"高位卖出.假如价格已下滑到重要均线支持位或者目标下滑到超卖区，可不必急着卖出，等候其进行技术反抽。\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"\"");
	moxingData.append(",\"moXingOperateAble\":\"1\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	
	moxingData.append(",{\"id\":\"3\"");
	moxingData.append(",\"moXingName\":\"情况三\"");
	moxingData.append(",\"moXingImg\":\"\"");
	moxingData.append(",\"moXingDesc\":\"突然没有任何征兆的下跌，技术指标快速下滑至20以下超卖区，耐心等候其技术反抽，在指标重新反抽到技能高位时，为卖点。\"");
	moxingData.append(",\"moXingSuggest\":\"高位卖出.技术指标快速下滑至20以下超卖区，耐心等候其技术反抽，在指标重新反抽到技能高位时，为卖点\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"\"");
	moxingData.append(",\"moXingOperateAble\":\"1\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	 
	
moxingData.append("]");

JSONArray jsonArrayData = JSONArray.parseArray(moxingData.toString());
%>
 <!DOCTYPE html>
<html>
  <head>
    <title>60 分钟线确认卖点技巧</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css">
	
	<!-- 可选的Bootstrap主题文件（一般不用引入） -->
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
	
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
	
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="http://cdn.bootcss.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

     <!-- HTML5 Shim 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
     <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
     <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
     <![endif]-->
     <style type="text/css">
     	.hide {
     		display:none;
     	}
     	.show {
     		display:block;
     	}
     </style>
     
  </head>
<body>
<div class="well">前提条件一<br/>
对于常态的上涨阳线(实体阳线或实体大于上下影的阳线)和常态的下跌阴线(缩量阴线，确切的说是量能小于均量的阴线)，此为常态行情，价格在没有外力作用下，依旧会向原方向前进，我们可以安心持股。一旦某日出现剧烈震荡或者是带量下跌，在60分钟上体现为长上影，长下影，长上下影，一小时内跌幅较大的阴线，同时量能大于均量，此类K线我们称为“异动K线”。
</div>
<div class="well">前提条件二<br/>
在经过一段时间的放量涨升后，上行能量开始减退不足，表现上攻开始乏力或者准备进入较长时间的调整，在60分钟上体现为短期均量线下破临时均量线，显示现短期量能释放的平均程度开始萎缩。
</div>

<div class="well">说明<br/>
在出现上述两种状况的条件下，假如某日出现下面三种状况中的一种，乃至是三种状况中的任意两种复合情况(下跌几乎就成为百分百)，必须毫不犹豫，果断出局!
本技法只实用于短线涨升或宽幅震荡的情况，并不适用于窄幅牛皮震荡的情况和总体处于下跌趋势的情况。

</div>
<nav class="navbar navbar-default" role="navigation">
      <ul class="nav navbar-nav">
   		<li style="width: 200px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
         <li> 
         	 <div class="btn-group" role="group" aria-label="...">
				  <button type="button" class="btn btn-primary" onclick="doAnalyse()">分析结果</button>
				  <button type="button" class="btn btn-success" onclick="resetFn()">重置</button>
			</div>
         </li>
      </ul> 
</nav>
<table class="table table-condensed table-striped  table-bordered  table-hover   ">
	   <caption>回答问题进行分析</caption>
	   <thead>
	      <tr>
	         <th style="width:20%">模型</th>
	         <th style="width:30%">图形描述</th>
	         <th style="width:20%">是该状态吗?</th>
	         <th style="width:30%">操作建议</th>
	      </tr>
	   </thead>
	   <tbody>
	   
	   	<%
	   		int length = jsonArrayData.size();
	   		JSONObject json  = null;
	   		String id = null;
	   		String moXingName = null;
	   		String moXingImg = null;
	   		String moXingDesc = null;
	   		String moXingSuggest = null;
	   		String moXingOperateKeyPoint = null;
	   		String moXingOperateAble = null;
	   		String moXingRelativePoint = null;
	   		String  moXingStopLessRange = null;
	   		String moXingProfitRange = null;
	   		for (int i=0;i<length;i++){
	   			json = jsonArrayData.getJSONObject(i);
	   			id = json.getString("id");
	   			moXingName = json.getString("moXingName");
	   			moXingImg = json.getString("moXingImg");
	   			moXingDesc = json.getString("moXingDesc");
	   			moXingSuggest = json.getString("moXingSuggest");
	   			moXingOperateKeyPoint = json.getString("moXingOperateKeyPoint");
	   			moXingOperateAble = json.getString("moXingOperateAble");
	   			moXingRelativePoint =  json.getString("moXingRelativePoint");
	   			moXingStopLessRange =  json.getString("moXingStopLessRange");
	   			moXingProfitRange =   json.getString("moXingProfitRange");
	   			%>
	   			<tr id="tr_<%=id%>"><!-- class="info"  active,success,warning,danger-->
			         <td id="model_<%=id%>"><%=moXingName%></td>
			         <td><%=moXingDesc%></td> 
			         <td><select id="sel_<%=id%>"><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
			         <td ><span id="fenxi_<%=id%>" class="hide"><%=moXingSuggest%></span></td>
			      
			      </tr>
	   			<%
	   		} 
	   	%>
	    </tbody>
</table>


	<!-- 模态框（Modal） myModalLabel-->
<div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">错误</h4>
      </div>
      <div class="modal-body" id="alarm_content">
       
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> 
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
</body>
<script type="text/javascript">
var asklength = "<%=length%>"*1;
function doAnalyse(){
		var score = 0;
		//先分析问题是否都回复了
		/***/
		var selS = 0;
		for(var i=1;i<=asklength;i++){
			var v = $("#sel_"+i).val();
			if(v != -1){
				selS ++;
			}
		}
		if(selS == 0){
				$("#alarm_content").text("请选择图形状况");
				$('#myModal').modal('show');
				return;
		}
		
		
		//将确定是的进行建议显示
		for(var i=1;i<=asklength;i++){
			var v = $("#sel_"+i).val();
			if(v != -1 && v != 0){
				/**
				 addClass 
				 */
				 $("#fenxi_"+i).removeClass("hide").parent().addClass("alert-danger"); 
				// $("#operateAble_"+i).removeClass("hide").parent().addClass("alert-danger"); 
				 //$("#buypoint_"+i).removeClass("hide").parent().addClass("alert-danger"); 
				 //$("#stop_less_range_"+i).removeClass("hide").parent().addClass("alert-danger"); 
				 //$("#profit_range_"+i).removeClass("hide").parent().addClass("alert-danger"); 
				 
				 
				 //var v = $("#relative_point_"+i).text();
				// var endV = vscore*1 +v*1;
				//$("#buypoint_"+i).text(endV);
			}
		}
	}
	
function resetFn(){
		for(var i=1;i<=asklength;i++){
				
				 $("#sel_"+i).val("-1");
				 $("#fenxi_"+i).addClass("hide").parent().removeClass("alert-danger");
				// $("#operateAble_"+i).addClass("hide").parent().removeClass("alert-danger");
				// $("#buypoint_"+i).addClass("hide").parent().removeClass("alert-danger");
				// $("#stop_less_range_"+i).addClass("hide").parent().removeClass("alert-danger");
				//$("#profit_range_"+i).addClass("hide").parent().removeClass("alert-danger");
			
		}
		
	}

</script>
</html>