<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/js/jquery-ui-1.10.4/development-bundle/themes/base/jquery.ui.all.css">

	<script src="<%=request.getContextPath() %>/js/jquery-1.8.3.js"></script>
	<script src="<%=request.getContextPath() %>/js/jquery-ui-1.10.4.js"></script>
	<script type="text/javascript" language="javascript">
		$(function() {
			$("#tabs").tabs({
				beforeLoad : function(event, ui) {
					//加载失败时执行的函数
					ui.jqXHR.error(function() {
						ui.panel.html("加载失败。");
					});
				}
			});
		});
	</script>
</head>
<body>
	<div id="tabs">
		<ul>
			<li><a href="<%=request.getContextPath() %>/queryProgram.sv">节目列表</a></li>
			<li><a href="<%=request.getContextPath() %>/queryPlayactor.sv">演员列表</a></li>
		</ul>
	</div>
</body>
</html>