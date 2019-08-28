<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/15
  Time: 18:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>物品申领-FindU失物招领平台</title>
    <link rel="shortcut icon" href="../images/findu.ico">
    <link rel="Bookmark" href="../images/findu.ico" />
    <link rel="stylesheet" href="../css/bootstrap.min.css"><!-- bootstrap-CSS -->
    <link rel="stylesheet" href="../css/bootstrap-select.css"><!-- bootstrap-select-CSS -->
    <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" /><!-- style.css -->
    <link rel="stylesheet" href="../css/font-awesome.min.css" /><!-- fontawesome-CSS -->
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
</head>

<body>

<!-- breadcrumbs -->
<div class="w3layouts-breadcrumbs text-center">
    <div class="container">
        <span class="agile-breadcrumbs"><a href="/FindU/html/index.jsp"><i class="fa fa-home home_1"></i></a> / <span>物品申领</span></span>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- Submit Ad -->
<div class="submit-ad main-grid-border">
    <div class="container">
        <h2 class="w3-head">物品申领<span class="postmsg"></span></h2>
        <div class="post-ad-form">
            <form action="/apply/addApply" method="post" enctype="multipart/form-data">
                <div class="clearfix"></div>


                <label>申请人 <span>*</span></label>
                <input type="text" class="email" name="applyName"  value="">
                </select>
                <label>申请理由 <span>*</span></label>
                <textarea class="mess" name="applyInfor" placeholder="请尽量描述你丢失该物品的详细信息，让拾到者确信是属于你的失物" required=""></textarea>
                <div class="clearfix"></div>

                <div class="personal-details">

                    <label>联系方式 <span>*</span></label>
                    <input type="text" class="email" name="applyTel" placeholder="" required="">

                    <div class="upload-ad-photos">
                        <label>上传该物品的旧照片:</label>
                        <div class="photos-upload-view">
                            <div>
                                <input type="file" id="fileselect" name="applyImage" multiple="multiple" />

                            </div>

                        </div>
                        <div class="clearfix"></div>
                        <script src="../scripts/filedrag.js"></script>
                    </div>

                    <div class="clearfix"></div>
                    <input type="submit" value="提交申请">

                    <div class="clearfix"></div>
                </div>
            </form>
        </div>
    </div>
</div>
</div>
<!-- // Submit Ad -->



<script type="text/javascript">
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
