<%--
  Created by IntelliJ IDEA.
  User: Olga
  Date: 17.07.2019
  Time: 21:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:url value="/calculate" var="var"/>
<form action="${var}" method="POST">
    <table>
        <tr>
            <td>Период, за который производится расчет:</td>
            <td><select name="period" id="period">
                <option value="квартал">квартал</option>
                <option value="6мес">полугодие</option>
                <option value="9мес">9 месяцев</option>
                <option value="год">год</option>
            </select></td>
        </tr>
        <tr>
            <td>Сумма выручки от реализации товаров (работ, услуг), имущественных прав за выбранный период (без налога
                на добавленную стоимость), руб.
            </td>
            <td><input type="text" name="proceeds" id="proceeds"></td>
        </tr>
        <tr>
            <td>Сумма внереализационных доходов за выбранный период (без налога на добавленную стоимость), руб.</td>
            <td><input type="text" name="nIncome" id="nIncome"></td>
        </tr>
        <tr>
            <td>Наличие места основной работы:</td>
            <td><label for="true">Да</label>
                <input type="radio" name="job" id="true" value="true">
                <label for="false">Нет</label>
                <input type="radio" name="job" id="false" value="false">
            </td>
        </tr>
        <tr>
            <td>Наличие права на льготы (инвалид I или II группы, инвалид с детства, участник боевых действий на
                территории других государств и др.):
            </td>
            <td><label for="tpriv">Да</label>
                <input type="radio" name="privileges" id="tpriv" value="true">
                <label for="fpriv">Нет</label>
                <input type="radio" name="privileges" id="fpriv" value="false">
            </td>
        </tr>
        <tr>
            <td>Являетесь ли Вы вдовой (вдовцом), одиноким родителем, приемным родителем, опекуном или попечителем:</td>
            <td><label for="top">Да</label>
                <input type="radio" name="oparent" id="top" value="true">
                <label for="fop">Нет</label>
                <input type="radio" name="oparent" id="fop" value="false">
            </td>
        </tr>
        <tr>
            <td>Количество детей до 18 лет,</td>
            <td><input type="text" name="kids" id="kids"></td>
        </tr>
        <tr>
            <td>из них количество детей-инвалидов</td>
            <td><input type="text" name="dkids" id="dkids"></td>
        </tr>
        <tr>
            <td>Количество иждивенцев</td>
            <td><input type="text" name="dependent" id="dependent"></td>
        </tr>
        <tr>
            <td>Сумма расходов за выбранный период по страховым взносам по договорам добровольного страхования жизни и дополнительной пенсии, заключенным на срок не менее трех лет, а также по договорам добровольного страхования медицинских расходов, руб.</td>
            <td><input type="text" name="iexpenses" id="iexpenses"></td>
        </tr>
<tr>
    <td>Сумма расходов за выбранный период на получение первого платного образования своего либо близких родственников, руб.</td>
    <td><input type="text" name="edexpenses" id="edexpenses"></td>
</tr>
        <tr>
            <td>Сумма расходов за выбранный период на строительство либо приобретение жилья для нуждающихся в улучшении жилищных условий, руб.</td>
            <td><input type="text" name="cexpenses" id="cexpenses"></td>
        </tr>
        <tr>
            <td>Сумма расходов за выбранный период, связанных с осуществлением предпринимательской деятельности, руб. </td>
            <td><input type="text" name="bexpenses" id="bexpenses"></td>
        </tr>
    </table>
    <input type="submit" value="Calculate">
</form>
</body>
</html>
