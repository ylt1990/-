<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>登录</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="<%=path%>/css/bootstrap.css" rel="stylesheet">
</head>

<body background="<%=path%>/css/images/loginBackground.png"
	style="background-size:100%">

	<jsp:include page="/jsp/public/header.jsp" flush="true"></jsp:include>
	<jsp:include page="/jsp/public/main.jsp" flush="true"></jsp:include>

	<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
	<script src="<%=path%>/js/jquery.js"></script>
	<!-- 包括所有已编译的插件 -->
	<script src="<%=path%>/js/bootstrap.min.js"></script>
	<script src="<%=path%>/js/jquery.validate.min.js"></script>

	<c:if test="${sessionScope.asManager eq 'yes' }">
		<script src="<%=path%>/js/ManagerMain.js"></script>
	</c:if>
	<c:if test="${sessionScope.asManager ne 'yes' }">
		<script src="<%=path%>/js/StudentMain.js"></script>
	</c:if>
	<script src="<%=path%>/js/login.js"></script>
</body>
</html>
