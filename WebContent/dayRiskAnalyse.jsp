<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
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
     </style>
     
  </head>

  <body>
  	 
     <table class="table table-condensed table-striped  table-bordered  table-hover table-responsive  ">
	   <caption>卖出分析<button type="button" class="btn btn-primary active" onclick="doAnalyse()">分析结果</button></caption>
	   <thead>
	      <tr>
	         <th>模型</th>
	         <th>前置操作</th>
	         <th>问题</th>
	         <th>回答</th>
	         <th>结论</th>
	         <th>结论分析</th>
	         <th>该模型权重</th>
	      </tr>
	   </thead>
	   <tbody>
	      <tr id="tr_1"><!-- class="info"  active,success,warning,danger-->
	         <td id="model_1">十字线</td>
	         <td>在高价圈出现十字线（开盘收盘等价线），并留下上下影 线</td>
	         <td>上影线较长?</td>
	         <td><select id="sel_1"><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
	         <td ><span id="result_1" class="hide">宜平仓、空单</span></td>
	         <td><span id="desc_1" class="hide">此情形表示白银价格经过一段时日 后，已涨得相当高，欲振乏力，开始要走下坡，这是明显的卖出信号</span></td>
	         <td id="score_1">1</td>
	      </tr>
	      <tr id="tr_2">
	         <td id="model_2">覆盖线</td>
	         <td>行情连续数天扬升之后，隔日以高盘开出，随后买盘不 愿追高，大势持续滑落，收盘价跌至前一日阳线之内</td>
	         <td>是否这种状态?</td>
	         <td><select id="sel_2"><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
	         <td ><span id="result_2" class="hide">适合做空单或有多单早点卖出</span></td>
	         <td><span id="desc_2" class="hide">这是超买之后所形成的卖压涌现，获利了结盘大量抛出之故 ，将下跌。</span></td>
	         <td id="score_2">1</td>
	      </tr>
	      <tr id="tr_3">
	         <td id="model_3">孕育线1</td>
	         <td>阳线缩在较长的阳线之内。连续数天扬升之后，隔天出现一根小阳线，并完全孕育在前日之大阳线之中</td>
	         <td>是否这种状态?</td>
	         <td><select id="sel_3"><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
	         <td><span id="result_3" class="hide">宜平仓、空单</span></td>
	         <td><span id="desc_3" class="hide">表示上升乏力，是暴跌的前兆</span></td>
	         <td id="score_3">1</td>
	      </tr>
	      <tr id="tr_4">
	         <td id="model_4">孕育线2</td>
	         <td>阴线缩在较长的阳线之内。经过连日飙升后，当日的开收盘价完全孕育在前一日的大 阳线之中，并出现一根阴线</td>
	         <td>是否这种状态?</td>
	         <td><select id="sel_4"><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
	         <td><span id="result_4" class="hide">适合做空单或有多单早点卖出</span></td>
	         <td><span id="desc_4" class="hide">这也代表上涨力道不足，是 下跌的前兆。若隔天再拉出一条上影阴线，更可判断为行 情暴跌的征兆</span></td>
	         <td id="score_4">1</td>
	      </tr>
	      <tr id="tr_5">
	         <td id="model_5">上吊阳线</td>
	         <td><b>于高档开盘</b>，先前的买盘因获利了结而杀出，使得大势随之滑落，低档又逢有力承接，价格再度攀升，<b>形成了下影 线为实线的三倍以上</b>。</td>
	         <td>是否这种状态?</td>
	         <td><select id="sel_5"><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
	         <td><span id="result_5" class="hide">空手者不宜冒然介入，持仓者宜逢高 抛售</span></td>
	         <td><span id="desc_5" class="hide">此图形看起来似乎买盘转强，然宜慎防主力拉高出货，空手者不宜冒然介入，持仓者宜逢高 抛售</span></td>
	         <td id="score_5">1</td>
	      </tr>
	      <tr id="tr_6">
	         <td id="model_6">跳空</td>
	         <td>所谓跳空即两条阴阳线之间不互相接触，中间有空格的意思</td>
	         <td>是否这种状态?</td>
	         <td><select id="sel_6"><option value="-1">请回答</option><option value="0">否</option><option value="1">是一个跳空</option><option value="2">是两个跳空</option><option value="3">是三个跳空</option><option value="4">是更多跳空</option></select></td>
	         <td><span id="result_6" class="hide">在第二根跳空阳线出现后，即应先行获利了结，以防回档 惨遭套牢，适宜观望，不宜做单</span></td>
	         <td><span id="desc_6" class="hide">连续出现三根跳空阳线后，卖压必现，一般投资人在第二根跳空阳线出现后，即应先行获利了结，以防回档惨遭套牢。</span></td>
	         <td id="score_6">1</td>
	      </tr>
	      <tr id="tr_7">
	         <td id="model_7">最后包容线1</td>
	         <td>行情持续数天涨势后出现一根阴线，隔天又开低走高拉出一根大阳线，将前一日的阴线完全包住</td>
	         <td>是否这种状态?</td>
	         <td><select id="sel_7"><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
	         <td><span id="result_7" class="hide">适宜观望，不宜做单</span></td>
	         <td><span id="desc_7" class="hide">这种现象看来似乎买盘增强；实际情况需要观望当天的收盘情况，适宜观望，不宜操作</span></td>
	         <td id="score_7">1</td>
	      </tr>
	       <tr id="tr_8">
	         <td id="model_8">最后包容线2</td>
	         <td>行情持续数天涨势后出现一根阴线，隔天又开低走高拉出一根大阳线，将前一日的阴线完全包住，隔日行情出现比大阳线的收盘价低</td>
	         <td>是否这种状态?</td>
	         <td><select id="sel_8"><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
	         <td><span id="result_8" class="hide">断然做空</span></td>
	         <td><span id="desc_8" class="hide">断然做空</span></td>
	         <td id="score_8">1</td>
	      </tr>
	      <tr id="tr_9">
	         <td id="model_9">最后包容线3</td>
	         <td>行情持续数天涨势后出现一根阴线，隔天又开低走高拉出一根大阳线，将前一日的阴线完全包住，隔日行情高于大阳线 的收盘价</td>
	         <td>是否这种状态?</td>
	         <td><select  id="sel_9"><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
	         <td><span id="result_9" class="hide">适宜观望，或做空单</span></td>
	         <td><span id="desc_8" class="hide">有可能随后买盘不 愿追高，大势持续滑落，收盘价跌至前一日阳线之内。出现超买之后所形成的卖压涌现，获利了结盘大量抛出之故 ，将下跌。</span></td>
	         <td id="score_9">1</td>
	      </tr>
	      <tr id="tr_10">
	         <td id="model_10">孕育十字架</td>
	         <td>今日的十字线完全包含在前一日的大阳线之中</td>
	         <td>是否这种状态?</td>
	         <td><select   id="sel_10"><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
	         <td><span id="result_10" class="hide">适宜观望，或做空单</span></td>
	         <td><span id="desc_8" class="hide">此状态代表买盘力道减弱，行情即将回软转变成买盘 ，价格下跌</span></td>
	         <td id="score_10">1</td>
	      </tr>
	      <tr id="tr_11">
	         <td id="model_11">反击顺沿线1</td>
	         <td>顺沿线是指自高档顺次而下出现的二根阴线。为了打击此二根阴线所出现的一大根阳线，看起来似乎买盘力道增强了。</td>
	         <td>是否这种状态?</td>
	         <td><select  id="sel_11"><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
	         <td><span id="result_11" class="hide">宜做空</span></td>
	         <td><span id="desc_11" class="hide">投资人须留意这只不过是根“障眼线”，主力正在拉高出货，也是投资人难得的逃命线，宜做空</span></td>
	         <td  id="score_11">1</td>
	      </tr>
	      <tr  id="tr_12">
	         <td id="model_12">尽头线1</td>
	         <td>持续涨升的行情一旦出现此图形。</td>
	         <td>是否这种状态?</td>
	         <td><select  id="sel_12"><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
	         <td><span id="result_12" class="hide">宜先行获利了结</span></td>
	         <td><span id="desc_12" class="hide">表示上涨力道即将不足，行情将回档盘整.</span></td>
	         <td id="score_12">1</td>
	      </tr>
	       <tr  id="tr_13">
	         <td id="model_13">尽头线2</td>
	         <td>持续涨升的行情一旦出现此图形且小阳线并没有超越前一日的最高点</td>
	         <td>是否这种状态?</td>
	         <td><select   id="sel_13"><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
	         <td><span id="result_13" class="hide">宜先行获利了结适宜卖空</span></td>
	         <td><span id="desc_13" class="hide">表示上涨力道即将不足，行情将回档盘整.证明上涨乏力，行情下跌</span></td>
	         <td  id="score_13">1</td>
	      </tr>
	       <tr  id="tr_14">
	         <td id="model_14">跳空孕育十字线</td>
	         <td>价格跳空上涨后拉出三根大阳线，随后又出现一条十字线</td>
	         <td>是否这种状态?</td>
	         <td><select   id="sel_14"><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
	         <td><span id="result_14" class="hide">适宜卖空,可能暴跌</span></td>
	         <td><span id="desc_14" class="hide">代表涨幅过大，买盘不愿追高，持仓者纷纷杀出，市场价格将暴跌</span></td>
	         <td id="score_14">1</td>
	      </tr>
	      <tr  id="tr_15">
	         <td id="model_15">舍子线</td>
	         <td>行情<b>跳空上涨</b>形成一条十字线，隔日却<b>又跳空拉出一根阴线</b></td>
	         <td>是否这种状态?</td>
	         <td><select   id="sel_15"><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
	         <td><span id="result_15" class="hide">适宜卖空,可能暴跌</span></td>
	         <td><span id="desc_15" class="hide">暗示行情即将暴跌.此时价格涨幅已经相当大，无力再往上冲，以致跳空而下，为卖出信号，在此情况下，成交量值往往也会随之减少。</span></td>
	          <td id="score_15">1</td>
	      </tr>
	      <tr  id="tr_16">
	         <td id="model_16">跳空下降</td>
	         <td>在连续多日阴线之后出现一根往上的阳线</td>
	         <td>是否这种状态?</td>
	         <td><select   id="sel_16"><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
	         <td><span id="result_16" class="hide">宜把握时机卖出，否则价格会继续下跌</span></td>
	         <td><span id="desc_16" class="hide">此情形是回光 反照之征兆，宜把握时机卖出，否则价格会继续下跌。</span></td>
	         <td id="score_16">1</td>
	      </tr>
	      <tr  id="tr_17">
	         <td id="model_17">三颗星</td>
	         <td>下跌行情中出现极线</td>
	         <td>是否这种状态?</td>
	         <td><select   id="sel_17"><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
	         <td><span id="result_17" class="hide">平仓的好机会</span></td>
	         <td><span id="desc_17" class="hide">这是平仓的好机会，价格将再往下探底。</span></td>
	         <td id="score_17">1</td>
	      </tr>
	      <tr  id="tr_18">
	         <td id="model_18">三段大阳线</td>
	         <td>行情持续<b>下跌中</b>出现<b>一条大阳线</b>，此大阳线<b>将前三天的值幅完全包容</b></td>
	         <td>是否这种状态?</td>
	         <td><select  id="sel_18"><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
	         <td><span id="result_18" class="hide">宜尽快平仓,观察</span></td>
	         <td><span id="desc_18" class="hide">这是绝好的逃命线，投资人宜尽快平仓 ，价格将持续下跌.</span></td>
	         <td id="score_18">1</td>
	      </tr>
	      <tr  id="tr_19">
	         <td id="model_19">顺沿线</td>
	         <td>当行情上涨一个月以上后出现连续二条下降阴线</td>
	         <td>是否这种状态?</td>
	         <td><select  id="sel_19"><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
	         <td><span id="result_19" class="hide">宜尽快平仓,宜卖空</span></td>
	         <td><span id="desc_19" class="hide">可判定前些日的高价为天价，上涨已乏力，价格将往下降.</span></td>
	         <td id="score_19">1</td>
	      </tr>
	       <tr  id="tr_20">
	         <td id="model_20">暴跌三杰</td>
	         <td>行情大涨出现三条连续阴线</td>
	         <td>是否这种状态?</td>
	         <td><select id="sel_20"><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
	         <td><span id="result_20" class="hide">宜尽快平仓,宜卖空</span></td>
	         <td><span id="desc_20" class="hide">这是暴跌 的前兆，行情将呈一个月以上的回档整理局面.</span></td>
	         <td id="score_20">1</td>
	      </tr>
	      <tr  id="tr_21">
	         <td id="model_21">跳空下降二阴线</td>
	         <td>下降的行情中又出现跳空下降的连续二条阴线</td>
	         <td>是否这种状态?</td>
	         <td><select  id="sel_21"><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
	         <td><span id="result_21" class="hide">宜尽快平仓,宜卖空</span></td>
	         <td><span id="desc_21" class="hide">这是暴跌的前兆.常在两条阴线出现之前，会有一小段反弹行情，但若反弹物力，连续出现阴线时，表示买盘大崩盘，行情将继续往下探底</span></td>
	         <td id="score_21">1</td>
	      </tr>
	      <tr  id="tr_22">
	         <td id="model_22">低档盘旋</td>
	         <td>通常整理时间在六日至十一日之间，若接下来出现跳空阴线</td>
	         <td>是否这种状态?</td>
	         <td><select  id="sel_22"><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
	         <td><span id="result_22" class="hide">宜尽快平仓,宜卖空</span></td>
	         <td><span id="desc_22" class="hide">为大跌的起步，也就是说前段的盘整只不过是中段的盘正罢了，行情将持续回档整理</span></td>
	         <td id="score_22">1</td>
	      </tr>
	   </tbody>
	</table>
	<div class="well well-lg">分析结果：</div>
	
	
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
  	var asklength = 22;
  	function doAnalyse(){
  		var score = 0;
  		for(var i=1;i<=22;i++){
  			var v = $("#sel_"+i).val();
  		
  			if(v == -1){
  				var model =  $("#model_"+i).text();
  				$("#alarm_content").text("模型："+model+"还没有判断当前状态");
  				$('#myModal').modal('show');
  				return;
  			}
  			
  		}
  		
  	}
  </script>

</html>
			