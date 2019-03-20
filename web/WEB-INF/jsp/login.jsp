<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<base href="<%=basePath%>">
	<%--<link href="${pageContext.request.contextPath}/assets/css/bootstrap.css"
        rel="stylesheet" />
    <link
        href="${pageContext.request.contextPath}/assets/css/font-awesome.css"
        rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/assets/css/custom.css"
        rel="stylesheet" />--%>

	<style type="text/css">

	</style>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>登录</title>

	<!-- CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/form-elements.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->

	<!-- Favicon and touch icons -->
	<link rel="shortcut icon" href="assets/ico/favicon.png">
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath}/assets/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath}/assets/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath}/assets/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/assets/ico/apple-touch-icon-57-precomposed.png">



</head>
<body>

<!-- Top content -->
<div class="top-content">

	<div class="inner-bg">
		<div class="container">
			<div class="row">
				<div class="col-sm-8 col-sm-offset-2 text">
					<h1><strong>餐厅管理系统</strong></h1>
					<div class="description">

					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6 col-sm-offset-3 form-box">
					<div class="form-top">
						<div class="form-top-left">
							<h3>欢迎登录餐厅管理系统</h3>
							<p>请输入您的用户名和密码...</p>
						</div>
						<div class="form-top-right">
							<i class="fa fa-key"></i>
						</div>
					</div>
					<div class="form-bottom">
						<div id="passwordErrorNotifier">
							${error}
						</div>
						<form role="form" action="${pageContext.request.contextPath}/login.html" method="post" class="form-group" id="loginForm" >
							<div class="form-group">
								<label class="sr-only" for="userCode">Username</label>
								<input type="text"  placeholder="用户名..." class="form-username form-control" id="userCode" name="userCode" required="required" pattern="^[a-zA-Z0-9]{5,16}$">
							</div>
							<div class="form-group">
								<label class="sr-only" for="userPassWord">Password</label>
								<input type="password"  placeholder="密码..." class="form-password form-control" id="userPassWord" name="userPassWord" required="required" pattern="^[a-zA-Z0-9_-]{6,18}$">
							</div>
							<button type="submit" class="btn" id="submitBtn">登录</button>
						</form>

					</div>
				</div>
			</div>

		</div>
	</div>

</div>



<!-- Javascript -->
<script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.backstretch.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/scripts.js"></script>

<!--[if lt IE 10]>
<script src="assets/js/placeholder.js"></script>
<![endif]-->

</body>

</html>
