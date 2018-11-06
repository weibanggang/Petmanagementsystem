<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/5
  Time: 14:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
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
                       <input type="text" class="form-control input-sm" name="firstName" placeholder="输入firstName搜索">
                       <button class="btn btn-white btn-xs " type="submit">查 询 </button>
                       </form>
                   </div>
                   <div class="col-lg-3 col-lg-offset-2 col-xs-4" style=" padding-right: 40px;text-align: right;">
                       <form>
                        <select>
                            <option value="正常">正常</option>
                            <option value="冻结">冻结</option>
                        </select>
                       <button class="btn btn-white btn-xs " type="submit">查 询 </button>
                       </form>
                   </div>
               </div>

    <div style="width:100%;height: 570px;border-top: 1px solid blue;">
        <table class="table table-striped">
            <tr>
                <th>username</th>
                <th>firstname</th>
                <th>lastname</th>
                <th>email</th>
                <th>password</th>
                <th>phone</th>
                <th>userstatus</th>
                <th>操作</th>
            </tr>
        <c:forEach var="u" items="${user}" >
            <tr>
                <td>${u.username}</td>
                <td>${u.firstname}</td>
                <td>${u.lastname}</td>
                <td>${u.email}</td>
                <td>${u.password}</td>
                <td>${u.phone}</td>
                <td>${u.userstatus}</td>
                <td> <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#changeChar">修改</button>
              <button class="btn btn-danger btn-xs del" data-toggle="modal" name="${u.username}" data-target="#deleteChar">删除</button></td>
            </tr>
        </c:forEach>
        </table>
    </div>
</body>
<script>
    $(".del").click(function () {
        if(confirm("是否删除?")){
            $.ajax({
                type:"DELETE",
                url:"/user/"+$(this).attr("name"),
                dataType: 'json'
                , success: function (data) {
                    if(data.code==200){
                        alert("删除成功");
                        window.location.reload();
                    }else {
                        alert("删除失败");
                    }
                }
            })
        }

    })
</script>
</html>
