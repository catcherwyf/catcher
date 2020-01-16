<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>
    <c:set var="ctx" value="${pageContext.request.contextPath}"/>
</head>
<body>
<div>
    <c:if test="${not empty user}">
        <div>欢迎您，${user.username}${user.sex?'女士':'先生'}
        <a href="${ctx}/user/logout">注销</a></div></div>
    </c:if>
    <c:if test="${ empty user}">
        对不起，请先<a href="${ctx}/user/login">登录</a>
    </c:if>
</div>
</body>
</html>