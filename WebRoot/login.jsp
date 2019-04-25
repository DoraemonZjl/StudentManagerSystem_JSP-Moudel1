<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html lang="zh-CN">
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>学生管理系统登录页面</title>
<style>
* {
	margin: 0;
	padding: 0;
}

html {
	height: 100%;
}

body {
	height: 100%;
	background: #fff url(images/backgroud.png) 50% 50% no-repeat;
	background-size: cover;
}

.dowebok {
	position: absolute;
	left: 50%;
	top: 50%;
	width: 430px;
	height: 550px;
	margin: -300px 0 0 -215px;
	border: 1px solid #fff;
	border-radius: 20px;
	overflow: hidden;
}

.logo {
	width: 104px;
	height: 104px;
	margin: 40px auto 60px;
	background: url(images/login.png) 0 0 no-repeat;
}

.form-item {
	position: relative;
	width: 360px;
	height: 40px;
	margin: 0 auto;
	padding-bottom: 30px;
}

.form-item-checkbox {
	position: relative;
	width: 360px;
	height: 50px;
	margin: 0 auto;
	padding-bottom: 10px;
}

.form-item input {
	width: 288px;
	height: 48px;
	padding-left: 70px;
	border: 1px solid #fff;
	border-radius: 25px;
	font-size: 18px;
	color: #fff;
	background-color: transparent;
	outline: none;
}

.form-item button {
	width: 360px;
	height: 50px;
	border: 0;
	border-radius: 25px;
	font-size: 18px;
	color: #1f6f4a;
	outline: none;
	cursor: pointer;
	background-color: #fff;
}

#username {
	background: url(images/emil.png) 20px 14px no-repeat;
}

#password {
	background: url(images/password.png) 23px 11px no-repeat;
}

.tip {
	display: none;
	position: absolute;
	left: 20px;
	top: 52px;
	font-size: 14px;
	color: #f50;
}

.reg-bar {
	width: 360px;
	margin: 20px auto 0;
	font-size: 14px;
	overflow: hidden;
}

.reg-bar a {
	color: #fff;
	text-decoration: none;
}

.reg-bar a:hover {
	text-decoration: underline;
}

.reg-bar .reg {
	float: left;
}

.reg-bar .forget {
	float: right;
}

.dowebok ::-webkit-input-placeholder {
	font-size: 18px;
	line-height: 1.4;
	color: #fff;
}

.dowebok :-moz-placeholder {
	font-size: 18px;
	line-height: 1.4;
	color: #fff;
}

.dowebok ::-moz-placeholder {
	font-size: 18px;
	line-height: 1.4;
	color: #fff;
}

.dowebok :-ms-input-placeholder {
	font-size: 18px;
	line-height: 1.4;
	color: #fff;
}

@media screen and (max-width: 500px) {
	* {
		box-sizing: border-box;
	}
	.dowebok {
		position: static;
		width: auto;
		height: auto;
		margin: 0 30px;
		border: 0;
		border-radius: 0;
	}
	.logo {
		margin: 50px auto;
	}
	.form-item {
		width: auto;
	}
	.form-item input, .form-item button, .reg-bar {
		width: 100%;
	}
}
</style>
</head>

<%@ include file="login_cookie.jsp" %>


<body>
	<form action="dologin.jsp" method="post">
		<div class="dowebok">
			<div class="logo"></div>
			<div class="form-item">
				用户名：<input name="username" type="text" value="<%=username%>">
			</div>
			<div class="form-item">
				密&nbsp;&nbsp;&nbsp;&nbsp;码：<input name="password" type="password"
					value="<%=password%>">
			</div>
			<div class="form-item-checkbox">
				<input type="checkbox" name="isUseCookie" checked="checked" />十天内记住我的登录状态
			</div>
			<div class="form-item">
				<button id="submit">登 录</button>
			</div>
			<div class="form-item">
				<button id="reg">注 册</button>
			</div>
		</div>
	</form>
</body>
</html>