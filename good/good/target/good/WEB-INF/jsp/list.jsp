<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>失物显示</title>
    <link rel="shortcut icon" href="../images/findu.ico">
    <link rel="Bookmark" href="../images/findu.ico" />
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <!-- bootstrap-CSS -->
    <link rel="stylesheet" href="../../css/bootstrap-select.css">
    <!-- bootstrap-select-CSS -->

    <link rel="stylesheet" href="../../css/font-awesome.min.css" />
    <!-- fontawesome-CSS -->
    <link rel="stylesheet" href="../../css/font-awesome.css" />
    <!-- fontawesome-CSS -->
    <link rel="stylesheet" href="../../css/font-awesome.min.4.7.css" />
    <link rel="stylesheet" href="../../css/menu_sideslide.css"
          type="text/css" media="all">
    <!-- Navigation-CSS -->
    <!-- meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <LINK rel=stylesheet type=text/css href="../css/style1.css">
    <META name=GENERATOR content="MSHTML 8.00.7601.17514">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords"
          content="Resale Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />

    <!-- //meta tags -->
    <!--fonts-->
    <link href='../../css/font1.css' rel='stylesheet'
          type='text/css'>
    <link href='../../css/font2.css' rel='stylesheet'
          type='text/css'>
    <!--//fonts-->

    <link href="../../css/style.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>

<!-- 黑色头内容 -->
<div class="w3ls-header">
    <!--header-one-->
    <div class="w3ls-header-right">
        <ul>
            <li class="dropdown head-dpdn"><a href="#"
                                              class="dropdown-toggle" data-toggle="dropdown">
                <%--<i class="fa fa-user" aria-hidden="true"></i>--%>
                <img src="../images/user.png"> 你好,${sessionScope.userName}&nbsp;<span
                    class="caret"></span> </a>
            </li>
            <li class="dropdown head-dpdn"><a style="color:white;"

                                              href="/user/userInfor">个人中心</a>
            </li>
            <li class="dropdown head-dpdn"><a style="color:white;"

                                              href="/user/exist">退出登录</a>
            </li>

            <li class="dropdown head-dpdn">
                <div class="header-right">
                    <!-- Large modal -->
                </div>
            </li>
        </ul>
    </div>
    <div class="clearfix"></div>
</div>

<!-- 搜索内容 -->
<div class="container">
    <div class="agile-its-header">
        <div class="logo">
            <h1>
                <a href="/good/search"><span>Find</span>U</a>
            </h1>
        </div>
        <div class="agileits_search" style="position:relative">
            <form id="sform" autocomplete="off" action="/good/search"
                  method="post">
                <input type="hidden" id="hpageNum" name="pageNum">
                <input id="Search" name="searchName"
                       type="text" placeholder="输入您要查找的物品信息" value="${vo.searchName}"> <select
                    id="agileinfo_search" name="searchType" >
                <option ${vo.searchType==""?"select":""} value="">全部</option>
                <option ${vo.searchType=="银行卡"?"select":""} value="银行卡">银行卡</option>
                <option ${vo.searchType=="钥匙"?"select":""} value="钥匙">钥匙</option>
                <option ${vo.searchType=="饭卡"?"select":""} value="饭卡">饭卡</option>
                <option ${vo.searchType=="雨伞"?"select":""} value="雨伞">雨伞</option>
                <option ${vo.searchType=="钱包"?"select":""} value="钱包">钱包</option>
                <option ${vo.searchType=="书本"?"select":""} value="书本">书本</option>
                <option ${vo.searchType=="眼镜"?"select":""} value="眼镜">眼镜</option>
                <option ${vo.searchType=="书包"?"select":""} value="书包">书包</option>
                <option ${vo.searchType=="身份证"?"select":""} value="身份证">身份证</option>
                <option ${vo.searchType=="生活用品"?"select":""} value="生活用品">生活用品</option>
            </select>
                <button type="submit" class="btn btn-default"
                        aria-label="Left Align" name="search">
                    <%--<i class="fa fa-search" aria-hidden="true"> </i>--%>
                    <img src="../images/findu.png"/>
                </button>
            </form>
            <a class="post-w3layouts-ad" href="/good/fabushow">发布失物招领</a>
            <div id="context"
                 style="display: none;border: 1px solid gray;background-color: white;width: 368px;position: absolute;right: 373px;top: 42px;z-index: 3;"></div>
        </div>

        <div class="clearfix"></div>
    </div>
</div>

<div class="main wrap">
    <table class="house-list">
        <tbody>
        <c:forEach items="${pageInfo.list}" var="good">
        <tr>
            <td class="house-thumb">
                <span><a href="/good/details?goodId=${good.goodId}" target="_blank"><img src="/good/images?goodImage=${good.goodImage}" width="100" height="75" alt=""></a></span>
            </td>
            <td>
                <dl>
                    <dt>发布人:${good.goodName}</dt>
                    <dd>发布消息:${good.goodInfor}<br>联系方式：${good.goodTel} <br>捡拾时间：<fmt:formatDate value="${good.goodDate}"  type="date" dateStyle="default"/></dd>
                </dl>
            </td>
            <td class="house-type">失物类型:${good.type.typeName}</td>
            <td class="house-price">捡拾地址:${good.goodLocal}</td>
        </tr>
        </c:forEach>
        </tbody>
    </table>
    <div class="pager">
        <ul>

            <li class="current"><a href="javascript:void(0)" onclick="dosubmit(${pageInfo.firstPage})">首页</a></li>
            <li><a href="javascript:void(0)" onclick="dosubmit(${pageInfo.hasPreviousPage?pageInfo.prePage:pageInfo.pageNum})">上一页</a></li>
            <li><a href="javascript:void(0)" onclick="dosubmit(${pageInfo.hasNextPage?pageInfo.nextPage:pageInfo.pageNum})">下一页</a></li>
            <li><a href="javascript:void(0)" onclick="dosubmit(${pageInfo.lastPage})">末页</a></li>
        </ul>
        <span class="total">${pageInfo.pageNum}页/${pageInfo.pages}页</span></div>
</div>
<script>
    function dosubmit(pageNum) {
        var p = document.getElementById("hpageNum");
        p.value = pageNum;
        var form = document.getElementById("sform");
        form.submit();
    }

</script>

</body>
</html>
