<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/5
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
    <script src="../js/respond.min.js"></script>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../css/common.css"/>
    <link rel="stylesheet" type="text/css" href="../css/slide.css"/>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="../css/flat-ui.min.css"/>
    <link rel="stylesheet" type="text/css" href="../css/jquery.nouislider.css">
</head>
<body>
<div class="form-group">
    <label for="username" class="col-xs-4 control-label">${msg}</label>
</div>
<div style="padding: 50px 0;margin-top: 50px;background-color: #fff; text-align: right;width: 420px;margin: 50px auto;">
    <form class="form-horizontal" method="post" action="/user">
        <div class="form-group">
            <label for="username" class="col-xs-4 control-label">username：</label>
            <div class="col-xs-5">
                <input type="" class="form-control input-sm duiqi" id="username" value="${username}" name="username" placeholder="username"
                       style="margin-top: 7px;">
            </div>
        </div>
        <div class="form-group">
            <label for="firstname" class="col-xs-4 control-label">firstname：</label>
            <div class="col-xs-5">
                <input type="" class="form-control input-sm duiqi" id="firstname" value="${firstname}" name="firstname" placeholder="name"
                       style="margin-top: 7px;">
            </div>
        </div>
        <div class="form-group">
            <label for="lastname" class="col-xs-4 control-label">lastname：</label>
            <div class="col-xs-5">
                <input type="" class="form-control input-sm duiqi" id="lastname" value="${lastname}" name="lastname" placeholder="lastname"
                       style="margin-top: 7px;">
            </div>
        </div>
        <div class="form-group">
            <label for="email" class="col-xs-4 control-label">email：</label>

            <div class="col-xs-5">
                <input type="" class="form-control input-sm duiqi" id="email" name="email" value="${email}" placeholder="email"
                       style="margin-top: 7px;">
            </div>

        </div>
        <div class="form-group">
            <label for="password" class="col-xs-4 control-label">password：</label>
            <div class="col-xs-5">
                <input type="password" class="form-control input-sm duiqi" id="password"  value="${password}" name="password"
                       placeholder="password" style="margin-top: 7px;">
            </div>
        </div>
        <div class="form-group">
            <label for="phone" class="col-xs-4 control-label">phone：</label>
            <div class="col-xs-5">
                <input type="phone" class="form-control input-sm duiqi" id="phone" value="${phone}" name="phone" placeholder="phone"
                       style="margin-top: 7px;">
            </div>
        </div>
        <div class="form-group">
            <label for="userstatus" class="col-xs-4 control-label">userstatus：</label>
            <div class="col-xs-5">
                <select name="userstatus" class="form-control input-sm duiqi" id="userstatus"  value="${userstatus}" style="margin-top: 7px;">
                    <option value="正常">正常</option>
                    <option value="冻结">冻结</option>
                </select>
            </div>
        </div>
        <div class="form-group text-right">
            <div class="col-xs-offset-4 col-xs-5" style="margin-left: 169px;">
                <button type="reset" class="btn btn-xs btn-white">取 消</button>
                <button type="submit" class="btn btn-xs btn-green">保存</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
