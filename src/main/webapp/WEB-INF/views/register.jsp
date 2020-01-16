<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>注册页面</title>
    <c:set var="ctx" value="${pageContext.request.contextPath}"/>
</head>
<body>
<div>
    <form id="register" action="${ctx}/user/register" method="post">
        用户名：<input type="text" required id="username" name="Username"><br>
        密码：<input type="password" required id="password" name="password"><br>
        性别： <input type="radio" required value="0" name="sex">男 <input type="radio" value="1" required name="sex">女<br>
        <input type="submit" value="注册">
        <input type="reset" value="重置"/>
    </form>
</div>
</body>
<script>
    //根据后台返回状态给予提示
    if ('${status}' != '') {
        if ('${status}' == 0) {
            alert('注册成功，点击确定跳转到登录页面！')
            location.href = '${ctx}/user/login'
        }
        if ('${status}' == 1) {
            alert('exception，注册失败！')
        }
        if ('${status}' == 2) {
            alert('账号信息已存在！')
        }
    }
</script>
</html>