<%--
  Created by IntelliJ IDEA.
  User: 99234
  Date: 2018/9/30
  Time: 16:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="bootstrap/css/bootstrap.min.css">
    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="tableExport.jquery.plugin-master/tableExport.min.js"></script>
    <script src="tableExport.jquery.plugin-master/libs/FileSaver/FileSaver.min.js"></script>
    <script src="tableExport.jquery.plugin-master/libs/es6-promise/es6-promise.auto.min.js"></script>
    <script src="tableExport.jquery.plugin-master/libs/jsPDF/jspdf.min.js"></script>
    <script src="table/dist/js/language/zh_CN.js"></script>
    <script src="tableExport.jquery.plugin-master/libs/jsPDF-AutoTable/jspdf.plugin.autotable.js"></script>
</head>
<body style="text-align: center">
<button class="btn btn-primary" onClick ="$('#table1').tableExport({ type:'pdf',
                           jspdf: {orientation: 'l',
                                   format: 'a3',
                                   margins: {left:10, right:10, top:20, bottom:20},
                                   autotable: {styles: {fillColor: 'inherit',
                                                        textColor: 'inherit'},
                                               tableWidth: 'auto'}
                                  }})">数据导出</button>
<table id="table1" border="2px" align="center" bgcolor="#7cfc00">
    <tr>
        <td>a</td>
        <td>b</td>
        <td>c</td>
        <td>d</td>
        <td>e</td>
    </tr>

    <tr>
        <td>1</td>
        <td>2</td>
        <td>3</td>
        <td>4</td>
        <td>5</td>
    </tr>

    <tr>
        <td>dsa</td>
        <td>dd</td>
        <td>ssdsd</td>
        <td>一二三</td>
        <td>四五六</td>
    </tr>

    <tr>
        <td>上海</td>
        <td>北京</td>
        <td>rhrthrthr</td>
        <td>rhrthrhrh</td>
        <td>rhrthrth</td>
    </tr>
</table>
</body>
</body>
</html>
