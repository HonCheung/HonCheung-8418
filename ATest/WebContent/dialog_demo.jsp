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
	<script>
		$(function() {
			$("#dialog").dialog({
				height : 300,
				width : 300,
				modal : true,
				autoOpen : true,
				close : function() {
					/* $(this).dialog("destroy"); */
				},
				buttons : {
					"关闭" : function() {
						$(this).dialog("close");
					}
				}
			});
			
			$("button.open").click(function() {
				$("#dialog").dialog("open");
			});
		});
		
	</script>
</head>
<body>
	<button type="button" class="open">打开</button>
	<div id="dialog"></div>
</body>
</html>