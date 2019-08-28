<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <title>FindU失物招领平台</title>

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


    <!-- style.css -->
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


<!-- Slider -->
<div class="slider">
    <ul class="rslides" id="slider">
        <li>
            <div class="w3ls-slide-text">
                <h3>搜索失物招领</h3>
                <a href="/good/search"
                   class="w3layouts-explore-all">浏览所有类别</a>
            </div></li>
        <li>
            <div class="w3ls-slide-text">
                <h3>发布你拾到的物品</h3>
                <a href="/good/fabushow" class="w3layouts-explore">发布失物招领</a>
            </div></li>
        <li>
            <div class="w3ls-slide-text">
                <h3>最新FindU失物招领</h3>
                <a href="#" class="w3layouts-explore">等你来</a>
            </div></li>
        <li>
            <div class="w3ls-slide-text">
                <h3>找到你的遗失物品</h3>
                <a href="/good/search" class="w3layouts-explore">查看详情</a>
            </div></li>

    </ul>
</div>
<!-- //Slider -->
<!-- content-starts-here -->
<div class="main-content">
    <div class="w3-categories">
        <h3>浏览分类</h3>
        <div class="container">
            <div class="col-md-3">
                <div class="focus-grid w3layouts-boder1">
                    <a class="btn-8" href="all-classifieds.jsp?typeid=1">
                        <div class="focus-border">
                            <div class="focus-layout">
                                <div class="focus-image">
                                    <i class="fa fa-credit-card"></i>
                                </div>
                                <h4 class="clrchg">校园卡</h4>
                            </div>
                        </div> </a>
                </div>
            </div>
            <div class="col-md-3">
                <div class="focus-grid w3layouts-boder2">
                    <a class="btn-8" href="all-classifieds.jsp?typeid=0">
                        <div class="focus-border">
                            <div class="focus-layout">
                                <div class="focus-image">
                                    <i class="fa fa-user"></i>
                                </div>
                                <h4 class="clrchg">身份证</h4>
                            </div>
                        </div> </a>
                </div>
            </div>
            <div class="col-md-3">
                <div class="focus-grid w3layouts-boder3">
                    <a class="btn-8" href="all-classifieds.jsp?typeid=3">
                        <div class="focus-border">
                            <div class="focus-layout">
                                <div class="focus-image">
                                    <i class="fa fa-ticket"></i>
                                </div>
                                <h4 class="clrchg">U盘</h4>
                            </div>
                        </div> </a>
                </div>
            </div>
            <div class="col-md-3">
                <div class="focus-grid w3layouts-boder4">
                    <a class="btn-8" href="all-classifieds.jsp?typeid=11">
                        <div class="focus-border">
                            <div class="focus-layout">
                                <div class="focus-image">
                                    <i class="fa fa-laptop"></i>
                                </div>
                                <h4 class="clrchg">数码电子</h4>
                            </div>
                        </div> </a>
                </div>
            </div>
            <div class="col-md-3">
                <div class="focus-grid w3layouts-boder5">
                    <a class="btn-8" href="all-classifieds.jsp?typeid=6">
                        <div class="focus-border">
                            <div class="focus-layout">
                                <div class="focus-image">
                                    <i class="fa fa-money"></i>
                                </div>
                                <h4 class="clrchg">钱包</h4>
                            </div>
                        </div> </a>
                </div>
            </div>
            <div class="col-md-3">
                <div class="focus-grid w3layouts-boder6">
                    <a class="btn-8" href="all-classifieds.jsp?typeid=7">
                        <div class="focus-border">
                            <div class="focus-layout">
                                <div class="focus-image">
                                    <i class="fa fa-mobile"></i>
                                </div>
                                <h4 class="clrchg">手机</h4>
                            </div>
                        </div> </a>
                </div>
            </div>
            <div class="col-md-3">
                <div class="focus-grid w3layouts-boder7">
                    <a class="btn-8" href="all-classifieds.jsp?typeid=5">
                        <div class="focus-border">
                            <div class="focus-layout">
                                <div class="focus-image">
                                    <i class="fa fa-key"></i>
                                </div>
                                <h4 class="clrchg">钥匙</h4>
                            </div>
                        </div> </a>
                </div>
            </div>
            <div class="col-md-3">
                <div class="focus-grid w3layouts-boder8">
                    <a class="btn-8" href="all-classifieds.jsp?typeid=12">
                        <div class="focus-border">
                            <div class="focus-layout">
                                <div class="focus-image">
                                    <i class="fa fa-book"></i>
                                </div>
                                <h4 class="clrchg">图书资料</h4>
                            </div>
                        </div> </a>
                </div>
            </div>
            <div class="col-md-3">
                <div class="focus-grid w3layouts-boder9">
                    <a class="btn-8" href="all-classifieds.jsp?typeid=15">
                        <div class="focus-border">
                            <div class="focus-layout">
                                <div class="focus-image">
                                    <i class="glyphicon glyphicon-sunglasses"></i>
                                </div>
                                <h4 class="clrchg">眼镜</h4>
                            </div>
                        </div> </a>
                </div>
            </div>
            <div class="col-md-3">
                <div class="focus-grid w3layouts-boder10">
                    <a class="btn-8" href="all-classifieds.jsp?typeid=16">
                        <div class="focus-border">
                            <div class="focus-layout">
                                <div class="focus-image">
                                    <i class="glyphicon glyphicon-pencil"></i>
                                </div>
                                <h4 class="clrchg">文具</h4>
                            </div>
                        </div> </a>
                </div>
            </div>
            <div class="col-md-3">
                <div class="focus-grid w3layouts-boder11">
                    <a class="btn-8" href="all-classifieds.jsp?typeid=10">
                        <div class="focus-border">
                            <div class="focus-layout">
                                <div class="focus-image">
                                    <i class="fa fa-bicycle"></i>
                                </div>
                                <h4 class="clrchg">自行车</h4>
                            </div>
                        </div> </a>
                </div>
            </div>
            <div class="col-md-3">
                <div class="focus-grid w3layouts-boder12">
                    <a class="btn-8" href="all-classifieds.jsp">
                        <div class="focus-border">
                            <div class="focus-layout">
                                <div class="focus-image">
                                    <i class="fa fa-asterisk"></i>
                                </div>
                                <h4 class="clrchg">所有分类</h4>
                            </div>
                        </div> </a>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

    <!-- most-popular-ads -->



