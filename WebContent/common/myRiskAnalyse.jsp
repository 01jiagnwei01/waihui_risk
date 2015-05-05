<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.alibaba.fastjson.*" %>
<%
StringBuffer moxingData = new StringBuffer("");
moxingData.append("[");
	moxingData.append("{\"id\":\"1\"");
	moxingData.append(",\"moXingName\":\"201505042200\"");
	moxingData.append(",\"moXingImg\":\"\"");
	moxingData.append(",\"moXingDesc\":\"经过一天的白银看涨趋势，到晚上接近10:00时,'3月工厂订单月率',实际值2.1大于预期值,理应白银下跌,实际依然有上升趋势。波动点数3289-3309之间。\"");
	moxingData.append(",\"moXingSuggest\":\"我当时消息一出就操作了卖空操作。结果波动由于资金小，还有原有消息面美国可能加息推到12月的消息，无法确定。平仓损失15个点。后来到22:30左右开始走跌势。建议消息与走势不一致时观望，禁止操作。\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"资金量低，需要理性分析。建议消息与走势不一致时观望，禁止操作。\"");
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
    <title>个人操作行情</title>
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
				$("#alarm_content").text("请选择一个答案");
				$('#myModal').modal('show');
				return;
		}
		if(selS>=2){
			$("#alarm_content").text("操作错误，只能选择其中一种状态获得相应建议");
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