<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/WEB-INF/pages/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>后台登录页面</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script type="text/javascript">var basePath="${basePath}";</script>
<link rel="stylesheet" href="${basePath}/resources/system/login/bootstrap.min.css" />
<link rel="stylesheet" href="${basePath}/resources/system/login/css/camera.css" />
<link rel="stylesheet" href="${basePath}/resources/system/login/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="${basePath}/resources/system/login/matrix-login.css" />
<link rel="stylesheet" href="${basePath}/resources/system/login/font-awesome.css" />
<script type="text/javascript" src="${basePath}/resources/system/login/js/jquery-1.5.1.min.js"></script>
</head>
<body>
	<div
		style="width: 100%; text-align: center; margin: 0 auto; position: absolute;">
		<div id="loginbox">
			<form action="" method="post" name="loginForm" id="loginForm">
				<div class="control-group normal_text">
					<h3>
						<img src="${basePath}/resources/system/login/logo.png" alt="Logo" />
					</h3>
				</div>
				<div class="control-group">
					<div class="controls">
						<div class="main_input_box">
							<span class="add-on bg_lg"><i><img height="37"
									src="${basePath}/resources/system/login/user.png" /></i></span><input type="text"
								name="loginname" id="loginname" value="1103206765@qq.com" placeholder="请输入用户名" />
						</div>
					</div>
				</div>
				<div class="control-group">
					<div class="controls">
						<div class="main_input_box">
							<span class="add-on bg_ly"><i><img height="37"
									src="${basePath}/resources/system/login/suo.png" /></i></span><input type="password"
								name="password" id="password" placeholder="请输入密码" value="123456" />
						</div>
					</div>
				</div>
				<div style="float: right; padding-right: 10%;">
					<div style="float: left; margin-top: 3px; margin-right: 2px;">
						<font color="white">记住密码</font>
					</div>
					<div style="float: left;">
						<input name="form-field-checkbox" id="saveid" type="checkbox"
							onclick="savePaw();" style="padding-top: 0px;" />
					</div>
				</div>
				<div class="form-actions">
					<div style="width: 86%; padding-left: 8%;">

						<%-- <div style="float: left;">
							<i><img src="${basePath}/resources/system/login/yan.png" /></i>
						</div>
						<div style="float: left;" class="codediv">
							<input type="text" name="code" id="code" class="login_code"
								style="height: 26px; padding-top: 0px;" />
						</div> --%>
						<%-- <div style="float: left;">
							<i><img style="height: 32px;" id="codeImg" alt="点击更换"
								title="点击更换" src="${basePath}/captcha/code" onclick="changeCode()" /></i>
						</div> --%>

						<span class="pull-right" style="padding-right: 3%;"><a
							href="javascript:quxiao();" class="btn btn-success">取消</a></span> <span
							class="pull-right"><a onclick="severCheck();"
							class="flip-link btn btn-info" id="to-recover">登录</a></span>
					</div>
				</div>
			</form>

			<div class="controls">
				<div class="main_input_box">
					<font color="white"><span id="nameerr">Copyright © Cool
							2017</span></font>
				</div>
			</div>
		</div>
	</div>
	<div id="templatemo_banner_slide" class="container_wapper">
		<div class="camera_wrap camera_emboss" id="camera_slide">
			<div data-src="${basePath}/resources/system/login/images/banner_slide_01.jpg"></div>
			<div data-src="${basePath}/resources/system/login/images/banner_slide_02.jpg"></div>
			<div data-src="${basePath}/resources/system/login/images/banner_slide_03.jpg"></div>
		</div>
	</div>

	<script type="text/javascript">
		//服务器校验
		function severCheck() {
			if (check()) {
				var loginname = $("#loginname").val();
				var password = $("#password").val();
				var code = $("#code").val();
				var params = {"email":loginname,"password":password,"code":code, "model":1};
				$.ajax({
					type : "post",
					url : basePath + "/login/logined",
					data : params,
					success : function(data) {
						if(data == "water"){
							window.location.href = basePath + "/system/toWater";
							saveCookie();
						}else if(data=="success"){
							window.location.href = basePath + "/system/index";
							saveCookie();
						}else if(data=="fail"){
							$("#loginname").tips({
								side : 1,
								msg : "用户名或密码有误",
								bg : '#FF5080',
								time : 15
							});
							$("#loginname").focus();
						}else if(data=="password_null"){
							$("#password").tips({
								side : 1,
								msg : "用户名或密码有误",
								bg : '#FF5080',
								time : 15
							});
							$("#password").focus();
						}else if(data=="code_null"){
							$("#code").tips({
								side : 1,
								msg : "验证码输入有误",
								bg : '#FF5080',
								time : 15
							});
							$("#code").focus();
						}else if(data == "noexist"){
							$("#loginname").tips({
								side : 1,
								msg : "用户不存在",
								bg : '#FF5080',
								time : 15
							});
						}else{
							$("#loginname").tips({
								side : 1,
								msg : "用户名或密码有误",
								bg : '#FF5080',
								time : 15
							});
						}
					}
				});
			}
		}
		
		//更换验证码
		function changeCode() {
			$("#codeImg").attr("src", basePath+"/captcha/code?abc="+Math.random());
		}
		
		//客户端校验
		function check() {

			if ($("#loginname").val() == "") {

				$("#loginname").tips({
					side : 2,
					msg : '用户名不得为空',
					bg : '#AE81FF',
					time : 3
				});

				$("#loginname").focus();
				return false;
			} else {
				$("#loginname").val(jQuery.trim($('#loginname').val()));
			}

			if ($("#password").val() == "") {

				$("#password").tips({
					side : 2,
					msg : '密码不得为空',
					bg : '#AE81FF',
					time : 3
				});

				$("#password").focus();
				return false;
			}
			if ($("#code").val() == "") {
				$("#code").tips({
					side : 1,
					msg : '验证码不得为空',
					bg : '#AE81FF',
					time : 3
				});
				$("#code").focus();
				return false;
			}
			$("#loginbox").tips({
				side : 1,
				msg : '正在登录 , 请稍后 ...',
				bg : '#68B500',
				time : 10
			});
			return true;
		}
		
		//调用cookie保存用户名密码
		function savePaw() {
			if (!$("#saveid").attr("checked")) {
				$.cookie('loginname', '', {
					expires : -1
				});
				$.cookie('password', '', {
					expires : -1
				});
				$("#loginname").val('');
				$("#password").val('');
			}
		}
		
		//保存cookie
		function saveCookie() {
			if ($("#saveid").attr("checked")) {
				$.cookie('loginname', $("#loginname").val(), {
					expires : 7
				});
				$.cookie('password', $("#password").val(), {
					expires : 7
				});
			}
		}
		
		//点击取消按钮事件
		function quxiao() {
			$("#loginname").val('');
			$("#password").val('');
		}
		
		//调用cookie事件
		jQuery(function() {
			var loginname = $.cookie('loginname');
			var password = $.cookie('password');
			if (typeof (loginname) != "undefined"
					&& typeof (password) != "undefined") {
				$("#loginname").val(loginname);
				$("#password").val(password);
				$("#saveid").attr("checked", true);
				$("#code").focus();
			}
		});
		
		//键盘登录效果
		$(document).keydown(function(e){
			if(e.keyCode==13){
				$("#to-recover").trigger("click");
			}
		});
	</script>

	<script src="${basePath}/resources/system/login/js/jquery-1.7.2.js"></script>
	<script src="${basePath}/resources/system/login/js/jquery.easing.1.3.js"></script>
	<script src="${basePath}/resources/system/login/js/jquery.mobile.customized.min.js"></script>
	<script src="${basePath}/resources/system/login/js/camera.min.js"></script>
	<!-- 引入背景动画切换特效页面 -->
	<script src="${basePath}/resources/system/login/js/templatemo_script.js"></script>
	<script type="text/javascript" src="${basePath}/resources/system/login/js/jquery.tips.js"></script>
	<script type="text/javascript" src="${basePath}/resources/system/login/js/jquery.cookie.js"></script>
</body>
</html>