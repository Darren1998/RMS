<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="${pageContext.request.contextPath}/assets/css/bootstrap.css"
	  rel="stylesheet" />
<link
		href="${pageContext.request.contextPath}/assets/css/font-awesome.css"
		rel="stylesheet" />
<link href="${pageContext.request.contextPath}/assets/css/custom.css"
	  rel="stylesheet" />
<link href="${pageContext.request.contextPath}/assets/css/style1.css"
	  rel="stylesheet" />
<link
		href="${pageContext.request.contextPath}/assets/css/icon-font.min.css"
		rel="stylesheet" />


<!-- wrapper开始 -->


<div id="wrapper">
	<input type="hidden" id="Myath" path="${pageContext.request.contextPath }" />
	<!-- 悬浮导航 -->
	<div class="header-section">
		<input type="hidden"  id="path" path="${pageContext.request.contextPath }" />
		<!-- top_bg -->
		<div class="top_bg" style="height: 4.5em">
			<div class="header_top">

				<div class="top_left" style="margin-right: -100px;">
					<h2><span>
                        <a style="color:white;height: 30px;line-height: 30px;">操作员:${user.userName}</a>
						<a style="font-size: 16px; margin-right: 10px; color: #428bca;">(${user.role })</a>
                       	<a class="fa fa-power-off" id="logoutbtn" href="${pageContext.request.contextPath}/logout.html"></a>

                        </span> </h2>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="clearfix"></div>
		<!-- /top_bg -->
	</div>

	<!-- 左侧导航 -->
	<div class="sidebar-menu">
		<header class="logo1" style="height: 30px;">
		<span style="font-weight: bold; color: white;">餐厅管理系统</span>
			<a class="sidebar-icon"> <span class="fa fa-bars"></span> </a>
		</header>
		<%----%><div style="border-top:1px ridge rgba(255, 255, 255, 0.15)"></div>
		<div class="menu">
			<ul id="menu" >
				<li><a href="${pageContext.request.contextPath}/desklist.html?show=desk">
					<i class="fa fa-tachometer" ></i>
					<span style="vertical-align: middle;">桌位</span>
					<span class="fa fa-angle-right" style="float: right;vertical-align: middle;height: 30px;line-height: 30px;"></span></a>
				</li>
				<c:if test="${sessionScope.user.role=='管理员'||sessionScope.user.role=='超级管理员'}">
				<li id="menu-academico" >
					<a href="${pageContext.request.contextPath}/todayBill.html?show=bill&billType=today">
						<i class="fa fa-table"></i> <span>账单</span>
						<span class="fa fa-angle-right" style="float: right;vertical-align: middle;height: 30px;line-height: 30px;">

					</span></a>

				</li>
				</c:if>
				<c:if test="${sessionScope.user.role=='管理员'||sessionScope.user.role=='超级管理员'}">
				<li id="menu-academico" >
					<a href="${pageContext.request.contextPath}/daily.html?show=daily" >
						<i class="fa fa-cog"></i>
						<span>日常维护</span>
						<span class="fa fa-angle-right" style="float: right;vertical-align: middle;height: 30px;line-height: 30px;"></span>

					</a>

				</li>
		</c:if>
			</ul>
		</div>
	</div>

	<!-- 内部容器开始-->
	<div id="page-wrapper">
		<div id="page-inner">