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
    <link href="bootstrap/css/bootstrap.min.css">
    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="bootstrap/js/bootstrap-table-export.js"></script>
    <script>
    //查询
    function refresh(){
    $("#datatable").bootstrapTable('refresh',{url:'__MODULE__/Statistics/listData'});
    }
    //查询条件
    function queryParams(params){
    params['project_id'] = $("select[name=project_id]").find("option:selected").val();
    params['time_field'] = $("select[name=time_field]").find("option:selected").val();
    params['start_time'] = $("input[name=start_time]").val();
    params['end_time'] = $("input[name=end_time]").val();
    params['user_name'] = $("input[name=user_name]").val();
    params['telephone'] = $("input[name=telephone]").val();
    params['room_confirm_number'] = $("input[name=room_confirm_number]").val();
    params['lineson'] = $("select[name=lineson]").val();
    params['invoice'] = $("select[name=invoice]").val();
    return params;
    }


    function DoOnMsoNumberFormat(cell, row, col) {
    var result = "";
    if (row > 0 && col == 0)
    result = "\\@";
    return result;
    }
    var rowCount = 0;
    $("#datatable").bootstrapTable({
    height:"500",
    url: '__MODULE__/Statistics/listData',  //表格数据请求地址
    pagination:true,   //是否分页
    search: false,    //是否显示查询框
    sortName: "id",    //排序相关
    sortOrder: "desc",
    queryParams:'queryParams',
    method:"post",
    sortable:true,
    dataType:'json',
    toolbar: "#exampleTableEventsToolbar",
    icons: {refresh: "glyphicon-repeat", toggle: "glyphicon-list-alt", columns: "glyphicon-list"},
    pageList:[10, 25, 50, 100],
    clickToSelect:true,
    exportDataType:'all',

    onLoadSuccess:function(data){   //表格数据加载成功事件
    rowCount = data.length-1;
    $("#datatable").bootstrapTable('hideRow', {index:rowCount});
    $("#datatable td").attr("data-tableexport-msonumberformat","\@");
    $("#datatable tr").attr("data-tableexport-display","always");
    },
    onPageChange:function(number,size){  //表格翻页事件
    $("#datatable").bootstrapTable('hideRow', {index:rowCount});
    $("#datatable td").attr("data-tableexport-msonumberformat","\@");
    $("#datatable tr").attr("data-tableexport-display","always");

    },
    showExport: true,  //是否显示导出按钮
    buttonsAlign:"right",  //按钮位置
    exportTypes:['excel'],  //导出文件类型
    Icons:'glyphicon-export',
    exportOptions:{
    ignoreColumn: [0,1],  //忽略某一列的索引
    fileName: '总台帐报表',  //文件名称设置
    worksheetName: 'sheet1',  //表格工作区名称
    tableName: '总台帐报表',
    excelstyles: ['background-color', 'color', 'font-size', 'font-weight'],
    onMsoNumberFormat: DoOnMsoNumberFormat
    },
    columns: [
    {
    checkbox:true,
    title: '选择'
    },{
    title: '序号',
    formatter: function (value, row, index) {
    $(".group_sum").html(row['group_sum']);
    $(".group_money_sum").html(row['group_money_sum']+"元");
    $(".confirm_sum").html(row['confirm_sum']);
    $(".confirm_money_sum").html(row['confirm_money_sum']+"元");
    $(".refund_sum").html(row['refund_sum']);
    $(".refund_money_sum").html(row['group_back_sum']+"元");
    $(".residue_money_sum").html(row['residue_sum']+"元");
    var a = index+1; return a+"<span style='display:none;'>"+row.id+"</span>"
    }
    },{
    field: 'project_name',
    align:"center",
    title: '项目'
    }, {
    field: 'user_name',
    align:"center",
    title: '姓名'
    }, {
    field: 'telephone',
    align:"center",
    title: '电话'
    },{
    field: 'id_card_number',
    align:"center",
    rowAttributes:"rowAttributes",
    title: '身份证号'
    },{
    field: 'telephone',
    align:"center",
    title: '手机号'
    }]
    });
    </script>
</head>
<body>

</body>
</html>
