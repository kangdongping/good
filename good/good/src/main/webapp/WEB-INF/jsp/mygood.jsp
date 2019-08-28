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
    <script type="text/javascript" src="../scripts/jquery.min.js"></script>
    <script src="../scripts/pintuer.js"></script>
</head>

<body>


<div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 内容列表</strong></div>
    <table class="table table-hover text-center">
        <tr>
            <th width="10%">序号</th>
            <th width="15%">图片预览</th>
            <th width="15%">消息备注</th>
            <th width="15%">物品类型</th>
            <th width="10%">联系电话</th>
            <th width="10%">发布时间</th>
            <th width="15%">发布人</th>
        </tr>
        <c:forEach items="${good}" var="good">
        <tr>
            <td>${good.goodId}</td>
            <td><img src="/good/images?goodImage=${good.goodImage}" width="136" height="46" alt=""></td>
            <td>${good.goodInfor}</td>
            <td>${good.type.typeName}</td>
            <td>${good.goodTel}</td>
            <td><fmt:formatDate value="${good.goodDate}"  type="date" dateStyle="default"/></td>

            <td>
                <div class="button-group">
                    ${good.goodName}
                </div>
            </td>
            <td class=house-price><LABEL class=ui-green><a href="/good/delete?goodId=${good.goodId}"> <INPUT
                    value="删    除" type="submit" name="delete"></a></LABEL>
            </td>
        </tr>
        </c:forEach>
        <script type="text/javascript">
            function del(id) {
                if (confirm("您确定要删除吗?")) {
                    window.location.href="/FindU/servlet/DeleteServlet?goodId="+id;
                }
            }
        </script>

        <tr>
            <td colspan="7">
                <div class="pagelist"> <a href="">上一页</a> <span class="current">1</span><a href="">下一页</a><a href="">尾页</a></div>
            </td>
        </tr>
    </table>
</div>

</body>

</html>
