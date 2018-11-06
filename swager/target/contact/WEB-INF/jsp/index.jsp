<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/6
  Time: 1:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="左右结构项目，属于大人员的社交工具">
        <meta name="keywords" content="左右结构项目 社交 占座 ">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <meta name="format-detection" content="telephone=no">
        <title>宠物后台管理模板</title>
        <script src="../../js/jquery.min.js"></script>
        <script src="../../js/bootstrap.min.js"></script>
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
        <script src="js/html5shiv.min.js"></script>
        <script src="../../js/respond.min.js"></script>
        <![endif]-->
        <link href="../../css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="../../css/common.css" />
        <link rel="stylesheet" type="text/css" href="../../css/slide.css" />
        <link rel="stylesheet" type="text/css" href="../../css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="../../css/flat-ui.min.css" />
        <link rel="stylesheet" type="text/css" href="../../css/jquery.nouislider.css">

        <style>
            iframe{
                width:100%;
                height:650px;
            }
        </style>
    </head>

<body>
<div id="wrap">
    <!-- 左侧菜单栏目块 -->
    <div class="leftMeun" id="leftMeun">
        <div id="logoDiv">
            <p id="logoP"><img id="logo" alt="宠物商城后台管理系统" src="../../images/logo.png"><span>宠物商城管理系统</span></p>
        </div>
        <div id="personInfor">
            <p id="userName">邦杠</p>
            <p><span>761273133@qq.com</span></p>
            <p><span> Cnblogs <a href="https://www.cnblogs.com/weibanggang/" target="_blank" title="邦杠博客">邦杠博客</a></span></p>
            <p>
                <a href="/user/logout">退出登录</a>
            </p>
        </div>
        <div class="meun-title">用户管理</div>
        <div class="meun-item meun-item-active" href="#sour" aria-controls="sour" role="tab" data-toggle="tab"><img src="../../images/icon_source.png">查询用户</div>
        <div class="meun-item" href="#char" aria-controls="char" role="tab" data-toggle="tab"><img src="../../images/icon_chara_grey.png">添加用户</div>
        <!--                <div class="meun-item" href="#user" aria-controls="user" role="tab" data-toggle="tab"><img src="images/icon_user_grey.png">用户管理</div>
                        <div class="meun-item" href="#chan" aria-controls="chan" role="tab" data-toggle="tab"><img src="images/icon_change_grey.png">修改密码</div>-->
        <div class="meun-title">宠物管理</div>
        <div class="meun-item" href="#scho" aria-controls="scho" role="tab" data-toggle="tab"><img src="../../images/icon_house_grey.png">查询宠物</div>
        <div class="meun-item" href="#regu" aria-controls="regu" role="tab" data-toggle="tab"><img src="../../images/icon_rule_grey.png">添加宠物</div>
        <div class="meun-item" href="#stud" aria-controls="stud" role="tab" data-toggle="tab"><img src="../../images/icon_card_grey.png">标签管理</div>
        <div class="meun-item" href="#category" aria-controls="type" role="tab" data-toggle="tab"><img src="../../images/icon_char_grey.png">类别管理</div>
        <div class="meun-title">订单管理</div>
        <div class="meun-item" href="#order" aria-controls="order" role="tab" data-toggle="tab"><img src="../../images/icon_house_grey.png">查询订单</div>

    </div>
    <!-- 右侧具体内容栏目 -->
    <div id="rightContent">
        <a class="toggle-btn" id="nimei">
            <i class="glyphicon glyphicon-align-justify"></i>
        </a>
        <!-- Tab panes -->
        <div class="tab-content">
            <!-- 资源管理模块 -->
            <div role="tabpanel" class="tab-pane active" id="sour">
                <!--<div class="check-div form-inline">
                    <button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addSource">添加资源</button>
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 ">
                            编码
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                            名称
                        </div>
                        <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                            链接
                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                            操作
                        </div>
                    </div>
                    <div class="tablebody">
                        <div class="row">
                            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                                1
                            </div>
                            <div id="topAD" class="col-lg-4 col-md-4 col-sm-4 col-xs-4" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSystem" aria-expanded="true" aria-controls="collapseOne">
                                <span id="topA" class="glyphicon  glyphicon-triangle-bottom  "></span> <span>系统管理</span>
                            </div>
                            <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                /admin/system/userlist/software/
                            </div>
                            <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#changeSource">修改</button>
                                <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteSource">删除</button>
                            </div>
                        </div>

                        &lt;!&ndash;系统管理折叠狂&ndash;&gt;

                        <div id="collapseSystem" class="collapse in" aria-expanded="true">
                            <div class="row">
                                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 levl2 ">
                                    2
                                </div>
                                <div id="topBD" onClick="changeA()" class="col-lg-4 col-md-4 col-sm-4 col-xs-4 levl2" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseAccount" aria-expanded="true" aria-controls="collapseOne">
                                    <span onClick="changeB()" id="topB" class="glyphicon glyphicon-triangle-bottom"></span> <span>账号管理</span>
                                </div>
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                    /rlist/
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                    <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#changeSource">修改</button>
                                    <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteSource">删除</button>
                                </div>
                            </div>
                            &lt;!&ndash;用户管理折叠狂&ndash;&gt;
                            <div id="collapseAccount" class="collapse in" aria-expanded="true">
                                <div class="row">
                                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 levl3 ">
                                        1
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4  levl3">
                                        <span class=""> &nbsp;</span><span>资源管理</span>
                                    </div>
                                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                        /admin/system/userlist/software/
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                        <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#changeSource">修改</button>
                                        <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteSource">删除</button>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1  levl3 ">
                                        2
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4  levl3">
                                        <span></span><span>权限管理</span>
                                    </div>
                                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                        /admin/system/userlist/software/
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                        <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#changeSource">修改</button>
                                        <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteSource">删除</button>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 levl2 ">
                                    3
                                </div>
                                <div id="topCD" class="col-lg-4 col-md-4 col-sm-4 col-xs-4 levl2" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSchool" aria-expanded="true" aria-controls="collapseOne">
                                    <span id="topC" onClick="changeC()" class="glyphicon glyphicon-triangle-bottom"></span><span> 地区管理</span>
                                </div>
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                    /admin/system
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                    <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#changeSource">修改</button>
                                    <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteSource">删除</button>
                                </div>
                            </div>
                            &lt;!&ndash;地区管理折叠狂&ndash;&gt;
                            <div id="collapseSchool" class="collapse in" aria-expanded="true">
                                <div class="row">
                                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1  levl3">
                                        1
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4   levl3">
                                        <span></span><span>地区管理</span>
                                    </div>
                                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                        /admin/system/userlist/software/
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                        <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#changeSource">修改</button>
                                        <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteSource">删除</button>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 levl3">
                                        2
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4  levl3">
                                        <span></span><span>规则管理</span>
                                    </div>
                                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                        /admin/system/userlist/software/
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                        <button class="btn btn-success btn-xs " data-toggle="modal " data-target="#changeSource ">修改</button>
                                        <button class="btn btn-danger btn-xs " data-toggle="modal " data-target="#deleteSource ">删除</button>
                                    </div>
                                </div>
                                <div class="row ">
                                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 levl3 ">
                                        3
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 levl3">
                                        <span></span><span>人员信息</span>
                                    </div>
                                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                        /admin/system/userlist/software/
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                        <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#changeSource">修改</button>
                                        <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteSource">删除</button>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1   levl3">
                                        4
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4  levl3">
                                        <span></span><span>座位管理</span>
                                    </div>
                                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                        /admin/system/userlist/software/
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 ">
                                        <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#changeSource">修改</button>
                                        <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteSource">删除</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                &lt;!&ndash;页码块&ndash;&gt;
                <footer class="footer">
                    <ul class="pagination">
                        <li>
                            <select>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                            页
                        </li>
                        <li class="gray">
                            共20页
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-left">
                            </i>
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-right">
                            </i>
                        </li>
                    </ul>
                </footer>
                &lt;!&ndash;弹出窗口 添加资源&ndash;&gt;
                <div class="modal fade" id="addSource" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">添加资源</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">名称：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">链接：</label>
                                            <div class="col-xs-8 ">
                                                <input type="" class="form-control input-sm duiqi" id="sLink" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">排序：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">父节点：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInput1" class="col-xs-3 control-label">资源类型：</label>
                                            <div class="col-xs-8">
                                                <label class="control-label" for="anniu">
                                                    <input type="radio" name="leixing" id="anniu">菜单</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <label class="control-label" for="meun">
                                                    <input type="radio" name="leixing" id="meun"> 按钮</label>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        &lt;!&ndash; /.modal-content &ndash;&gt;
                    </div>
                    &lt;!&ndash; /.modal-dialog &ndash;&gt;
                </div>
                &lt;!&ndash; /.modal &ndash;&gt;

                &lt;!&ndash;修改资源弹出窗口&ndash;&gt;
                <div class="modal fade" id="changeSource" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">修改资源</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">名称：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">链接：</label>
                                            <div class="col-xs-8 ">
                                                <input type="" class="form-control input-sm duiqi" id="sLink" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">排序：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">父节点：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sKnot" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInput1" class="col-xs-3 control-label">资源类型：</label>
                                            <div class="col-xs-8">
                                                <label class="control-label" for="anniu">
                                                    <input type="radio" name="leixing" id="anniu">菜单</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <label class="control-label" for="meun">
                                                    <input type="radio" name="leixing" id="meun"> 按钮</label>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        &lt;!&ndash; /.modal-content &ndash;&gt;
                    </div>
                    &lt;!&ndash; /.modal-dialog &ndash;&gt;
                </div>
                &lt;!&ndash; /.modal &ndash;&gt;
                &lt;!&ndash;弹出删除资源警告窗口&ndash;&gt;
                <div class="modal fade" id="deleteSource" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    确定要删除该资源？删除后不可恢复！
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-danger">保 存</button>
                            </div>
                        </div>
                        &lt;!&ndash; /.modal-content &ndash;&gt;
                    </div>
                    &lt;!&ndash; /.modal-dialog &ndash;&gt;
                </div>
                &lt;!&ndash; /.modal &ndash;&gt;-->
                <iframe src="/user/index"></iframe>
            </div>

            <!-- 类别管理模块 -->
            <div role="tabpanel" class="tab-pane" id="category">
                <iframe src="/category/index"></iframe>
            </div>
            <!-- 订单管理模块 -->
            <div role="tabpanel" class="tab-pane" id="order">
                <iframe src="/order/index"></iframe>
            </div>


            <!-- 权限管理模块 -->
            <div role="tabpanel" class="tab-pane" id="char">
                <iframe src="/qj/useradd"></iframe>
            </div>
            <!--用户管理模块-->
            <div role="tabpanel" class="tab-pane" id="user">
                <iframe src="/qj/user"></iframe>

            </div>

            <!--地区管理模块-->
            <div role="tabpanel" class="tab-pane" id="scho">
                <iframe src="/pet/index"> </iframe>
                <!-- <div class="check-div form-inline">
                     <div class="col-xs-3">
                         <button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addSchool">添加地区 </button>
                     </div>
                     <div class="col-lg-4 col-xs-5">
                         <input type="text" class=" form-control input-sm " placeholder="输入文字搜索">
                         <button class="btn btn-white btn-xs ">查 询 </button>
                     </div>
                     <div class="col-lg-3 col-lg-offset-1 col-xs-3" style="padding-right: 40px;text-align: right;float: right;">
                         <label for="paixu">排序:&nbsp;</label>
                         <select class="form-control">
                             <option>地区</option>
                             <option>排名</option>
                         </select>
                     </div>
                 </div>
                 <div class="data-div">
                     <div class="row tableHeader">
                         <div class="col-xs-1 ">
                             编码
                         </div>
                         <div class="col-xs-2 ">
                             地区
                         </div>
                         <div class="col-xs-1">
                             经度
                         </div>
                         <div class="col-xs-1">
                             维度
                         </div>
                         <div class="col-xs-2">
                             建筑信息
                         </div>
                         <div class="col-xs-2">
                             人员列表
                         </div>
                         <div class="col-xs-2">
                             操作
                         </div>
                     </div>
                     <div class="tablebody">

                         <div class="row">
                             <div class="col-xs-1 ">
                                 1
                             </div>
                             <div class="col-xs-2">
                                 国际关系地区
                             </div>
                             <div class="col-xs-1">
                                 45.0
                             </div>
                             <div class="col-xs-1">
                                 95.90
                             </div>
                             <div class="col-xs-2">
                                 <a class="linkCcc">查看</a>
                             </div>
                             <div class="col-xs-2">
                                 <a class="linkCcc">查看</a>
                             </div>
                             <div class="col-xs-2">
                                 <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#reviseSchool">修改</button>
                                 <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteSchool">删除</button>
                             </div>
                         </div>

                     </div>

                 </div>
                 &lt;!&ndash;页码块&ndash;&gt;
                 <footer class="footer">
                     <ul class="pagination">
                         <li>
                             <select>
                                 <option>1</option>
                                 <option>2</option>
                                 <option>3</option>
                                 <option>4</option>
                                 <option>5</option>
                                 <option>6</option>
                                 <option>7</option>
                                 <option>8</option>
                                 <option>9</option>
                                 <option>10</option>
                             </select>
                             页
                         </li>
                         <li class="gray">
                             共20页
                         </li>
                         <li>
                             <i class="glyphicon glyphicon-menu-left">
                             </i>
                         </li>
                         <li>
                             <i class="glyphicon glyphicon-menu-right">
                             </i>
                         </li>
                     </ul>
                 </footer>

                 &lt;!&ndash;弹出添加用户窗口&ndash;&gt;
                 <div class="modal fade" id="addSchool" role="dialog" aria-labelledby="gridSystemModalLabel">
                     <div class="modal-dialog" role="document">
                         <div class="modal-content">
                             <div class="modal-header">
                                 <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                 <h4 class="modal-title" id="gridSystemModalLabel">添加地区</h4>
                             </div>
                             <div class="modal-body">
                                 <div class="container-fluid">
                                     <form class="form-horizontal">
                                         <div class="form-group ">
                                             <label for="sName" class="col-xs-3 control-label">地区名称：</label>
                                             <div class="col-xs-8 ">
                                                 <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                             </div>
                                         </div>
                                         <div class="form-group ">
                                             <label for="sName" class="col-xs-3 control-label">经度：</label>
                                             <div class="col-xs-8 ">
                                                 <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                             </div>
                                         </div>
                                         <div class="form-group">
                                             <label for="sLink" class="col-xs-3 control-label">纬度：</label>
                                             <div class="col-xs-8 ">
                                                 <input type="" class="form-control input-sm duiqi" id="sLink" placeholder="">
                                             </div>
                                         </div>
                                         <div class="form-group">
                                             <label for="sOrd" class="col-xs-3 control-label">简称：</label>
                                             <div class="col-xs-8">
                                                 <input type="" class="form-control input-sm duiqi" id="sOrd" placeholder="">
                                             </div>
                                         </div>
                                     </form>
                                 </div>
                             </div>
                             <div class="modal-footer">
                                 <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                 <button type="button" class="btn btn-xs btn-green">保 存</button>
                             </div>
                         </div>
                         &lt;!&ndash; /.modal-content &ndash;&gt;
                     </div>
                     &lt;!&ndash; /.modal-dialog &ndash;&gt;
                 </div>
                 &lt;!&ndash; /.modal &ndash;&gt;

                 &lt;!&ndash;弹出修改用户窗口&ndash;&gt;
                 <div class="modal fade" id="reviseSchool" role="dialog" aria-labelledby="gridSystemModalLabel">
                     <div class="modal-dialog" role="document">
                         <div class="modal-content">
                             <div class="modal-header">
                                 <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                 <h4 class="modal-title" id="gridSystemModalLabel">修改地区</h4>
                             </div>
                             <div class="modal-body">
                                 <div class="container-fluid">
                                     <form class="form-horizontal">
                                         <div class="form-group ">
                                             <label for="sName" class="col-xs-3 control-label">地区名称：</label>
                                             <div class="col-xs-8 ">
                                                 <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                             </div>
                                         </div>
                                         <div class="form-group ">
                                             <label for="sName" class="col-xs-3 control-label">经度：</label>
                                             <div class="col-xs-8 ">
                                                 <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                             </div>
                                         </div>
                                         <div class="form-group">
                                             <label for="sLink" class="col-xs-3 control-label">纬度：</label>
                                             <div class="col-xs-8 ">
                                                 <input type="" class="form-control input-sm duiqi" id="sLink" placeholder="">
                                             </div>
                                         </div>
                                         <div class="form-group">
                                             <label for="sOrd" class="col-xs-3 control-label">简称：</label>
                                             <div class="col-xs-8">
                                                 <input type="" class="form-control input-sm duiqi" id="sOrd" placeholder="">
                                             </div>
                                         </div>
                                     </form>
                                 </div>
                             </div>
                             <div class="modal-footer">
                                 <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                 <button type="button" class="btn btn-xs btn-green">保 存</button>
                             </div>
                         </div>
                         &lt;!&ndash; /.modal-content &ndash;&gt;
                     </div>
                     &lt;!&ndash; /.modal-dialog &ndash;&gt;
                 </div>
                 &lt;!&ndash; /.modal &ndash;&gt;

                 &lt;!&ndash;弹出删除用户警告窗口&ndash;&gt;
                 <div class="modal fade" id="deleteSchool" role="dialog" aria-labelledby="gridSystemModalLabel">
                     <div class="modal-dialog" role="document">
                         <div class="modal-content">
                             <div class="modal-header">
                                 <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                 <h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
                             </div>
                             <div class="modal-body">
                                 <div class="container-fluid">
                                     确定要删除该地区？删除后不可恢复！
                                 </div>
                             </div>
                             <div class="modal-footer">
                                 <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                 <button type="button" class="btn btn-xs btn-danger">保 存</button>
                             </div>
                         </div>
                         &lt;!&ndash; /.modal-content &ndash;&gt;
                     </div>
                     &lt;!&ndash; /.modal-dialog &ndash;&gt;
                 </div>
                 &lt;!&ndash; /.modal &ndash;&gt;
 -->
            </div>
            <!--规则管理模块-->
            <div role="tabpanel" class="tab-pane" id="regu" style="padding-top: 50px;">
                <iframe src="/pet/petadd"></iframe>
                <!--<div class="data-div">
                    <div class="tablebody col-lg-10 col-lg-offset-1">
                        <div class="row">
                            <div class="col-xs-3" style="padding-right: 0;">签到超时时间</div>
                            <div class="col-xs-7 expand-col">
                                <div class="slider-minmax1">
                                </div>
                                <div class="row top100">
                                    <span class="left">0</span>
                                    <span class="right">30</span>
                                </div>
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-xs btn-white">默认值</button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-3" style="padding-right: 0;">抢座超时时间</div>
                            <div class="col-xs-7 expand-col">
                                <div class="slider-minmax2">
                                </div>
                                <div class="row top100">
                                    <span class="left">0</span>
                                    <span class="right">15</span>
                                </div>
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-xs btn-white">默认值</button>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-3" style="padding-right: 0;">临时离开超时时间</div>
                            <div class="col-xs-7 expand-col">
                                <div class="slider-minmax3">
                                </div>
                                <div class="row top100">
                                    <span class="left">0</span>
                                    <span class="right">60</span>
                                </div>
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-xs btn-white">默认值</button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-3" style="padding-right: 0;">违约次数冻结上限</div>
                            <div class="col-xs-7 expand-col">
                                <div class="slider-minmax4">
                                </div>
                                <div class="row top100">
                                    <span class="left">0</span>
                                    <span class="right">100</span>
                                </div>
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-xs btn-white">默认值</button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-3" style="padding-right: 0;">可预约天数</div>
                            <div class="col-xs-7 expand-col">
                                <div class="slider-minmax5">
                                </div>
                                <div class="row top100">
                                    <span class="left">0</span>
                                    <span class="right">7</span>
                                </div>
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-xs btn-white">默认值</button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-3" style="padding-right: 0;">最大未完成预约数</div>
                            <div class="col-xs-7 expand-col">
                                <div class="slider-minmax6">
                                </div>
                                <div class="row top100">
                                    <span class="left">0</span>
                                    <span class="right">10</span>
                                </div>
                            </div>
                            <div class="col-xs-2">
                                <button class="btn btn-xs btn-white">默认值</button>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                            <button type="button" class="btn btn-xs btn-green">保 存</button>
                        </div>
                    </div>
                </div>-->
            </div>
            <!--时间段管理模块-->
            <div role="tabpanel" class="tab-pane" id="time">
                <div class="check-div form-inline">
                    <span href="#sitt" aria-controls="sitt" role="tab" data-toggle="tab" style="cursor: pointer;"><span class="glyphicon glyphicon glyphicon-chevron-left"></span>&nbsp;&nbsp;返回上一页</span>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <button class="btn btn-yellow btn-xs " data-toggle="modal" data-target="#addTime">添加时间段 </button>

                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-3 ">
                            编码
                        </div>
                        <div class="col-xs-3">
                            开始
                        </div>
                        <div class="col-xs-3">
                            结束
                        </div>

                        <div class="col-xs-3">
                            操作
                        </div>
                    </div>
                    <div class="tablebody">

                        <div class="row">
                            <div class="col-xs-3 ">
                                6426398978
                            </div>
                            <div class="col-xs-3">
                                10:10
                            </div>
                            <div class="col-xs-3">
                                19:30
                            </div>
                            <div class="col-xs-3">
                                <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#changeTime">修改</button>
                                <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteTime">删除</button>
                            </div>
                        </div>

                    </div>

                </div>
                <!--页码块-->
                <footer class="footer">
                    <ul class="pagination">
                        <li>
                            <select>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                            页
                        </li>
                        <li class="gray">
                            共20页
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-left">
                            </i>
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-right">
                            </i>
                        </li>
                    </ul>
                </footer>

                <!--弹出增加时间段窗口-->
                <div class="modal fade" id="addTime" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">时间段设置</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">开始时间：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">结束时间：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm" id="sName" placeholder="">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--修改增加时间段窗口-->
                <div class="modal fade" id="changeTime" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">修改时间段</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">开始时间：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">结束时间：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-green btn-xs">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
                <!--弹出删除时间段警告窗口-->
                <div class="modal fade" id="deleteTime" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    确定要删除该时间段？
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-danger btn-xs">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

            </div>
            <!--座位管理模块-->
            <div role="tabpanel" class="tab-pane" id="sitt">

                <div class="check-div form-inline" style="">
                    <div class="col-lg-4 col-xs-7 col-md-6">
                        <button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addBuilding">添加楼宇 </button>
                        <label for="paixu">楼宇:&nbsp;</label>
                        <select class=" form-control">
                            <option>第一教学楼</option>
                            <option>逸夫楼</option>
                            <option>综合楼</option>
                            <option>图书馆</option>
                        </select>
                        <button class="btn btn-white btn-xs ">修 改</button>
                    </div>
                    <div class="col-lg-4 col-lg-offset-4 col-xs-4 col-md-5 " style="padding-right: 40px;text-align: right;">
                        <input type="text" class=" form-control input-sm " placeholder="输入文字搜索">
                        <button class="btn btn-white btn-xs ">查 询 </button>
                    </div>
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-2 "style="padding-left: 20px;">
                            楼层
                        </div>
                        <div class="col-xs-3"style="padding-left: 20px;">
                            区域
                        </div>
                        <div class="col-xs-2" style="padding-left: 2px;">
                            座位数
                        </div>
                        <div class="col-xs-2">
                            空余座位
                        </div>
                        <div class="col-xs-3">
                            操作
                        </div>
                    </div>
                    <div class="tablebody">

                        <div class="sitTable">
                            <table class="table  table-responsive">
                                <tr>
                                    <td valign="middle" class="col-xs-2" rowspan="3">图书馆第一层</td>
                                    <td class="col-xs-3">第一自习室</td>
                                    <td class="col-xs-2">2</td>
                                    <td class="col-xs-2" style="padding-left: 40px!important;">3</td>
                                    <td class="col-xs-3"style="padding-left: 50px!important;">
                                        <a class="linkCcc" href="#sitDetail" aria-controls="char" role="tab" data-toggle="tab">座位信息</a>
                                        <a class="linkCcc" href="#time" aria-controls="char" role="tab" data-toggle="tab">时间段设置</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="col-xs-3">第一自习室</td>
                                    <td class="col-xs-2">2</td>
                                    <td class="col-xs-2" style="padding-left: 40px!important;">3</td>
                                    <td class="col-xs-3"style="padding-left: 50px!important;">
                                        <a class="linkCcc" href="#sitDetail" aria-controls="char" role="tab" data-toggle="tab">座位信息</a>
                                        <a class="linkCcc" href="#time" aria-controls="char" role="tab" data-toggle="tab">时间段设置</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="col-xs-3">第一自习室</td>
                                    <td class="col-xs-2">2</td>
                                    <td class="col-xs-2" style="padding-left: 40px!important;">3</td>
                                    <td class="col-xs-3"style="padding-left: 50px!important;">
                                        <a class="linkCcc" href="#sitDetail" aria-controls="char" role="tab" data-toggle="tab">座位信息</a>
                                        <a class="linkCcc" href="#time" aria-controls="char" role="tab" data-toggle="tab">时间段设置</a>
                                    </td>
                                </tr>
                            </table>
                        </div>

                    </div>

                </div>
                <!--页码块-->
                <footer class="footer">
                    <ul class="pagination">
                        <li>
                            <select>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                            页
                        </li>
                        <li class="gray">
                            共20页
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-left">
                            </i>
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-right">
                            </i>
                        </li>
                    </ul>
                </footer>

                <!--弹出添加楼宇窗口-->
                <div class="modal fade" id="addBuilding" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">添加楼宇</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">楼层：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">区域：</label>
                                            <div class="col-xs-8 ">
                                                <input type="" class="form-control input-sm duiqi" id="sLink" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">座位数：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd" placeholder="">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--弹出修改用户窗口-->
                <div class="modal fade" id="reviseUser" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">修改用户</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">用户名：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">真实姓名：</label>
                                            <div class="col-xs-8 ">
                                                <input type="" class="form-control input-sm" id="sLink" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">电子邮箱：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm" id="sOrd" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">电话：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm" id="sKnot" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">地区：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm" id="sKnot" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">权限：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm" id="sKnot" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="situation" class="col-xs-3 control-label">状态：</label>
                                            <div class="col-xs-8">
                                                <label class="control-label" for="anniu">
                                                    <input type="radio" name="situation" id="normal">正常</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <label class="control-label" for="meun">
                                                    <input type="radio" name="situation" id="forbid"> 禁用</label>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!--弹出删除用户警告窗口-->
                <div class="modal fade" id="deleteUser" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    确定要删除该用户？删除后不可恢复！
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-green btn-xs">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
            </div>
            <!--座位详情模块-->
            <div role="tabpanel" class="tab-pane" id="sitDetail">
                <div class="check-div form-inline">
                    <span href="#sitt" aria-controls="sitt" role="tab" data-toggle="tab" style="cursor: pointer;"><span class="glyphicon glyphicon glyphicon-chevron-left"></span>&nbsp;&nbsp;返回上一页</span>
                </div>
                <div class="data-div">
                    <div class="row tableHeader">
                        <div class="col-xs-6 ">
                            座位编码
                        </div>
                        <div class="col-xs-6 ">
                            座位名称
                        </div>

                    </div>
                    <div class="tablebody">

                        <div class="row">
                            <div class="col-xs-6 ">
                                sad2345fas345533
                            </div>
                            <div class="col-xs-6">
                                王座
                            </div>

                        </div>

                    </div>

                </div>
                <!--页码块-->
                <footer class="footer">
                    <ul class="pagination">
                        <li>
                            <select>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                            </select>
                            页
                        </li>
                        <li class="gray">
                            共20页
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-left">
                            </i>
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-menu-right">
                            </i>
                        </li>
                    </ul>
                </footer>

            </div>
            <!--人员管理模块-->
            <div role="tabpanel" class="tab-pane" id="stud">
                <iframe src="/tag/index"></iframe>
                <!-- <div class="check-div form-inline">
                     <div class="col-xs-5">
                         <input type="text" class=" form-control input-sm" placeholder="输入文字搜索" style="	!height: 40px!important;">
                         <button class="btn btn-white btn-xs ">查 询 </button>
                     </div>
                     <div class="col-xs-4 col-lg-4  col-md-5" style="padding-right: 40px;text-align: right;float: right;">
                         <label for="daoru">导入人员信息表:&nbsp;</label>
                         <button class="btn btn-white btn-xs " id="daoru">选取文件 </button>
                         <button class="btn btn-white btn-xs ">导入 </button>
                     </div>

                 </div>
                 <div class="data-div">
                     <div class="row tableHeader">
                         <div class="col-xs-2 ">
                             学号
                         </div>
                         <div class="col-xs-1 ">
                             姓名
                         </div>
                         <div class="col-xs-2">
                             院系
                         </div>
                         <div class="col-xs-2">
                             年年
                         </div>
                         <div class="col-xs-2 ">
                             学习时长
                         </div>
                         <div class="col-xs-2">
                             违约次数
                         </div>
                         <div class="col-xs-1">
                             操作
                         </div>
                     </div>
                     <div class="tablebody">

                         <div class="row">
                             <div class="col-xs-2 ">
                                 6426398978
                             </div>
                             <div class="col-xs-1">
                                 邓超
                             </div>
                             <div class="col-xs-2">
                                 计算机地区
                             </div>
                             <div class="col-xs-2">
                                 2013年
                             </div>
                             <div class="col-xs-2">
                                 15
                             </div>
                             <div class="col-xs-2">
                                 2
                             </div>
                             <div class="col-xs-1">
                                 <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteObey">清除违约</button>
                             </div>
                         </div>

                     </div>

                 </div>
                 &lt;!&ndash;页码块&ndash;&gt;
                 <footer class="footer">
                     <ul class="pagination">
                         <li>
                             <select>
                                 <option>1</option>
                                 <option>2</option>
                                 <option>3</option>
                                 <option>4</option>
                                 <option>5</option>
                                 <option>6</option>
                                 <option>7</option>
                                 <option>8</option>
                                 <option>9</option>
                                 <option>10</option>
                             </select>
                             页
                         </li>
                         <li class="gray">
                             共20页
                         </li>
                         <li>
                             <i class="glyphicon glyphicon-menu-left">
                             </i>
                         </li>
                         <li>
                             <i class="glyphicon glyphicon-menu-right">
                             </i>
                         </li>
                     </ul>
                 </footer>

                 &lt;!&ndash;弹出删除违约记录警告窗口&ndash;&gt;

                 <div class="modal fade" id="deleteObey" role="dialog" aria-labelledby="gridSystemModalLabel">
                     <div class="modal-dialog" role="document">
                         <div class="modal-content">
                             <div class="modal-header">
                                 <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                 <h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
                             </div>
                             <div class="modal-body">
                                 <div class="container-fluid">
                                     确定要删除该违约记录？删除后不可恢复！
                                 </div>
                             </div>
                             <div class="modal-footer">
                                 <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                 <button type="button" class="btn btn-xs btn-danger">保 存</button>
                             </div>
                         </div>
                         &lt;!&ndash; /.modal-content &ndash;&gt;
                     </div>
                     &lt;!&ndash; /.modal-dialog &ndash;&gt;
                 </div>
                 &lt;!&ndash; /.modal &ndash;&gt;
 -->
            </div>
        </div>
    </div>
