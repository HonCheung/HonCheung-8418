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
			width: 200px;
		}
	</style>

	<script src="<%=request.getContextPath() %>/js/jquery-1.8.3.js"></script>
	<script src="<%=request.getContextPath() %>/js/jquery-ui-1.10.4.js"></script>
	<script>
		$(function() {
			$("#menu").menu();
		});
	</script>
</head>
<body>
	<div class="demo-description">
		<ul id="menu">
			<li class="5"><a href="#">系统管理</a></li>
			<li><a href="#">个人工具</a></li>
			<li><a href="#">平台研发中心</a></li>
			<li><a href="#">产品设计中心</a></li>
			<li>
				<a href="#">加盟中心</a>
				<ul>
					<li class="ui-state-disabled"><a href="#">班级管理</a></li>
					<li><a href="#">学生管理</a></li>
					<li><a href="#">后勤管理</a></li>
				</ul>
			</li>
			<li><a href="#">人事部</a></li>
			<li>
				<a href="#">财务部</a>
				<ul>
					<li>
						<a href="#">资金管理</a>
						<ul>
							<li><a href="#">现金流管理</a></li>
							<li><a href="#">应收应付管理</a></li>
							<li><a href="#">固定资产管理</a></li>
						</ul>
					</li>
					<li>
						<a href="#">统计分析</a>
						<ul>
							<li><a href="#">支出统计</a></li>
							<li><a href="#">收入统计</a></li>
							<li><a href="#">固定资产统计</a></li>
						</ul>
					</li>
					<li><a href="#">工资结算</a></li>
				</ul>
			</li>
			<li class="ui-state-disabled"><a href="#">综合部</a></li>
		</ul>
	</div>
</body>
</html>