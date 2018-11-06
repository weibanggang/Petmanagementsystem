<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/5
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
</head>
<body>
<table class="table">
    <tr>
        <th>dasdas</th>
        <th>dasdas</th>
        <th>dasdas</th>
        <th>dasdas</th>
    </tr>
    <tr>
        <td>dasdas</td>
        <td>dasdas</td>
        <td>dasdas</td>
        <td>dasdas</td>
    </tr>
</table>

<button type="button" id="myButton" data-loading-text="Loading..." class="btn btn-primary" autocomplete="off">
    Loading state
</button>
<button type="button" class="btn btn-lg btn-danger" data-toggle="popover" title="Popover title" data-content="And here's some amazing content. It's very engaging. Right?">点我弹出/隐藏弹出框</button>
<script>
    $(function () {
        $('#myButton').on('click', function () {
            var $btn = $(this).button('loading')

            $btn.button('reset')
        })
    })

</script>
</body>
</html>
