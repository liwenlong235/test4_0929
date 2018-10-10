<%--
  Created by IntelliJ IDEA.
  User: 99234
  Date: 2018/9/29
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <base href="${pageContext.request.contextPath}">
    <script type="text/javascript" src="/js/jquery-1.7.2.js"></script>
    <script>
        $(function () {
            $(".delete").click(function () {
                var $td = $(this).parent().parent().children();
                var id = $td[0].innerHTML;
                var name = $td[1].innerHTML;
                var flag = confirm("确定要删除"+name+"的信息吗？");
                if(flag){
                    $.ajax({
                        url:"delete",
                        data:{"id":id},
                        type:"post",
                        dataType:"text",
                        success:function (data) {
                            if(data=="ok"){
                                $td.remove();
                            }
                        }
                    })
                }
                return false;
            })
        })
    </script>
</head>
<body style="text-align: center">
<c:if test="${empty requestScope.empls}">
    <h1 style="color: red">没有相关信息</h1>
</c:if>
<c:if test="${!empty requestScope.empls}">
    <table border="2px" cellspacing="0" align="center">
        <tr>
            <td>ID</td>
            <td>LASTNAME</td>
            <td>EMAIL</td>
            <td>BIRTH</td>
            <td>CREATETIME</td>
            <td>DEPT</td>
            <td>DELETE</td>
            <td>EDIT</td>
        </tr>
        <c:forEach items="${requestScope.empls}" var="item">
            <tr>
                <td>${item.id}</td>
                <td>${item.name}</td>
                <td>${item.email}</td>
                <td>${item.birth}</td>
                <td><f:formatDate value="${item.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                <td>${item.department.name}</td>
                <td><a href="delete" class="delete">Delete</a></td>
                <td><a href="input?id=${item.id}">Edit</a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>
<button><a href="returnIndex">返回</a></button>
</body>
</html>
