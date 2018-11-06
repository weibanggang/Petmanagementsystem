<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/5
  Time: 19:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title><script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script>
        $(function() {
            $(".meun-item").click(function() {
                $(".meun-item").removeClass("meun-item-active");
                $(this).addClass("meun-item-active");
                var itmeObj = $(".meun-item").find("img");
                itmeObj.each(function() {
                    var items = $(this).attr("src");
                    items = items.replace("_grey.png", ".png");
                    items = items.replace(".png", "_grey.png")
                    $(this).attr("src", items);
                });
                var attrObj = $(this).find("img").attr("src");
                ;
                attrObj = attrObj.replace("_grey.png", ".png");
                $(this).find("img").attr("src", attrObj);
            });
            $("#topAD").click(function() {
                $("#topA").toggleClass(" glyphicon-triangle-right");
                $("#topA").toggleClass(" glyphicon-triangle-bottom");
            });
            $("#topBD").click(function() {
                $("#topB").toggleClass(" glyphicon-triangle-right");
                $("#topB").toggleClass(" glyphicon-triangle-bottom");
            });
            $("#topCD").click(function() {
                $("#topC").toggleClass(" glyphicon-triangle-right");
                $("#topC").toggleClass(" glyphicon-triangle-bottom");
            });
            $(".toggle-btn").click(function() {
                $("#leftMeun").toggleClass("show");
                $("#rightContent").toggleClass("pd0px");
            })
        })
    </script>
    <!--[if lt IE 9]>
    <script src="../js/html5shiv.min.js"></script>
    <script src="../js/respond.min.js"></script>
    <![endif]-->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../css/common.css" />
    <link rel="stylesheet" type="text/css" href="../css/slide.css" />
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="../css/flat-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="../css/jquery.nouislider.css">
</head>
<body>
<div class="check-div form-inline">
    <div class="col-xs-4">
        <form action="/user" method="get" >
            <input type="text" class="form-control input-sm" name="username" placeholder="输入username搜索">
            <button class="btn btn-white btn-xs " type="submit" >查 询 </button>
        </form>
    </div>
    <div class="col-xs-4">
        <form>
            <input type="text" class="form-control input-sm" name="username" placeholder="输入firstName搜索">
            <button class="btn btn-white btn-xs " type="submit">查 询 </button>
        </form>
    </div>
    <div class="col-lg-3 col-lg-offset-2 col-xs-4" style=" padding-right: 40px;text-align: right;">
        <form>
            <select>
                <option value="上架中">上架中</option>
                <option value="未上架">未上架</option>
            </select>
            <button class="btn btn-white btn-xs " type="submit">查 询 </button>
        </form>
    </div>
</div>

<div  style="overflow-y:auto;width:100%;height: 560px;border-top: 1px solid blue;">
    <table class="table table-striped">
        <tr>
            <th>id</th>
            <th>name</th>
            <th>lastname</th>
            <th>status</th>
            <th>categoryname</th>
            <th>Tagname</th>
            <th>操作</th>
        </tr>
        <c:forEach var="p" items="${pet}" >
            <tr>
                <td>${p.id}</td>
                <td>${p.name}</td>
                <td><img src="${p.photourls}" width="70px" height="70px"/></td>
                <td>${p.status}</td>
                <td>${p.category.name}</td>
                <td>${p.tag.name}</td>
                <td> <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#changeChar">修改</button>
                    <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteChar">删除</button></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
<script>
</script>
</html>
