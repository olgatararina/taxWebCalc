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
    <title>Tax calculator</title>
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
    <script type="text/javascript"
            src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"/>"></script>
    <script type="text/javascript"
            src="<c:url value="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/res/valid.js"/>"></script>
</head>
<body>
<h1>Заполните форму для подсчёта подоходного налога</h1>
<c:url value="/calculate" var="var"/>
<form action="${var}" method="POST" id="registration">
    <table class="simple-table" cellspacing="0">
        <tr>
            <td>Период, за который производится расчет:</td>
            <td><select name="period" id="period">
                <option value="квартал">3 месяца</option>
                <option value="6мес">6 месяцев</option>
                <option value="9мес">9 месяцев</option>
                <option value="год">12 месяцев</option>
            </select></td>
        </tr>
        <tr>
            <td>Сумма выручки от реализации товаров (работ, услуг), имущественных прав за выбранный период (без налога
                на добавленную стоимость), руб.
                <div class="er">
                    <span id="errNm1"></span>
                </div>
            </td>
            <td><input type="text" name="proceeds" id="proceeds" data-error="#errNm1"></td>
        </tr>
        <tr>
            <td>Сумма внереализационных доходов за выбранный период (без налога на добавленную стоимость), руб.
                <div class="er">
                    <span id="errNm2"></span>
                </div>
            </td>
            <td><input type="text" name="nIncome" id="nIncome" data-error="#errNm2"></td>
        </tr>
        <tr>
            <td>Наличие места основной работы:
                <div class="er">
                    <span id="errNm3"></span>
                </div>
            </td>
            <td><label for="true">Да</label>
                <input type="radio" name="job" id="true" value="true" data-error="#errNm3">
                <label for="false">Нет</label>
                <input type="radio" name="job" id="false" value="false" data-error="#errNm3">
            </td>
        </tr>
        <tr>
            <td>Наличие права на льготы (инвалид I или II группы, инвалид с детства, участник боевых действий на
                территории других государств и др.):
                <div class="er">
                    <span id="errNm4"></span>
                </div>
            </td>
            <td><label for="tpriv">Да</label>
                <input type="radio" name="privileges" id="tpriv" value="true" data-error ="#errNm4">
                <label for="fpriv">Нет</label>
                <input type="radio" name="privileges" id="fpriv" value="false" data-error ="#errNm4">
            </td>
        </tr>
        <tr>
            <td>Являетесь ли Вы вдовой (вдовцом), одиноким родителем, приемным родителем, опекуном или попечителем:
                <div class="er">
                    <span id="errNm5"></span>
                </div>
            </td>
            <td><label for="top">Да</label>
                <input type="radio" name="oparent" id="top" value="true" data-error = "#errNm5">
                <label for="fop">Нет</label>
                <input type="radio" name="oparent" id="fop" value="false" data-error = "#errNm5">
            </td>
        </tr>
        <tr>
            <td>Количество детей до 18 лет,
                <div class="er">
                    <span id="errNm6"></span>
                </div>
            </td>
            <td><input type="text" name="kids" id="kids" data-error = "#errNm6"></td>
        </tr>
        <tr>
            <td>из них количество детей-инвалидов
                <div class="er">
                    <span id="errNm7"></span>
                </div>
            </td>
            <td><input type="text" name="dkids" id="dkids" data-error = "#errNm7"></td>
        </tr>
        <tr>
            <td>Количество иждивенцев
                <div class="er">
                    <span id="errNm8"></span>
                </div>
            </td>
            <td><input type="text" name="dependent" id="dependent" data-error = "#errNm8"></td>
        </tr>
        <tr>
            <td>Сумма расходов за выбранный период по страховым взносам по договорам добровольного страхования жизни и
                дополнительной пенсии, заключенным на срок не менее трех лет, а также по договорам добровольного
                страхования медицинских расходов, руб.
                <div class="er">
                    <span id="errNm9"></span>
                </div>
            </td>
            <td><input type="text" name="iexpenses" id="iexpenses" data-error = "#errNm9"></td>
        </tr>
        <tr>
            <td>Сумма расходов за выбранный период на получение первого платного образования своего либо близких
                родственников, руб.
                <div class="er">
                    <span id="errNm10"></span>
                </div>
            </td>
            <td><input type="text" name="edexpenses" id="edexpenses" data-error = "#errNm10"></td>
        </tr>
        <tr>
            <td>Сумма расходов за выбранный период на строительство либо приобретение жилья для нуждающихся в улучшении
                жилищных условий, руб.
                <div class="er">
                    <span id="errNm11"></span>
                </div>
            </td>
            <td><input type="text" name="cexpenses" id="cexpenses" data-error = "#errNm11"></td>
        </tr>
        <tr>
            <td>Сумма расходов за выбранный период, связанных с осуществлением предпринимательской деятельности, руб.
                <div class="er">
                    <span id="errNm12"></span>
                </div>
            </td>
            <td><input type="text" name="bexpenses" id="bexpenses" data-error = "#errNm12"></td>
        </tr>
    </table>
    <input type="submit" value="Calculate" id="but">
</form>


</body>
</html>
