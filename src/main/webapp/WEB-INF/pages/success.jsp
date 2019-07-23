<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tax calculator</title>
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>

</head>
<body>
<h1 id="sum">Сумма подоходного налога к уплате, руб. ${record.sum}</h1>


<h2 id="link"><a href="/show">Показать все записи</a></h2>
<h2><a href="/privilege">Отсортировать по наличию льгот</a></h2>
<h2><a href="/order">Отсортировать по сумме налога</a></h2>


</body>
</html>
