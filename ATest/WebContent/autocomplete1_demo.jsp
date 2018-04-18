<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>自动完成组件演示</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/js/jquery-ui-1.10.4/development-bundle/themes/base/jquery.ui.all.css">

	<script src="<%=request.getContextPath() %>/js/jquery-1.8.3.js"></script>
	<script src="<%=request.getContextPath() %>/js/jquery-ui-1.10.4.js"></script>
	<script type="text/javascript" language="javascript">
		$(function() {
	
			// 数据源
			var source = [ "ActionScript", "AppleScript", "Asp", "COBOL",
					"ColdFusion", "Erlang", "Fortran", "Groovy", "Haskell", "Java",
					"JavaScript", "Lisp", "Perl", "PHP", "Python", "Ruby", "Scala",
					"Scheme" ];
	
			// 自动完成组件
			$("#tags").autocomplete({
				source : source,
				minLength : 1,
				autoFocus : true
			});
		});
	</script>
</head>
<body>
	<div class="ui-widget">
		<h2>
			查询：<input type="text" name="tags" id="tags" value="">
		</h2>
	</div>
</body>
</html>