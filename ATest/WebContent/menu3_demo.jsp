<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/js/jquery-ui-1.10.4/development-bundle/themes/base/jquery.ui.all.css">
	<style>
		.ui-menu{
			width: 180px;
		}
	</style>

	<script src="<%=request.getContextPath() %>/js/jquery-1.8.3.js"></script>
	<script src="<%=request.getContextPath() %>/js/jquery-ui-1.10.4.js"></script>
	<script>
		$(function() {
			// 加载远程菜单
			$.get("loadMenu.sv", function(strHTML) {
				// 设置HTML代码
				$("#menu").append(strHTML);
				// 构建菜单
				$("#menu").menu();
			});
		});
	</script>
</head>
<body>
	<div class="demo-description">
		<ul id="menu"></ul>
	</div>
</body>
</html>