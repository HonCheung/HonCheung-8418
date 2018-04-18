<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style>
		.red{
			color: red;
			font-weight: bold;
		}
		.blue{
			color: blue;
			font-weight: normal;
		}
	</style>
	
	<script src="<%=request.getContextPath() %>/js/jquery-1.8.3.js"></script>
	<script>
		function login(oInput) {
			
			// 清空消息
			$("#userNameMessage").empty();
			$("#passwordMessage").empty();
			$("#message").empty();
			
			// 获取登录面板
			var loginPanel = $(oInput).parents("#login-panel");
			
			// 验证账号
			var strUserName = $("#userName").val();
			if (strUserName == null || strUserName == "") {
				$("#userNameMessage").html("用户名不能为空");
				return;
			}
			
			// 验证密码
			var strPassword = $("#password").val();
			if (strPassword == null || strPassword == "") {
				$("#passwordMessage").html("密码不能为空");
				return;
			}
			
			// 获取url
			var strUrl = $(oInput).attr("src");
			
			$.get(strUrl, {
				userName : strUserName,
				password : strPassword
			}, function(result) {
				if (result.isPass) {
					// 登录成功
					var strHtml = "<span class='blue'>";
					strHtml += result.message;
					strHtml += "<br>";
					strHtml += "登录账号：";
					strHtml += "&nbsp;&nbsp;姓名：";
					strHtml += result.user.userName;
					strHtml += "&nbsp;&nbsp;密码：";
					strHtml += result.user.password;
					strHtml += "&nbsp;&nbsp;部门：";
					strHtml += result.user.dept;
					strHtml += "</span>";
					loginPanel.html(strHtml);
				} else {
					// 登录失败
					var strHtml = "<span class='red'>";
					strHtml += result.message;
					strHtml += "</span>";
					$("#message").append(strHtml);
				}
			});
			
		}
	</script>
</head>
<body>
	<div id="login-panel">
		<table border="1" cellpadding="0" cellspacing="0">
			<tr>
				<td style="width: 120px; align: right;">用户名：</td>
				<td style="width: 180px;">
					<input type="text" name="userName" id="userName">
				</td>
				<td id="userNameMessage"></td>
			</tr>
			<tr>
				<td style="width: 120px; align: right;">密码：</td>
				<td style="width: 180px;">
					<input type="password" name="password" id="password">
				</td>
				<td id="passwordMessage"></td>
			</tr>
			<tr>
				<td colspan="3">
					<input type="button" value="登录" onclick="login(this)" url="<%=request.getContextPath() %>/login.action">
				</td>
			</tr>
			<tr>
				<td colspan="3" id="message"></td>
			</tr>
		</table>
	</div>
</body>
</html>