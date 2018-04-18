<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>../js/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>../js/easyui/themes/icon.css">

<script type="text/javascript"
	src="<%=request.getContextPath()%>../js/jquery-1.8.3.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>../js/easyui/jquery.easyui.min.js"></script>

<title>Tree组件演示</title>
<script type="text/javascript" language="javascript">
	$(function() {

		// Tree组件
		$('#tree').tree({
			url : "menu.json", //远程加载tree数据的url路径
			animate : true, //是否开启动画效果
			checkbox : false, //是否显示复选框
			cascadeCheck : false, //是否开启级联选中，checkbox属性为true时才生效
			onlyLeafCheck : true, //是否只在叶节点前显示复选框，checkbox属性为true时才生效
			dnd : false, //是否启用拖拽功能
			onDblClick : function(node) { //鼠标双击事件
				$(this).tree("toggle", node.target); //改变当前节点状态
			},
			onClick : function(node) {
				$(".view").load(node.attributes.url);
			}
		});
		
	});
</script>
</head>
<body>
	<h3>easy UI Tree</h3>
	<ul id="tree" style="float: left;"></ul>
	<div
		style="position: static; float:left;margin-left:20px;
		width: 300px; height: 200px; border: 1px solid #000000;"
		class="view"></div>
</body>
</html>