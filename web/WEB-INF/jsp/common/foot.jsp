<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<!-- 内部容器结束 -->
</div>
<%
	Date d = new Date();
	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
	String now = df.format(d);
%>
</div>
<!-- 尾部 -->
<div class="footer">
	<div class="row">
		<div class="col-lg-12" style="text-align: right;">欢迎使用本系统 <%=now%></div>
	</div>
</div>
<!-- 导入JS -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/custom.js"></script>