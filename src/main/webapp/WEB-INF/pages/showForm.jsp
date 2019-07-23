<%--
  Created by IntelliJ IDEA.
  User: Olga
  Date: 17.07.2019
  Time: 21:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Records</title>
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
</head>
<body>
<h1>Records</h1>
<table class = "simple-table" cellspacing="0">
    <tr>
        <th>ID</th>
        <th>Период</th>
        <th>Сумма выручки</th>
        <th>Внереализационный доход</th>
        <th>Наличие работы</th>
        <th>Наличие льгот</th>
        <th>Одинокий родитель</th>
        <th>Дети</th>
        <th>Дети-инвалиды</th>
        <th>Иждевенцы</th>
        <th>Расходы на страховку</th>
        <th>Расходы на обучение</th>
        <th>Расходы на строительство</th>
        <th>Бизнесс-расходы</th>
        <th>Сумма налога</th>
    </tr>
<c:forEach var="record" items="${recordsList}">
    <tr>
        <td>${record.id}</td>
        <td>${record.period}</td>
        <td>${record.proceeds}</td>
        <td>${record.nIncome}</td>
        <td>${record.job}</td>
        <td>${record.privileges}</td>
        <td>${record.oparent}</td>
        <td>${record.kids}</td>
        <td>${record.dkids}</td>
        <td>${record.dependent}</td>
        <td>${record.iexpenses}</td>
        <td>${record.edexpenses}</td>
        <td>${record.cexpenses}</td>
        <td>${record.bexpenses}</td>
        <td>${record.sum}</td>

    </tr>
</c:forEach>
</table>
</body>
</html>
