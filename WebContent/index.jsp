<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%
 String name = "管理员";
 %>
 <!DOCTYPE html>
<html lang="zh">
<head><%--  --%>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" content="ie=edge"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>系统首页</title>
<%@include file="./easyui-html5.jsp" %>
</head>
<script type="text/javascript">
var opTabIndex = -1;
function menuHandler(item){
			if("close" == item.name){
				$('#tt').tabs('close',opTabIndex);
			}else if("close all" == item.name){
				var tabs = $('#tt').tabs('tabs');
				
				for(var i=tabs.length-1;i>=0;i--){
					$('#tt').tabs('close',i);
				}
				
				return;
			}else if("close other" == item.name){
				var tabs = $('#tt').tabs('tabs');
				for(var i=tabs.length-1;i>=0;i--){
					if(i == opTabIndex) continue;
					$('#tt').tabs('close',i);
				}
			}
}
function onContextMenuFn(e, title,index){
					 
					opTabIndex = -1;
					e.preventDefault();
					var tabs = $('#tt').tabs('tabs');
				 	$("#ci").show();
				 	$("#ca").show();
				 	$("#co").show();
					if(index == 0  ){
						if(tabs.length == 1){
							$("#co").hide();
							$("#ca").hide();
						}
					}
					opTabIndex = index;
					
					
					$('#mm').menu('show', {
						left: e.pageX,
						top: e.pageY
					});
				}

</script>
<body class="easyui-layout">
	<div data-options="region:'north',border:false" style="PADDING-BOTTOM: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; HEIGHT: auto; PADDING-TOP: 5px"   class=datagrid-toolbar>
		<table width="100%">
			<tr width="100%">
				<td width="50%">
					 欢迎您:<%=name %>&nbsp;&nbsp;
				</td>
				<td align="right" width="50%">
				<!-- 
					 <a href="#" class="easyui-linkbutton" onclick="addTabPanel('userhome')" data-options="plain:true,iconCls:'user_btn'">个人中心</a>
					 <a href="#" class="easyui-linkbutton" onclick="logout()" data-options="plain:true,iconCls:'poweroff_btn'">退出</a>
				 -->
				</td>
			</tr>
		</table>
	</div>
	<div data-options="region:'west',split:true,border:true,title:'&nbsp;'"" style="width:250px;padding:10px;">
		<ul class="easyui-tree" data-options="
		url:'<%=request.getContextPath() %>/resources/menudata.json?'+new Date().getTime(),
		method:'get',
		loadFilter:function(data){ return treeloadFilter(data);},
		animate:true,
		onClick:treeClickFn
		"></ul>
	</div>
	<div region="center" border="false">
			<div id="tt" class="easyui-tabs" fit="true" border="false" plain="true" 
				data-options="onContextMenu:onContextMenuFn">
				
			</div>
	</div>
	<div id="mm" class="easyui-menu" data-options="onClick:menuHandler" style="width:120px;">
		<div data-options="name:'close'" id="ci">关闭</div>
		<div data-options="name:'close all'" id="ca">全部关闭</div>
		<div data-options="name:'close other'"  id="co">关闭其他</div>
	</div>
</body>
<script type="text/javascript">
function treeloadFilter(menus ,usecheck){
	if(menus.length==0)return menus;
 	 var mapdata = {};
	  //第一次组织树节点内容
	  for(var i=0;i<menus.length;i++)
	  {
	      var node = menus[i];
	      var menuname = node['name'];
	      var parentNo = node['pid'];
	      var aid = node['id'] ;
	      
	      var path = node['path'];
	      var isbutton = node['isbutton'];
	      var authorityCode = node["btnflag"];
	      
		  if(isbutton == 1){
				continue;
		  }
	      mapdata["id_"+aid]= {
	    		  id:aid,
	    		  text:menuname,
	    		  parentNo:parentNo,
	    		  state:'closed',
	    		  attributes:{
	    		  	url:path,
	    		  	isbutton:isbutton,
	    		  	authorityCode:authorityCode,
	    		  	parentId:parentNo
	    		  }
	    };
	    
	     if(usecheck)
		 {
		 	mapdata["id_"+aid]['checked']=false;
		 }

	  }
  var ret = [];
  for(var key in mapdata)
  {
      var node = mapdata[key];
      var pid = mapdata[key]['parentNo'];
      if(mapdata["id_"+pid])
      {
          if(typeof mapdata["id_"+pid]['children'] == 'undefined')
          {
              mapdata["id_"+pid]['children'] = [];
          }
          mapdata["id_"+pid]['children'].push(mapdata[key]);
      }else
      {
          ret.push(mapdata[key]);
      }

  }
   for(var key in mapdata)
  {
       var node = mapdata[key];
       if(node['children'] == null){
       		node['state'] = 'open';
       }

  }
	
	if(ret.length>0){ret[0]['state'] = 'open';} 
  return ret;
}
function treeClickFn(node){ 
		var attributs = node.attributes;
	 	var type = jQuery.type(attributs);
	 	if(type == 'undefined'){return;}
	 	var url = attributs.url;
	 	if($.trim(url).length == 0)return;
	 	var title = node.text;
	 	if ($('#tt').tabs('exists',title)){
					$('#tt').tabs('select', title);
			} else {
				$('#tt').tabs('add',{
					title:title,
					closable:true,
					cache:false,
					content:'<iframe scrolling="yes" frameborder="0"  src="<%=request.getContextPath() %>'+url+'?d='+new  Date().getMilliseconds()+'" style="width:100%;height:100%;"></iframe>'
					
				});
		}
}
function addTabPanel(flag){
	 var node = {};
	 if(flag == 'userhome'){
	 	node = {
	 		text:"个人中心",
	 		attributes:{
	 			url:"/admin/userhome/index"
	 		}
	 	}
	 }
	 treeClickFn(node);
}
function logout(){
	$.messager.confirm('系统提示', '您确定要退出该系统吗?', function(r){
		if (r){
			window.location = "/admin/logout";
		}
	});
}

</script>
</html>