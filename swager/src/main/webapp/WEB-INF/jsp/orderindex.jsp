<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/5
  Time: 7:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/order/add" method="post">
<table>
    <tr>
        <td>petId</td>
        <th><input type="text" name="petid" value="${petid}"/></th>
    </tr>
    <tr>
        <td>quantity</td>
        <th><input type="text" name="quantity"/></th>
    </tr>
    <tr>
        <td>shipDate</td>
        <th><input type="date" name="shipdate"/></th>
    </tr>
    <tr>
        <td>status</td>
        <th><input type="text" name="status"/></th>
    </tr>
    <tr>
        <td>complete</td>
        <th><input type="text" name="complete"/></th>
    </tr>
    <tr>
        <th><input type="submit" /></th>
    </tr>
</table>
</form>
</body>
</html>
