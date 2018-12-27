<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录页面</title>
<link rel="stylesheet" href="css/index.css" type="text/css" media="all">
</head>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $("#reg_form").submit(function(){
        	var id=$("#id").val();
            if(id.length==0){
                $("#idError").html("账号不能为空");
                return false;
            }
            var name=$("#name").val();
            if(name.length==0){
                $("#nameError").html("用户名不能为空");
                return false;
            }
            //密码进行验证不能为空
            var password=$("#password").val();
            if(password.length==0){
                $("#passwordError").html("密码不能为空");
                return false;
            }
            //确认密码进行验证
            var relpassword=$("#relpassword").val();
            if(relpassword.length==0){
                $("#relpasswordError").html("确认密码不能为空");
                return false;
            }    
            if(password!=relpassword){
                $("#relpasswordError").html("确认密码输入不正确，请重新输入");
                return false;
            }
        });
    });
</script>
<body>
    <div class="container w3layouts agileits">
    <h1>JXNU CS-STI Platform</h1>
		<div class="login w3layouts agileits">
			<h2>Sign In</h2>
			<form action="LoginCheck" method="post" id="login_form">
				<input type="text" Name="userid" placeholder="User ID" required="">
				<input type="password" Name="password" placeholder="Password" required="">
				<ul class="tick w3layouts agileits">
					<li>
						<input type="checkbox" id="brand1" value="">
						<label for="brand1"><span></span>Remember me</label>
					</li>
				</ul>
			<div class="send-button w3layouts agileits">
				<input type="submit" value="Sign In">
			</div>
			</form>
			<a href="#">Forgot Password?</a>
			<div class="social-icons w3layouts agileits">
				<p>- Or Sign In With -</p>
				<ul>
					<li><a href="#"><span class="icons w3layouts agileits"></span><span class="text w3layouts agileits">Facebook</span></a></li>
					<li class="twt w3ls"><a href="#"><span class="icons w3layouts"></span><span class="text w3layouts agileits">Twitter</span></a></li>
					<li class="ggp aits"><a href="#"><span class="icons agileits"></span><span class="text w3layouts agileits">Google+</span></a></li>
					<div class="clear"> </div>
				</ul>
			</div>
			<div class="clear"></div>
		</div>
		<div class="register w3layouts agileits">
			<h2>Sign Up</h2>
			<form action="RegisterCheck" method="post" id="reg_form">
			    <input type="text" name="id" id="id" placeholder="User ID"/>
                <div id="idError" style="display:inline;color:red;"></div>
				<input type="text" name="name" placeholder="Name" required="">
				<input type="text" name="email" placeholder="Email" required="">
				<input type="password" name="password" placeholder="Password" required="">
				<div id="passwordError" style="display:inline;color:red;"></div>
				<input type="password" name="relpassword" id="relpassword" placeholder="Confirm Password" required="">
				<div id="relpasswordError" style="display:inline;color:red;"></div>
				<div class="send-button w3layouts agileits">
						<input type="submit" value="Sign Up">
				</div>
			</form>
			<p>By creating an account, you agree to our <a class="underline w3layouts agileits" href="#">Terms</a></p>
			<div class="clear"></div>
		</div>
		<div class="clear"></div>
	</div>
	<div class="footer w3layouts agileits">
		<p> &copy; 2018 Science and Technology Innovation Platform for JXNU Computer Science. <br>All Rights Reserved | Designed by Lionky</p>
	</div>
</body>
</html>