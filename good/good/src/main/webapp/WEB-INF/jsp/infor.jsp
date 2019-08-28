<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>个人信息</title>
    <link rel="stylesheet" href="../css/pintuer.css">
    <link rel="stylesheet" href="../css/admin2.css">
    <script type="text/javascript" src="../scripts/jquery.min.js"></script>
    <script src="../scripts/pintuer.js"></script>
    <script src="../scripts/laydate.js"></script>
</head>

<body>
<div class="panel admin-panel">
    <div class="panel-head"><strong><span class="icon-pencil-square-o"></span> 个人信息</strong></div>
    <div class="body-content">
        <form method="post" class="form-x" action="/user/updateUser" id="user_form">
            <div class="form-group">
                <div class="label">
                    <label></label>
                </div>
                <div class="field">

                    <input type="hidden" class="input input-width" name="userId" value="${user.userId}" />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>用户名：</label>
                </div>
                <div class="field">
                    <input type="text" class="input input-width" name="userName" value="${user.userName}" >
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label">
                    <label>手机：</label>
                </div>
                <div class="field">
                    <input type="text" class="input input-width" name="userTel" value="${user.userTel}" >
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>邮箱：</label>
                </div>
                <div class="field">
                    <input type="text" class="input input-width" name="userEmail" value="${user.userEmail}" >
                    <div class="tips"></div>
                </div>
            </div>

            <div class="form-group">
                <div class="label">
                    <label></label>
                </div>
                <div class="field">
                    <button id="change" class="button bg-main icon-check-square-o" type="submit"> 提交修改</button>
                    &nbsp;&nbsp;&nbsp;<font color='#ff0000' size=3></font>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
<script>
    ;!function(){
        laydate({
            elem: '#demo'
        })
    }();
</script>
</html>