<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>登录页面</title>
    <c:set var="ctx" value="${pageContext.request.contextPath}"/>
</head>
<body>
<div>
    <form id="zc" action="${ctx}/user/login" method="post">
        用户名：<input type="text" required id="username" name="username"><br>
        密码：<input type="password" required id="password" name="password"><br>
        <input type="submit" value="登录">
        <input type="button" value="注册" onclick="location.href='${ctx}/user/register'">
    </form>
</div>
</body>
<script>
    //对应后台返回的提示
    if ('${status}' != '') {
        if ('${status}' == 0) {
            alert('登录成功,即将跳转至用户详情页！')
            location.href = '${ctx}/user/userInfo'
        }else if ('${status}' == 1) {
            alert('该账户不存在！');
        }
        else if ('${status}' == 2) {
            alert('密码错误！')
        }
    }
</script>
</html>