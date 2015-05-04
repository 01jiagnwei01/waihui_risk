<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.alibaba.fastjson.*" %>
<%
StringBuffer moxingData = new StringBuffer("");
moxingData.append("[");
	moxingData.append("{\"id\":\"1\"");
	moxingData.append(",\"moXingName\":\"反弹线\"");
	moxingData.append(",\"moXingImg\":\"/resources/appimg/buy/buy_fantanxian.png\"");
	moxingData.append(",\"moXingDesc\":\"在跌势中,底价圈内，行情出现长长的下影线\"");
	moxingData.append(",\"moXingSuggest\":\"1：多为买进时机，出现买进信号之后，投资人即可买进；2：为了安全起见，可等候行情反弹回升之后再买进；3：若无重大利空出现，行情必定反弹\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"激进型的投资者可适量买进，等再发力时加仓，稳建型的投资者等在缺口附近止跌上涨时再买进股票\"");
	moxingData.append(",\"moXingOperateAble\":\"1\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	moxingData.append("{\"id\":\"2\"");
	moxingData.append(",\"moXingName\":\"舍子线\"");
	moxingData.append(",\"moXingImg\":\"/resources/appimg/buy_fantanxian.png\"");
	moxingData.append(",\"moXingDesc\":\"大跌行情中，跳空出现十字线。一定要是跳空。\"");
	moxingData.append(",\"moXingSuggest\":\"暗示着筑底已经完成，为反弹之征兆\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"\"");
	moxingData.append(",\"moXingOperateAble\":\"1\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	moxingData.append("{\"id\":\"3\"");
	moxingData.append(",\"moXingName\":\"下档五条阳线\"");
	moxingData.append(",\"moXingImg\":\"/resources/appimg/buy/buy_xiadangwutiaoyangxian.png\"");
	moxingData.append(",\"moXingDesc\":\"在底价圈内出现五条阳线。\"");
	moxingData.append(",\"moXingSuggest\":\"暗示逢低接手力道不弱，底部形成，将反弹。\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"\"");
	moxingData.append(",\"moXingOperateAble\":\"1\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	moxingData.append("{\"id\":\"4\"");
	moxingData.append(",\"moXingName\":\"反弹阳线\"");
	moxingData.append(",\"moXingImg\":\"/resources/appimg/buy/buy_xiadangwutiaoyangxian.png\"");
	moxingData.append(",\"moXingDesc\":\"确认行情已经跌得很深，某一天，行情出现阳线，即“反弹阳线”时，即为买进信号，若反阳线附带着长长的下影线，表示低档已有主力大量承接，行情将反弹而上\"");
	moxingData.append(",\"moXingSuggest\":\"\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"\"");
	moxingData.append(",\"moXingOperateAble\":\"1\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	moxingData.append("{\"id\":\"5\"");
	moxingData.append(",\"moXingName\":\"阴线孕育阴线 \"");
	moxingData.append(",\"moXingImg\":\"\"");
	moxingData.append(",\"moXingDesc\":\"在下跌行情中，出现大阴线的次日行情呈现一条完全包容在大阴线内的小阴线，显示卖盘出尽，有转盘的迹象，将反弹\"");
	moxingData.append(",\"moXingSuggest\":\"\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"\"");
	moxingData.append(",\"moXingOperateAble\":\"1\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	
	moxingData.append("{\"id\":\"6\"");
	moxingData.append(",\"moXingName\":\"并排阳线 \"");
	moxingData.append(",\"moXingImg\":\"\"");
	moxingData.append(",\"moXingDesc\":\"持续涨势中，某日跳空出现阳线，隔日又出现一条与其几乎并排的阳线，如果隔日开高盘，则可期待大行情的出现。\"");
	moxingData.append(",\"moXingSuggest\":\"\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"\"");
	moxingData.append(",\"moXingOperateAble\":\"1\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	
	moxingData.append("{\"id\":\"7\"");
	moxingData.append(",\"moXingName\":\"超越覆盖线\"");
	moxingData.append(",\"moXingImg\":\"\"");
	moxingData.append(",\"moXingDesc\":\"行情上涨途中若是出现覆盖线，表示已达天价区，此后若是出现创新天价的阳线，代表行情有转为买盘的迹象，行情回继续上涨。\"");
	moxingData.append(",\"moXingSuggest\":\"\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"\"");
	moxingData.append(",\"moXingOperateAble\":\"1\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	moxingData.append("{\"id\":\"8\"");
	moxingData.append(",\"moXingName\":\"上涨插入线\"");
	moxingData.append(",\"moXingImg\":\"\"");
	moxingData.append(",\"moXingDesc\":\"在行情震荡走高之际，出现覆盖阴线的隔日，拉出一条下降阳线，这是短期的回档，行情上涨\"");
	moxingData.append(",\"moXingSuggest\":\"观望，有明显上涨的趋势在买入\"");
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
    <title>日分析行情</title>
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
	         <th style="width:10%">模型</th>
	         <th style="width:10%">图形</th>
	         <th style="width:20%">图形描述</th>
	         <th style="width:5%">是该状态吗?</th>
	         <th style="width:10%">信号分析</th>
	         <th style="width:5%">操作</th>
	         <th style="width:20%">操盘要略</th>
	         
	         <th style="width:5%">系统设置相对前日收盘点的购买点</th>
	         <th style="width:5%">建议购买点</th>
	         <th style="width:5%">止损点范围</th>
	         <th style="width:5%">止盈点范围</th>
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
			         <td><%
			         	if("".equals(moXingImg)){}
			         	else{
			         %>
			         <img alt="" src="<%=request.getContextPath() %><%=moXingImg%>">
			         	<%	
			         	}
			         %>
			         </td>
			         <td><%=moXingDesc%></td> 
			         <td><select id="sel_<%=id%>"><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
			         <td ><span id="fenxi_<%=id%>" class="hide"><%=moXingSuggest%></span></td>
			         <td ><span id="operateAble_<%=id%><%=id%>" class="hide"><%if("1".equals(moXingOperateAble)){out.print("可以操作");}else {out.print("不建议操作");} %></span></td>
			         <td><span id="operateKeyPoint_<%=id%>" class="hide"><%=moXingOperateKeyPoint%></span></td>
			         <td id="relative_point_<%=id%>"><%=moXingRelativePoint %></td>
			         <td ><span id="buypoint_<%=id%>" class="hide"></span></td>
			         <td ><span id="stop_less_range_<%=id%>" class="hide"><%=moXingStopLessRange %></span></td>
			         <td ><span id="profit_range_<%=id%>" class="hide"><%=moXingProfitRange %></span></td>
			      </tr>
	   			<%
	   		}
	   	
	   	
	   	%>
	      
         </tbody>
</table>
</body>
</html>