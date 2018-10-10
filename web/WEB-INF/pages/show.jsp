<%--
  Created by IntelliJ IDEA.
  User: 99234
  Date: 2018/10/9
  Time: 13:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="v1.1/css/bootstrap.min.css">
    <link href="v1.1/css/tableexport.css">
    <link rel="stylesheet" href="/v1.1/dist/bootstrap-table.min.css">
    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>

    <script src="v1.1/js/Blob.js/Blob.js"></script>
    <script src="v1.1/js/FileSaver.js/FileSaver.js"></script>
    <script src="v1.1/js/js-xlsx/xlsx.core.min.js"></script>

    <script src="v1.1/js/Bootstrap/bootstrap.min.js"></script>
    <script src="v1.1/js/TableExport.js/jquery.tableexport.js"></script>
    <script src="/v1.1/dist/bootstrap-table.min.js"></script>
    <script src="/v1.1/dist/extensions/export/bootstrap-table-export.min.js"></script>
    <script src="/v1.1/dist/locale/bootstrap-table-zh-CN.min.js"></script>


    <script>
        $(function(){
            $('#tb_departments').bootstrapTable({
                url: 'userInfo',         //请求后台的URL（*）
                method: 'post',                      //请求方式（*）
                striped: true,                      //是否显示行间隔色
                sortOrder: "asc",                   //排序方式
                //queryParams: oTableInit.queryParams,//传递参数（*）
                sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
                pageNumber:1,                       //初始化加载第一页，默认第一页
                pagination: true,
                pageSize: 4,                       //每页的记录行数（*）
                minimumCountColumns: 2,             //最少允许的列数
                uniqueId: "id",                     //每一行的唯一标识，一般为主键列
                height: 500,
                cardView: false,                    //是否显示详细视图
                detailView: true,                   //是否显示父子表
                showExport: true,                     //是否显示导出
                exportDataType: "basic",              //basic', 'all', 'selected'.
                columns: [{
                    field: 'id',
                    title: '用户ID'
                }, {
                    field: 'name',
                    title: '姓名'
                },{
                    field: 'address',
                    title: '地址'
                }, {
                    field: 'tel',
                    title: '电话'
                }, {
                    field: 'school',
                    title: '学校'
                },{
                    field: 'basic',
                    title: '基本信息'
                }],
            });
        })
    </script>

</head>
<body>
<!-- dialog -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
    <div class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
<h4 class="modal-title" id="myModalLabel">新增</h4>
    </div>
    <div class="modal-body">

    <div class="form-group">
    <label for="txt_departmentname">部门名称</label>
    <input type="text" name="txt_departmentname" class="form-control" id="txt_departmentname" placeholder="部门名称">
    </div>
    <div class="form-group">
    <label for="txt_parentdepartment">上级部门</label>
    <input type="text" name="txt_parentdepartment" class="form-control" id="txt_parentdepartment" placeholder="上级部门">
    </div>
    <div class="form-group">
    <label for="txt_departmentlevel">部门级别</label>
    <input type="text" name="txt_departmentlevel" class="form-control" id="txt_departmentlevel" placeholder="部门级别">
    </div>
    <div class="form-group">
    <label for="txt_statu">描述</label>
    <input type="text" name="txt_statu" class="form-control" id="txt_statu" placeholder="状态">
    </div>
    </div>
    <div class="modal-footer">
    <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭</button>
    <button type="button" id="btn_submit" class="btn btn-primary" data-dismiss="modal"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存</button>
    </div>
    </div>
    </div>
    </div>

    <!-- dialog end-->
    <nav class="navbar navbar-inverse">
    <div class="container-fluid">
    <div class="navbar-header">
    <a class="navbar-brand" href="#" style="margin:0 0 10px 0">
    <img alt="Master" src="C:\Users\99234\Desktop\zzpic14287\1.jpg" >
    </a>
    </div>
    </div>
    </nav>
<%--    <c:if test="${empty requestScope.users}">没有数据谢谢</c:if>
    <c:if test="${!empty requestScope.users}"></c:if>--%>
    <!-- <button class="btn btn-default" id="btnExport">批量导出</button> -->
    <table id="tb_departments" class="table table-hover">
    <tr>
    <td class="active">居住地</td>
    <td class="success">电话</td>
    <td class="warning">姓名</td>
    <td class="danger">基础信息</td>
    <td class="info">邮箱</td>
    <td class="danger">学校</td>

    </tr>
   <%-- <c:forEach items="${requestScope.users }" var="user">
    <tr>
    <td class="active">${user.address }</td>
    <td class="success">${user.tel }</td>
    <td class="warning">${user.name }</td>
    <td class="danger">${user.basic }</td>
    <td class="info">${user.email }</td>
    <td class="danger">${user.school }</td>
    </tr>
    </c:forEach>--%>
    </table>
    </body>
</html>
