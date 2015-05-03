<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.alibaba.fastjson.*" %>
<%
StringBuffer moxingData = new StringBuffer("");
moxingData.append("[");
	moxingData.append("{\"id\":\"1\"");
	moxingData.append(",\"moXingName\":\"情况一\"");
	moxingData.append(",\"moXingImg\":\"\"");
	moxingData.append(",\"moXingDesc\":\"DIF和MACD均大于0（即在图形上表示为它们处于零线以上）并向上移动\"");
	moxingData.append(",\"moXingSuggest\":\"处于多头行情中，可以买入或持股\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"\"");
	moxingData.append(",\"moXingOperateAble\":\"1\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	moxingData.append(",{\"id\":\"2\"");
	moxingData.append(",\"moXingName\":\"情况二\"");
	moxingData.append(",\"moXingImg\":\"\"");
	moxingData.append(",\"moXingDesc\":\"DIF和MACD均小于0（即在图形上表示为它们处于零线以下）并向下移动\"");
	moxingData.append(",\"moXingSuggest\":\"处于空头行情中，可以卖出股票或观望\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"\"");
	moxingData.append(",\"moXingOperateAble\":\"1\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	
	moxingData.append(",{\"id\":\"3\"");
	moxingData.append(",\"moXingName\":\"情况三\"");
	moxingData.append(",\"moXingImg\":\"\"");
	moxingData.append(",\"moXingDesc\":\"DIF和MACD均大于0（即在图形上表示为它们处于零线以上）但都向下移动\"");
	moxingData.append(",\"moXingSuggest\":\"行情多头市场的短期回调阶段，在总体看多的情况下，可以先卖出股票观望；\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"\"");
	moxingData.append(",\"moXingOperateAble\":\"1\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	moxingData.append(",{\"id\":\"4\"");
	moxingData.append(",\"moXingName\":\"情况四\"");
	moxingData.append(",\"moXingImg\":\"\"");
	moxingData.append(",\"moXingDesc\":\"DIF和MACD均小于0时（即在图形上表示为它们处于零线以下）但向上移动\"");
	moxingData.append(",\"moXingSuggest\":\"一般表示为空头市场的反弹阶段，将上涨，在总体看空的情况下，可以少量买进。\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"\"");
	moxingData.append(",\"moXingOperateAble\":\"1\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	
	moxingData.append(",{\"id\":\"5\"");
	moxingData.append(",\"moXingName\":\"黄金交叉一\"");
	moxingData.append(",\"moXingImg\":\"\"");
	moxingData.append(",\"moXingDesc\":\"当MACD指标中的DIF线和MACD线都运行在0值线附近区域时，如果DIF线在MACD线下方、由下向上突破MACD线.价格是在底部小幅上升，并经过了一段短时间的横盘整理，然后价格放量向上突破、同时MACD指标出现这种金叉时，是长线买入信号\"");
	moxingData.append(",\"moXingSuggest\":\"投资者可以长线逢低建仓。\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"\"");
	moxingData.append(",\"moXingOperateAble\":\"1\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	
	moxingData.append(",{\"id\":\"6\"");
	moxingData.append(",\"moXingName\":\"黄金交叉二\"");
	moxingData.append(",\"moXingImg\":\"\"");
	moxingData.append(",\"moXingDesc\":\"当MACD指标中的DIF线和MACD线都运行在0值线附近区域时，是从底部启动、已经出现一轮涨幅比较大的上升行情，并经过上涨途中的比较长时间的中位回档整理, 然后股价再次调头向上扬升、同时MACD指标出现这种金叉\"");
	moxingData.append(",\"moXingSuggest\":\"短线买入信号。\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"\"");
	moxingData.append(",\"moXingOperateAble\":\"1\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	
	moxingData.append(",{\"id\":\"7\"");
	moxingData.append(",\"moXingName\":\"黄金交叉三\"");
	moxingData.append(",\"moXingImg\":\"\"");
	moxingData.append(",\"moXingDesc\":\"当MACD指标中的DIF线和MACD线都运行在0值线以上区域时，如果DIF线在MACD线下方调头、由下向上突破MACD线，这是MACD指标的第二种“黄金交叉”。\"");
	moxingData.append(",\"moXingSuggest\":\"激进型投资者可以短线加码买入股票；稳健型投资者则可以继续持股待涨。\"");
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