</div>
<!-- 滑块js -->
<!--	<script type="text/javascript">
        scale = function(btn, bar, title, unit) {
                this.btn = document.getElementById(btn);
                this.bar = document.getElementById(bar);
                this.title = document.getElementById(title);
                this.step = this.bar.getElementsByTagName("div")[0];
                this.unit = unit;
                this.init();
        };
        scale.prototype = {
                init: function() {
                        var f = this,
                                g = document,
                                b = window,
                                m = Math;
                        f.btn.onmousedown = function(e) {
                                var x = (e || b.event).clientX;
                                var l = this.offsetLeft;
//						var max = f.bar.offsetWidth - this.offsetWidth;
                                var max = f.bar.offsetWidth-20 ;
                                g.onmousemove = function(e) {
                                        var thisX = (e || b.event).clientX;
                                        var to = m.min(max, m.max(-2, l + (thisX - x)));
                                        f.btn.style.left = to+ 'px';
                                        f.ondrag(m.round(m.max(0, to / max) * 100), to);
                                        b.getSelection ? b.getSelection().removeAllRanges() : g.selection.empty();
                                };
                                g.onmouseup = new Function('this.onmousemove=null');
                        };
                },
                ondrag: function(pos, x) {
                        this.step.style.width = Math.max(0, x) +2+ 'px';
                        this.title.innerHTML = pos / 10 + this.unit + "";
                }
        }
        new scale('btn0', 'bar0', 'title0', "分钟");
        new scale('btn1', 'bar1', 'title1', "分钟");
        new scale('btn2', 'bar2', 'title2', "天");
        new scale('btn3', 'bar3', 'title3', "次");
</script>
-->
<script src="../../js/jquery.nouislider.js"></script>

<!-- this page specific inline scripts -->
<script>
    //min/max slider
    function huadong(my, unit, def, max) {
        $(my).noUiSlider({
            range: [0, max],
            start: [def],
            handles: 1,
            connect: 'upper',
            slide: function() {
                var val = Math.floor($(this).val());
                $(this).find(".noUi-handle").text(
                    val + unit
                );
                console.log($(this).find(".noUi-handle").parent().parent().html());
            },
            set: function() {
                var val = Math.floor($(this).val());
                $(this).find(".noUi-handle").text(
                    val + unit
                );
            }
        });
        $(my).val(def, true);
    }
    huadong('.slider-minmax1', "分钟", "5", 30);
    huadong('.slider-minmax2', "分钟", "6", 15);
    huadong('.slider-minmax3', "分钟", "10", 60);
    huadong('.slider-minmax4', "次", "2", 10);
    huadong('.slider-minmax5', "天", "3", 7);
    huadong('.slider-minmax6', "天", "8", 10);
</script>
</body>

</html>
