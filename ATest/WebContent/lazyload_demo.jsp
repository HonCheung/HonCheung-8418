<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>延迟加载组件演示</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/js/jquery-ui-1.10.4/development-bundle/themes/base/jquery.ui.all.css">

	<script src="<%=request.getContextPath() %>/js/jquery-1.8.3.js"></script>
	<script src="<%=request.getContextPath() %>/js/jquery-ui-1.10.4.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.lazyload.js"></script>
	<script type=>
		$(function() {
			$("img").lazyload({
				effect : "fadeIn",//使用淡入效果
				event : "click"
			});
		});
	</script>
</head>
<body>
	<div style="height: 800px;">
		<h1>请往下看，有图片的吆！</h1>
	</div>
	<img class="lazy" src="<%=request.getContextPath()%>/images/load.gif"
		data-original="<%=request.getContextPath()%>/images/bmw_m1_hood.jpg">
	<div style="height: 450px;">
		<h1>继续请往下看，还有图片呐！</h1>
	</div>
	<img class="lazy" src="<%=request.getContextPath()%>/images/load.gif"
		data-original="<%=request.getContextPath()%>/images/bmw_m1_side.jpg">
	<div style="height: 450px;">
		<h1>请继续，最后一张了！</h1>
	</div>
	<img class="lazy" src="<%=request.getContextPath()%>/images/load.gif"
		data-original="<%=request.getContextPath()%>/images/bmw_m3_gt.jpg">
</body>
</html>