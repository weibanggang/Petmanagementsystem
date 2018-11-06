<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/5
  Time: 9:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="../js/respond.min.js"></script>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../css/common.css" />
    <link rel="stylesheet" type="text/css" href="../css/slide.css" />
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="../css/flat-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="../css/jquery.nouislider.css">
</head>
<body>
<div style="padding: 50px 0;margin-top: 50px;background-color: #fff; text-align: right;width: 420px;margin: 50px auto;">
    <form class="form-horizontal" method="post" action="/pet/add" enctype="multipart/form-data">
        <div class="form-group">
            <label for="categoryId" class="col-xs-4 control-label">category_id：</label>
            <div class="col-xs-5">
                <select name="categoryId" class="form-control input-sm duiqi" id="categoryId" style="margin-top: 7px;">
                    <c:forEach var="c" items="${category}">
                        <option value="${c.id}">${c.name}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label for="name" class="col-xs-4 control-label">name：</label>
            <div class="col-xs-5">
                <input type="" class="form-control input-sm duiqi"id="name" name="name"  placeholder="name" style="margin-top: 7px;">
            </div>
        </div>
        <div class="form-group">
            <label for="tp" class="col-xs-4 control-label">图片上传：</label>
            <div class="col-xs-5">
                <input type="file" class="form-control input-sm duiqi" id="tp" name="tp" style="margin-top: 7px;">
            </div>
        </div>
        <div class="form-group">
            <label for="tags" class="col-xs-4 control-label">tags：</label>
            <div class="col-xs-5">
                <select name="tags" class="form-control input-sm duiqi" id="tags" style="margin-top: 7px;">
                    <c:forEach var="p" items="${tag}">
                        <option value="${p.id}">${p.name}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label for="status" class="col-xs-4 control-label">状态：</label>
            <div class="col-xs-5">
                <select name="status" class="form-control input-sm duiqi" id="status" style="margin-top: 7px;">
                    <option value="上架">上架</option>
                    <option value="下架">下架</option>
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
