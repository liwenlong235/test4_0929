<%--
  Created by IntelliJ IDEA.
  User: 99234
  Date: 2018/9/30
  Time: 13:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="${pageContext.request.contextPath}">
    <link href="bootstrap/css/bootstrap.min.css">
    <link href="bootstrap/css/bootstrap-table.min.css">
    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="bootstrap/js/bootstrap-table-export.min.js"></script>
    <script>
        $(function () {
            $("#b1").click(function() {
                $("#table").bootstraptable({
                    url: "list",//ajax获取表格数据的url
                    striped: true,//是否显示行间隔色（隔行换色）
                    pagination: true,//是否分页显示（*）
                    sidePagination: "server",
                    paginationLoop: false,
                    queryParams: function (params) {
                        return {
                            limit: params.limit,
                            offset: params.offset,
                        }
                    },
                    pageNumber: 1,
                    pageSize: 10,
                    pageList: [10, 25, 50, 100, 'all'],
                    contentType: "application/x-www-form-urlencoded",
                    strictSearch: false,
                    showColumns: true,
                    showRefresh: true,
                    minimumCountColumns: 2,
                    clickToSelect: false,
                    showToggle: true,
                    cardView: false,
                    detailView: false,
                    cache: false,
                    sortable: true,
                    sortOrder: "asc",
                    sortName: "id",
                    columns: [
                        {
                            filed: "id",
                            title: "编号",
                            align: "center",
                            valign: "middle"
                        }, {
                            filed: "name",
                            title: "名字",
                            align: "center",
                            valign: "middle"
                        }, {
                            filed: "price",
                            title: "价格",
                            align: "center",
                            valign: "middle",
                            sortable: true
                        }, {
                            filed: "brankName",
                            title: "品牌",
                            align: "center",
                            valign: "middle"
                        }, {
                            filed: "areaName",
                            title: "产地",
                            align: "center",
                            valign: "middle"
                        }
                    ],
                    onLoadSuccess: function () {
                        console.info("加载成功");
                    },
                    onLoadError: function () {
                        console.info("加载数据失败");
                    },
                    showExport: phoneOrPc(),
                    exportDataType: "basic",
                    exportType: ['excel', 'xlsx'],
                    exportOptions: {
                        fileName: "数据导出",
                        worksheetName: "Sheet1",
                        tableName: "商品数据表",
                        excelstyles: ['background-color', 'color', 'font-size', 'font-weight'],
                    }
                })
            })
        })
        function phoneOrPc() {
            return true;
        };
    </script>
</head>
<body>
    <table id="table" data-toggle="table" data-url="data1.json">
        <tr>
            <th data-field="id">Item ID</th>
            <th data-field="name">Item name</th>
            <th data-field="price">Item price</th>
        </tr>
    </table>
    <button id="b1" class="bnt bg-primary">按钮</button>
</body>
</html>
