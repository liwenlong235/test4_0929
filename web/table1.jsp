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
    <link href="table/TableExport-3.3.13/dist/css/tableexport.min.css">
    <link href="bootstrap/css/bootstrap.min.css">
    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="table/Blob.js-master/Blob.min.js"></script>
    <script src="table/FileSaver.js-master/FileSaver.min.js"></script>
    <script src="table/js-xlsx-master/xlsx.core.min.js"></script>
    <script src="table/TableExport-3.3.13/dist/js/tableexport.min.js"></script>
    <script>
        $(function () {
            $("#table1").tableExport({
                type: 'excel'
            });
        })
    </script>
</head>
<body style="text-align: center">
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
        <td>wfwef</td>
        <td>wfwef</td>
    </tr>

    <tr>
        <td>rthrth</td>
        <td>thththrh</td>
        <td>rhrthrthr</td>
        <td>rhrthrhrh</td>
        <td>rhrthrth</td>
    </tr>
</table>
</body>
</body>
</html>
