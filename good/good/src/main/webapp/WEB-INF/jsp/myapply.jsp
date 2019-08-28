<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title></title>
    <link rel="stylesheet" href="../css/pintuer.css">
    <link rel="stylesheet" href="../css/admin2.css">
    <script type="text/javascript" src="../scripts/jquery-1.11.0.min.js"></script>
    <script src="../scripts/pintuer.js"></script>
</head>

<body>
<div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 内容列表</strong></div>
    <table class="table table-hover text-center">
        <tr>
            <th width="5%">申请序号</th>
            <th width="15%">申请物品图片预览</th>
            <th width="10%">申请人</th>
            <th width="5%">申请电话</th>
            <th width="20%">申请理由</th>
            <th width="8%">发布人</th>
            <th width="10%">发布人电话</th>
            <th width="8%">发布时间</th>

        </tr>
        <c:forEach items="${apply}" var="apply">
        <tr>
            <td>${apply.applyId}</td>
            <td><img src="/apply/images?applyImage=${apply.applyImage}" width="136" height="46" alt=""></td>
            <td>${apply.applyName}</td>
            <td>${apply.applyTel}</td>
            <td>${apply.applyInfor}</td>
            <td>${apply.good.goodName}</td>
            <td>${apply.good.goodTel}</td>
            <td><fmt:formatDate value="${apply.good.goodDate}"  type="date" dateStyle="default"/></td>
        </tr>
        </c:forEach>
        <script type="text/javascript">
            function del(id) {
                if (confirm("您确定要取消吗?")) {
                    window.location.href="/FindU/servlet/DelApplyServlet?ApplyId="+id;
                }
            }
        </script>

        <tr>
            <td colspan="10">
                <div class="pagelist"> <a href="">上一页</a> <span class="current">1</span><a href="">下一页</a><a href="">尾页</a></div>
            </td>
        </tr>
    </table>
</div>

</body>

</html>
