<%--
  Created by IntelliJ IDEA.
  User: 99234
  Date: 2018/9/29
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <base href="${pageContext.request.contextPath}">
</head>
<body>
<c:if test="${empty requestScope.empl}">
    <form action="add" method="post">
        <table border="0" cellspacing="0" align="center">
            <tr>
                <td>LastName:</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="email" name="email"></td>
            </tr>
            <tr>
                <td>Birth:</td>
                <td><input type="text" name="birth"></td>
            </tr>
            <tr>
                <td>Department:</td>
                <td><select name="did">
                    <c:forEach items="${requestScope.depts}" var="item">
                        <option value="${item.id}">${item.name}</option>
                    </c:forEach>
                </select></td>
            </tr>
            <tr style="text-align: right">
                <td colspan="2"><input type="submit"></td>
            </tr>
        </table>
    </form>
</c:if>
<c:if test="${!empty requestScope.empl}">
    <form action="update" method="post">
        <input type="hidden" name="id" value="${requestScope.empl.id}">
        <table border="0" cellspacing="0" align="center">
            <tr>
                <td>LastName:</td>
                <td><input type="text" name="name" value="${requestScope.empl.name}"></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="email" name="email" value="${requestScope.empl.email}"></td>
            </tr>
            <tr>
                <td>Birth:</td>
                <td><input type="datetime" name="birth" value="${requestScope.empl.birth}"></td>
            </tr>
            <tr>
                <td>Department:</td>
                <td><select name="did">
                    <c:forEach items="${requestScope.depts}" var="item">
                        <c:if test="${item.name==requestScope.empl.department.name}">
                            <option value="${item.id}" selected="selected">${item.name}</option>
                        </c:if>
                        <c:if test="${item.name!=requestScope.empl.department.name}">
                        <option value="${item.id}">${item.name}</option>
                        </c:if>
                    </c:forEach>
                </select></td>
            </tr>
            <tr style="text-align: right">
                <td colspan="2"><input type="submit"></td>
            </tr>
        </table>
    </form>
</c:if>
</body>
</html>
