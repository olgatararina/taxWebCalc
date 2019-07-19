<%--
  Created by IntelliJ IDEA.
  User: Olga
  Date: 18.07.2019
  Time: 6:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<c:url value="/calculate" var="calculate"/>
<h2><a href="${calculate}">Calculate your taxes</a></h2>
</body>
</html>
