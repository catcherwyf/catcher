<%@ page contentType="text/html;charset=UtF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <c:set var="ctx" value="${pageContext.request.contextPath}"/>
    </head>


    <body>
        <h2>Hello World!</h2>
        <a href="${ctx}/user/login">跳转页面</a>
        <div>
            用户名：<input type="text" id="userName" name="userName"/>
            <input type="button" value="查找用户" onclick="search()">
        </div>
        <h2>form ---- get</h2>
        <div>
            <form id="reportGet" action="${ctx}/message/report1" method="GET">
                begin:<input type="date" name="begin"/><br>
                end:<input type="date" name="end"/><br>
                <input type="submit" value="get查找报表">
            </form>
        </div>
        <h2>form ---- post</h2>
        <div>
            <form id="reportPost" action="${ctx}/message/report2" method="POST">
                begin:<input type="date" name="begin"/><br>
                end:<input type="date" name="end"/><br>
                <input type="submit" value="post查找报表">
            </form>
        </div>
    </body>
    <script>
        function search(){
            window.open("${ctx}/message/detail/data="+document.getElementById("userName").value );
        }
    </script>
</html>
