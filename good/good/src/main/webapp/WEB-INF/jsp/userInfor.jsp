
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>
    <link rel="stylesheet" href="../css/admin2.css">
    <link rel="shortcut icon" href="../images/findu.ico">
    <link rel="Bookmark" href="../images/findu.ico" />
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <!-- bootstrap-CSS -->
    <link rel="stylesheet" href="../css/bootstrap-select.css">
    <!-- bootstrap-select-CSS -->
    <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- style.css -->
    <link rel="stylesheet" href="../css/font-awesome.max.css" />
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
    <style media="screen">
        .test {
            display: inline-block;
            width: 180px;
            font-size: 24px;
            padding-left: 10px;
        }
    </style>
</head>

<body>

<body style="background-color:#f2f9fd;">

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
            <form autocomplete="off" action="/good/search"
                  method="post">
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


<div class="leftnav">
    <ul style="display:block">
        <li><a href="/user/infor" target="right"><img src="../images/user1.png"> 个人信息</a></li>
        <li><a href="/user/pass" target="right"><img src="../images/password.png">修改密码</a></li>
        <li><a href="/good/mygood" target="right"><img src="../images/fabu.png">我的发布</a></li>
        <%--<li><a href="applymanage.jsp" target="right"><i class="fa fa-cog" aria-hidden="true"></i> 申领管理</a></li>--%>
        <li><a href="/apply/myapply" target="right"><img src="../images/shenqing.png">我的申领</a></li>
    </ul>

</div>
<script type="text/javascript">
    $(function() {
        $(".leftnav h2").click(function() {
            $(this).next().slideToggle(200);
            $(this).toggleClass("on");
        })
        $(".leftnav ul li a").click(function() {
            $("#a_leader_txt").text($(this).text());
            $(".leftnav ul li a").removeClass("on");
            $(this).addClass("on");
        })
    });
</script>

<div class="admin">
    <iframe rameborder="1" scrolling="auto" src="/user/infor" name="right" width="100%" height="800px"></iframe>
</div>
</body>

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