</div>



<!-- Navigation-JavaScript -->
<script src="../scripts/classie.js"></script>
<script src="../scripts/main.js"></script>
<!-- //Navigation-JavaScript -->

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
            liveSearch : true,
            maxOptions : 1
        });
    });
</script>

<!-- language-select -->
<script type="text/javascript"
        src="../scripts/jquery.leanModal.min.js"></script>
<link href="../../css/jquery.uls.css" rel="stylesheet" />
<link href="../../css/jquery.uls.grid.css" rel="stylesheet" />
<link href="../../css/jquery.uls.lcd.css" rel="stylesheet" />
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
            onSelect : function(language) {
                var languageName = $.uls.data.getAutonym(language);
                $('.uls-trigger').text(languageName);
            },
            quickList : [ 'en', 'hi', 'he', 'ml', 'ta', 'fr' ]
            //FIXME
        });
    });
</script>
<!-- //language-select -->

<script type="text/javascript" src="../scripts/jquery.flexisel.js"></script>
<!-- flexisel-js -->
<script type="text/javascript">
    $(window).load(function() {
        $("#flexiselDemo3").flexisel({
            visibleItems : 1,
            animationSpeed : 1000,
            autoPlay : true,
            autoPlaySpeed : 5000,
            pauseOnHover : true,
            enableResponsiveBreakpoints : true,
            responsiveBreakpoints : {
                portrait : {
                    changePoint : 480,
                    visibleItems : 1
                },
                landscape : {
                    changePoint : 640,
                    visibleItems : 1
                },
                tablet : {
                    changePoint : 768,
                    visibleItems : 1
                }
            }
        });

    });
</script>

<!-- Slider-JavaScript -->
<script src="../scripts/responsiveslides.min.js"></script>
<script>
    $(function() {
        $("#slider").responsiveSlides({
            auto : true,
            pager : false,
            nav : true,
            speed : 500,
            maxwidth : 800,
            namespace : "large-btns"
        });

    });
</script>
<!-- //Slider-JavaScript -->

<!-- here stars scrolling icon -->
<script type="text/javascript">
    $(document).ready(function() {
        $().UItoTop({
            easingType : 'easeOutQuart'
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
                scrollTop : $(this.hash).offset().top
            }, 1000);
        });
    });
</script>
<!-- start-smoth-scrolling -->
<!-- //here ends scrolling icon -->
</body>

</html>
