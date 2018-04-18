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
			$("#tabs").tabs({
				active : 1,
				collapsible : true,
				event : "click",
				activate : function(event, ui) {
					var strLogs = $(".logs").html();
					strLogs = "触发activate事件！<br/>" + strLogs;
					$(".logs").html(strLogs);
				}
			});
		});
	</script>
</head>
<body>
	<div id="tabs">
		<ul>
			<li><a href="#tabs-1">tabs1</a></li>
			<li><a href="#tabs-2">tabs2</a></li>
			<li><a href="#tabs-3">tabs3</a></li>
		</ul>
		<div id="tabs-1">There is tab1 context</div>
		<div id="tabs-2">There is tab2 context</div>
		<table id="tabs-3">
			<tr>
				<td>There is tab3 context</td>
			</tr>
		</table>
	</div>
	<div class="logs" style="width: 300px; height: 300px; border: 1px solid #000000; overflow: auto;"></div>
</body>
</html>