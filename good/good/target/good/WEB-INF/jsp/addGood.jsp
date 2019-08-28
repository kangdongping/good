<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>拾物发布-FindU失物招领平台</title>
    <link rel="shortcut icon" href="../images/findu.ico">
    <link rel="Bookmark" href="../images/findu.ico" />
    <link rel="stylesheet" href="../css/bootstrap.min.css"><!-- bootstrap-CSS -->
    <link rel="stylesheet" href="../css/bootstrap-select.css"><!-- bootstrap-select-CSS -->
    <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" /><!-- style.css -->
    <link rel="stylesheet" href="../css/font-awesome.max.css" /><!-- fontawesome-CSS -->
    <link rel="stylesheet" href="../css/menu_sideslide.css" type="text/css" media="all"><!-- Navigation-CSS -->
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

    <link rel="stylesheet" type="text/css" href="../css/jquery-ui.css" />

    <script type="text/javascript" src="../scripts/jquery-ui-1.10.4.custom.min.js"></script>
    <script type="text/javascript" src="../scripts/jquery.ui.datepicker-zh-CN.js"></script>
    <script type="text/javascript" src="../scripts/jquery-ui-timepicker-addon.js"></script>
    <script type="text/javascript" src="../scripts/jquery-ui-timepicker-zh-CN.js"></script>
    <style type="text/css">
        .ui-timepicker-div .ui-widget-header { margin-bottom: 8px; }
        .ui-timepicker-div dl { text-align: left; }
        .ui-timepicker-div dl dt { float: left; clear:left; padding: 0 0 0 5px; }
        .ui-timepicker-div dl dd { margin: 0 10px 10px 45%; }
        .ui-timepicker-div td { font-size: 90%; }
        .ui-tpicker-grid-label { background: none; border: none; margin: 0; padding: 0; }

        .ui-timepicker-rtl{ direction: rtl; }
        .ui-timepicker-rtl dl { text-align: right; padding: 0 5px 0 0; }
        .ui-timepicker-rtl dl dt{ float: right; clear: right; }
        .ui-timepicker-rtl dl dd { margin: 0 45% 10px 10px; }
    </style>
</head>

<body>

<!-- breadcrumbs -->
<div class="w3layouts-breadcrumbs text-center">
    <div class="container">
        <span class="agile-breadcrumbs"><a href="/FindU/html/index.jsp"><i class="fa fa-home home_1"></i></a> / <span>拾物发布</span></span>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- Submit Ad -->
<div class="submit-ad main-grid-border">
    <div class="container">
        <h2 class="w3-head">拾物发布<span class="postmsg"></span></h2>
        <div class="post-ad-form">
            <form id="information" action="/good/fabu" method="post" enctype="multipart/form-data">

                <div class="clearfix"></div>
                <label>物品种类 <span>*</span></label>
                <select class="" name="typeName">
                    <option  value="银行卡">银行卡</option>
                    <option  value="钥匙">钥匙</option>
                    <option  value="饭卡">饭卡</option>
                    <option  value="雨伞">雨伞</option>
                    <option  value="钱包">钱包</option>
                    <option  value="书本">书本</option>
                    <option  value="眼镜">眼镜</option>
                    <option  value="书包">书包</option>
                    <option  value="身份证">身份证</option>
                    <option  value="生活用品">生活用品</option>
                </select>
                <div class="clearfix"></div>
                <label>发布人 <span>*</span></label>
                <input type="text" class="phone" name="goodName" placeholder="" required="" value="">
                <div class="clearfix"></div>
                <label>详情说明 <span>*</span></label>
                <textarea class="mess" name="goodInfor" placeholder="请尽量描述你所拾到物品的详细信息，帮助失主更好的找到它" required=""></textarea>
                <div class="clearfix"></div>

                <div class="personal-details">
                    <label>拾取时间 <span>*</span></label>
                    <input name="goodDate" type="date" class="text-box"   style="cursor:pointer;"
                           value=""/>
                    <div class="clearfix"></div>
                    <label>拾取地点 <span>*</span></label>
                    <input type="text" class="phone" name="goodLocal" placeholder=""  value="">
                    <div class="clearfix"></div>
                    <label>联系方式 <span>*</span></label>
                    <input type="text" class="email" name="goodTel" placeholder=""  value="">
                    <div class="clearfix"></div>

                    <div class="clearfix"></div>
                    <div class="upload-ad-photos">
                        <label>添加物品图片:</label>
                        <div class="photos-upload-view">
                            <div>
                                <input type="file" id="fileselect" name="goodImage" />

                            </div>

                        </div>

                        <div class="clearfix"></div>
                        <script src="../scripts/filedrag.js"></script>
                    </div>

                    <div class="clearfix"></div>
                    <input type="submit" value="发布">
                    <div class="clearfix"></div>
            </form>
        </div>
    </div>
</div>
<!-- // Submit Ad -->



<script type="text/javascript">
    $( "input[name='act_start_time'],input[name='act_stop_time']" ).datetimepicker();

    function showPreview(obj){
        if(obj.files&&obj.files[0]){
            var reader=new FileReader();
            reader.onload=function(evt){
                document.getElementById("previewImg").innerHTML="<img class='imgPreview' src='"+evt.target.result+"'/>";
            }
        }
        reader.readAsDataURL(obj.files[0]);
    }
</script>
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
