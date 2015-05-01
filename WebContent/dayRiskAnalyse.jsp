<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
 <!DOCTYPE html>
<html>
  <head>
    <title>日分析行情</title>
    <!-- 包含头部信息用于适应不同设备 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
     <!-- 新 Bootstrap 核心 CSS 文件 -->
	<link href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">

	<!-- 可选的Bootstrap主题文件（一般不使用） -->
	<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap-theme.min.css"></script>

	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>

	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>

     <!-- HTML5 Shim 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
     <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
     <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
     <![endif]-->
     
  </head>

  <body>
     <table class="table table-condensed table-striped  table-bordered  table-hover table-responsive  ">
	   <caption>卖出分析</caption>
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
	      <tr ><!-- class="info"  active,success,warning,danger-->
	         <td>十字线</td>
	         <td>在高价圈出现十字线（开盘收盘等价线），并留下上下影 线</td>
	         <td>上影线较长?</td>
	         <td><select><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
	         <td class="warning">适合做空单或卖出</td>
	         <td>此情形表示白银价格经过一段时日 后，已涨得相当高，欲振乏力，开始要走下坡，这是明显 的卖出信号</td>
	         <td>1</td>
	      </tr>
	      <tr>
	         <td>覆盖线</td>
	         <td>行情连续数天扬升之后，隔日以高盘开出，随后买盘不 愿追高，大势持续滑落，收盘价跌至前一日阳线之内</td>
	         <td>是否这种状态?</td>
	         <td><select><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
	         <td>适合做空单或有多单早点卖出</td>
	         <td>这 是超买之后所形成的卖压涌现，获利了结盘大量抛出之故 ，将下跌。</td>
	         <td>1</td>
	      </tr>
	      <tr>
	         <td>孕育线1</td>
	         <td>阳线缩在较长的阳线之内。连续数天扬升之后，隔天出现一根小阳线，并完全孕育在前日之大阳线之中</td>
	         <td>是否这种状态?</td>
	         <td><select><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
	         <td>适合做空单或有多单早点卖出</td>
	         <td>表示上升乏力，是暴跌的前兆</td>
	         <td>1</td>
	      </tr>
	      <tr>
	         <td>孕育线2</td>
	         <td>阴线缩在较长的阳线之内。经过连日飙升后，当日的开收盘价完全孕育在前一日的大 阳线之中，并出现一根阴线</td>
	         <td>是否这种状态?</td>
	         <td><select><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
	         <td>适合做空单或有多单早点卖出</td>
	         <td>这也代表上涨力道不足，是 下跌的前兆。若隔天再拉出一条上影阴线，更可判断为行 情暴跌的征兆</td>
	         <td>1</td>
	      </tr>
	      <tr>
	         <td>上吊阳线</td>
	         <td><b>于高档开盘</b>，先前的买盘因获利了结而杀出，使得大势随之滑落，低档又逢有力承接，价格再度攀升，<b>形成了下影 线为实线的三倍以上</b>。</td>
	         <td>是否这种状态?</td>
	         <td><select><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
	         <td>空手者不宜冒然介入，持仓者宜逢高 抛售</td>
	         <td>此图形看起来似乎买盘转强，然宜慎防主力拉高出货，空手者不宜冒然介入，持仓者宜逢高 抛售</td>
	         <td>1</td>
	      </tr>
	      <tr>
	         <td>跳空</td>
	         <td>所谓跳空即两条阴阳线之间不互相接触，中间有空格的意思</td>
	         <td>是否这种状态?</td>
	         <td><select><option value="-1">请回答</option><option value="0">否</option><option value="1">是一个跳空</option><option value="2">是两个个跳空</option><option value="3">是三个跳空</option><option value="4">是更多跳空</option></select></td>
	         <td>在第二根跳空阳线出现后，即应先行获利了结，以防回档 惨遭套牢，适宜观望，不宜做单</td>
	         <td>连续出现三根跳空阳线后，卖压必现，一般投资人在第二根跳空阳线出现后，即应先行获利了结，以防回档 惨遭套牢。</td>
	         <td>1</td>
	      </tr>
	      <tr>
	         <td>最后包容线1</td>
	         <td>行情持续数天涨势后出现一根阴线，隔天又开低走高拉出一根大阳线，将前一日的阴线完全包住</td>
	         <td>是否这种状态?</td>
	         <td><select><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
	         <td>适宜观望，不宜做单</td>
	         <td>这种现象 看来似乎买盘增强；实际情况需要观望当天的收盘情况，适宜观望，不宜操作</td>
	         <td>1</td>
	      </tr>
	      <tr>
	         <td>最后包容线2</td>
	         <td>行情持续数天涨势后出现一根阴线，隔天又开低走高拉出一根大阳线，将前一日的阴线完全包住，隔日行情出现比大阳线的收盘价低</td>
	         <td>是否这种状态?</td>
	         <td><select><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
	         <td>断然做空</td>
	         <td>断然做空</td>
	         <td>1</td>
	      </tr>
	      <tr>
	         <td>最后包容线3</td>
	         <td>行情持续数天涨势后出现一根阴线，隔天又开低走高拉出一根大阳线，将前一日的阴线完全包住，隔日行情高于大阳线 的收盘价</td>
	         <td>是否这种状态?</td>
	         <td><select><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
	         <td>适宜观望，或做空单</td>
	         <td>有可能随后买盘不 愿追高，大势持续滑落，收盘价跌至前一日阳线之内。出现超买之后所形成的卖压涌现，获利了结盘大量抛出之故 ，将下跌。</td>
	         <td>1</td>
	      </tr>
	      <tr>
	         <td>孕育十字架</td>
	         <td>今日的十字线完全包含在前一日的大阳线之中</td>
	         <td>是否这种状态?</td>
	         <td><select><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
	         <td>适宜观望，或做空单</td>
	         <td>此状态代表买盘力道减弱，行情即将回软转变成买盘 ，价格下跌</td>
	         <td>1</td>
	      </tr>
	      <tr>
	         <td>反击顺沿线1</td>
	         <td>顺沿线是指自高档顺次而下出现的二根阴线。为了打击此二根阴线所出现的一大根阳线，看起来似乎买盘力道增强了。</td>
	         <td>是否这种状态?</td>
	         <td><select><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
	         <td>宜做空</td>
	         <td>投资人须留意这只不过是根“障眼线”，主力正在拉高出货，也是投资人难得的逃命线，宜做空</td>
	         <td>1</td>
	      </tr>
	      <tr>
	         <td>尽头线</td>
	         <td>持续涨升的行情一旦出现此图形，表示上涨力道即将不 足，行情将回档盘整。</td>
	         <td>是否这种状态?</td>
	         <td><select><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
	         <td>宜做空</td>
	         <td>投资人须留意这只不过是根“障眼线”，主力正在拉高出货，也是投资人难得的逃命线，宜做空</td>
	         <td>1</td>
	      </tr>
	   </tbody>
	</table>
  </body>

</html>
			