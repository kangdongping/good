<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>失物招领信息</title>

    <link rel="shortcut icon" href="../images/findu.ico">
    <link rel="Bookmark" href="../images/findu.ico" />
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <!-- bootstrap-CSS -->
    <link rel="stylesheet" href="../css/bootstrap-select.css">
    <!-- bootstrap-select-CSS -->
    <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- style.css -->
    <link rel="stylesheet" href="../css/font-awesome.min.css" />
    <!-- fontawesome-CSS -->
    <link rel="stylesheet" href="../css/menu_sideslide.css" type="text/css" media="all">
    <!-- Navigation-CSS -->
    <!-- meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Resale Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script type="application/x-javascript">
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);
    </script>
    <!-- //meta tags -->
    <!--fonts-->
    <link href='../css/font1.css' rel='stylesheet' type='text/css'>
    <link href='../css/font2.css' rel='stylesheet' type='text/css'>
    <!--//fonts-->
    <!-- js -->
    <script type="text/javascript" src="../scripts/jquery.min.js"></script>
    <!-- js -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="../scripts/bootstrap.js"></script>
    <script src="../scripts/bootstrap-select.js"></script>
    <script>
        $(document).ready(function() {
            var mySelect = $('#first-disabled2');

            $('#special').on('click', function() {
                mySelect.find('option:selected').prop('disabled', true);
                mySelect.selectpicker('refresh');
            });

            $('#special2').on('click', function() {
                mySelect.find('option:disabled').prop('disabled', false);
                mySelect.selectpicker('refresh');
            });

            $('#basic2').selectpicker({
                liveSearch: true,
                maxOptions: 1
            });
        });
    </script>
    <!-- language-select -->
    <script type="text/javascript" src="../scripts/jquery.leanModal.min.js"></script>
    <link href="../css/jquery.uls.css" rel="stylesheet" />
    <link href="../css/jquery.uls.grid.css" rel="stylesheet" />
    <link href="../css/jquery.uls.lcd.css" rel="stylesheet" />
    <!-- Source -->
    <script src="../scripts/jquery.uls.data.js"></script>
    <script src="../scripts/jquery.uls.data.utils.js"></script>
    <script src="../scripts/jquery.uls.lcd.js"></script>
    <script src="../scripts/jquery.uls.languagefilter.js"></script>
    <script src="../scripts/jquery.uls.regionfilter.js"></script>
    <script src="../scripts/jquery.uls.core.js"></script>
    <script>
        $(document).ready(function() {
            $('.uls-trigger').uls({
                onSelect: function(language) {
                    var languageName = $.uls.data.getAutonym(language);
                    $('.uls-trigger').text(languageName);
                },
                quickList: ['en', 'hi', 'he', 'ml', 'ta', 'fr'] //FIXME
            });
        });
    </script>
    <!-- //language-select -->
    <link rel="stylesheet" href="../css/flexslider.css" media="screen" />
    <!-- flexslider css -->
</head>

<body>

<!-- breadcrumbs -->
<div class="w3layouts-breadcrumbs text-center">
    <div class="container">
            <span class="agile-breadcrumbs">


			<a href="index.jsp"><i class="fa fa-home home_1"></i></a> /
			<span><a href="all-classifieds.jsp">所有分类</a></span> /

			<span>物品详情</span></span>
    </div>
</div>
<!-- //breadcrumbs -->
<!--single-page-->
<div class="single-page main-grid-border">
    <div class="container">
        <div class="product-desc">
            <div class="col-md-7 product-view">
                <!-- 物品信息 -->
                <h2>${good.goodInfor}</h2>


                <p> <i class="glyphicon glyphicon-map-marker"></i><img src="../images/user.png">
                    发布者: ${good.goodName} || 发布时间: <fmt:formatDate value="${good.goodDate}"  type="date" dateStyle="default"/> || 物品编号: ${good.type.typeId} </p>
                <div class="flexslider">
                    <ul class="slides">
                        <li data-thumb="">
                            <%--<img src="/FindU/images/<%=g.getPicture() %>" />--%>
                        </li>
                    </ul>
                </div>
                <!-- FlexSlider -->
                <script defer src="../scripts/jquery.flexslider.js"></script>
                <script>
                    // Can also be used with $(document).ready()
                    $(window).load(function() {
                        $('.flexslider').flexslider({
                            animation: "slide",
                            controlNav: "thumbnails"
                        });
                    });
                </script>
                <!-- //FlexSlider -->
                <div class="product-details">

                    <h4><span class="w3layouts-agileinfo">所属分类 </span> : ${good.type.typeName}</h4>
                    <h4><span class="w3layouts-agileinfo">拾取时间 </span> : <fmt:formatDate value="${good.goodDate}"  type="date" dateStyle="default"/></h4>
                    <h4><span class="w3layouts-agileinfo">拾取地点 </span> : ${good.goodLocal}</h4>
                    <h4><span class="w3layouts-agileinfo">物品详情 </span> :${good.goodInfor}</h4>
                </div>
            </div>
            <div class="col-md-5 product-details-grid">
                <div class="item-price">
                    <div class="product-price">
                        <p class="p-price">拾到时间</p>

                        <htime><fmt:formatDate value="${good.goodDate}"  type="date" dateStyle="default"/></htime>
                        <div class="clearfix"></div>
                    </div>
                    <div class="condition">
                        <p class="p-price">估计价值</p>
                        <h4>无</h4>
                        <div class="clearfix"></div>
                    </div>
                    <div class="itemtype">
                        <p class="p-price">物品状态</p>

                        <h4>等待认领中</h4>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="interested text-center">
                    <h4>对此物品有疑问?<small>&nbsp;&nbsp;联系拾到者</small></h4>
                    <p><i class="glyphicon glyphicon-earphone"></i>${good.goodTel}</p>
                </div>



                <div class="interested text-center">
                    <h4>这是你遗失的物品？</h4>
                    <p><a class='apply' href='/apply/ApplyShow?goodName=${good.goodName}'><i class='fa fa-hand-o-right' aria-hidden='true'></i>申领该物品</a></p>
                </div>
            </div>

            <div class="clearfix"></div>
        </div>
    </div>
</div>

<!--//single-page-->


</body>
<!-- Navigation-JavaScript -->
<script src="../scripts/classie.js"></script>
<script src="../scripts/main.js"></script>
<!-- //Navigation-JavaScript -->
<!-- here stars scrolling icon -->
<script type="text/javascript">
    $(document).ready(function() {
        /*
        	var defaults = {
        	containerID: 'toTop', // fading element id
        	containerHoverID: 'toTopHover', // fading element hover id
        	scrollSpeed: 1200,
        	easingType: 'linear'
        	};
        */

        $().UItoTop({
            easingType: 'easeOutQuart'
        });

    });
</script>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="../scripts/move-top.js"></script>
<script type="text/javascript" src="../scripts/easing.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function($) {
        $(".scroll").click(function(event) {
            event.preventDefault();
            $('html,body').animate({
                scrollTop: $(this.hash).offset().top
            }, 1000);
        });
    });
</script>
<!-- start-smoth-scrolling -->
<!-- //here ends scrolling icon -->

</html>
