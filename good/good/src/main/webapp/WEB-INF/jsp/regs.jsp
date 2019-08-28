<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>注册-FindU失物招领平台</title>

	<link rel="shortcut icon" href="../images/findu.ico">
	<link rel="Bookmark" href="../images/findu.ico" />
	<link rel="stylesheet" href="../css/bootstrap.min.css">
	<!-- bootstrap-CSS -->
	<link rel="stylesheet" href="../css/bootstrap-select.css">
	<!-- bootstrap-select-CSS -->
	<link href="../css/style.css" rel="stylesheet" type="text/css"
		  media="all" />
	<!-- style.css -->
	<link rel="stylesheet" href="../css/font-awesome.min.css" />
	<!-- fontawesome-CSS -->
	<link rel="stylesheet" href="../css/menu_sideslide.css"
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
	<link href='../css/font1.css' rel='stylesheet'
		  type='text/css'>
	<link href='../css/font2.css' rel='stylesheet'
		  type='text/css'>
	<!--//fonts-->
	<!-- js -->
	<script type="text/javascript" src="../scripts/jquery.min.js"></script>
	<!-- js -->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="../scripts/bootstrap.js"></script>
	<script src="../scripts/bootstrap-select.js"></script>

	<!-- language-select -->
	<script type="text/javascript"
			src="../scripts/jquery.leanModal.min.js"></script>
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

	<!-- Navigation-JavaScript -->
	<script src="../scripts/classie.js"></script>
	<script src="../scripts/main.js"></script>
	<!-- //Navigation-JavaScript -->


	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="../scripts/move-top.js"></script>
	<script type="text/javascript" src="../scripts/easing.js"></script>

</head>

<body>


<!-- sign up form -->
<section>
	<div id="agileits-sign-in-page" class="sign-in-wrapper">
		<div class="agileinfo_signin">
			<h3>注册</h3>
			<form:form id="Regist" action="/user/doreg" method="post" modelAttribute="userVO">

                <span id="mesName"></span>
                <form:errors path="name"></form:errors><span>${MSG1}</span>
				<input type="text"  id="Name" name="name"
					   placeholder="用户名"  value="" onblur="validName(this)">

                <span id="mesEmail"></span>
				<form:errors path="email"></form:errors>
				<input type="email"  id="Email" name="email" placeholder="邮箱"
					   value="" onblur="validEmail(this)">

                <span id="mesTel"></span>
				<form:errors path="tel"></form:errors>
				<input type="tel"
										name="tel"  id="Tel" placeholder="手机号"
										value="" onblur="validTel(this)">

                <span id="mesPass"></span>
				<form:errors path="password"></form:errors>
				<input type="password"
														 name="password" placeholder="密码"
														 value="" onblur="validPass(this)">
                <span id="mesRepass"></span>
				<form:errors path="repassword"></form:errors><span>${MSG2}</span>
				<input
					type="password" name="repassword" placeholder="确认密码"
					value="" onblur="validRepass(this)">

				<br> <br>
				<input type="submit" value="注册账号">
			</form:form>
            <a href="/user/login"><input type="submit" value="返回登录"> </a>
		</div>
	</div>
</section>
<!-- //sign up form -->

<script>

    function validRepass(th) {
        var error = document.getElementById("mesRepass");
        if(th.value==""){
            error.innerHTML = "密码不能为空";
            error.style.color = "red";
        }else if(th.value.length<8){
            error.innerHTML = "密码不能小于8位";
            error.style.color ="red";
        }else{
            error.innerHTML = "";
            error.style.color = "";
        }
    }

    function validPass(th) {
        var error = document.getElementById("mesPass");
        if(th.value==""){
            error.innerHTML = "密码不能为空";
            error.style.color = "red";
        }else if(th.value.length<8){
            error.innerHTML = "密码不能小于8位";
            error.style.color ="red";
        }else{
            error.innerHTML = "";
            error.style.color = "";
        }
    }

    function validName(th) {
        var error = document.getElementById("mesName");
        if(th.value==""){
            error.innerHTML = "用户名不能为空";
            error.style.color = "red";
        }else if(th.value.length<3){
            error.innerHTML = "用户名不能小于3位";
            error.style.color ="red";
        }else{
            error.innerHTML = "";
            error.style.color = "";
        }


        $.ajax({
            method:"post",
            //发送的地址
            url:"/user/valid",
            contentType:"application/json",
            //得到的json值
            success:function (data) {
                if(!data.result){
                    alert("用户名重复");
                }

            },
            //发给服务器的json值
            data:'{"name":"'+ th.value+'"}',
            dataType:"json"
        })

    }

    function validEmail(th){
        var patte = /^([0-9A-Za-z\-_\.]+)@([0-9a-z]+\.[a-z]{2,3}(\.[a-z]{2})?)$/g;
        var error = document.getElementById("mesEmail");

        if(th.value==""){
            error.innerHTML = "邮箱不能为空";
            error.style.color = "red";
        }else if(!patte.test(th.value)){
            error.innerHTML = "邮箱格式不正确"
            error.style.color = "red";
        }else{
            error.innerHTML = ""
            error.style.color = "";
        }
    }

    function validTel(th) {
        var error = document.getElementById("mesTel");
        if(th.value==""){
            error.innerHTML = "用户名不能为空";
            error.style.color = "red";
        }else if(th.value.length<11||th.value.length>11){
            error.innerHTML = "手机号必须11位";
            error.style.color ="red";
        }else{
            error.innerHTML = "";
            error.style.color = "";
        }
    }

</script>


</body>
</html>