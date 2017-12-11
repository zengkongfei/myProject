<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"  %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>隆浩人力资源管理系统</title>
    <link rel="stylesheet" href="admin/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="admin/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="admin/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="admin/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="admin/plugins/iCheck/square/blue.css">
  <link rel="stylesheet" href="admin/lh/login.css" type="text/css">
<style type="text/css">
 .code_pic{
                       display: block;
					    width: 70%;
					    height: 25px;
					    background-color: #e7e4ed;
					    color: #FFF;
					    position: absolute;
					    top: 5px;
					    left: 20%;
					    border-radius: 5px;
					    text-align: center;
        }
         .errorTips{
            width:70%;
            color:red;
            font-size: 14px;
            margin:0 auto;
            height: 20px;
            line-height:20px;
        }
</style>
</head>
<body class="hold-transition login-page s-skin-container" onload="changeImg()">

<div class="login-box">
  <div class="login-logo">
    <a href="#"><b></b>L O N G    H A O</a>
  </div>
  
  <!-- /.login-logo -->
  <div class="login-box-body">
   
	
    <form method="post" name="loginForm" id="loginForm"
				action="">
      <div class="form-group has-feedback">
        <input name="j_username" value="" id="j_username" type="text" class="form-control" placeholder="用户名">
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input name="j_password" id="j_password" type="password" class="form-control" placeholder="密码">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">
        <div class="form-group has-feedback">
       
			<div class="col-xs-5">
				<input type="text" class="form-control" name="code"  placeholder="验证码"
					id="codeInput"  />
			</div>
			<div class="col-xs-3">
			<span id="code" class="code_pic" title="看不清，换一张"></span>
			
			</div>
		
			<div class="col-xs-4"  style="margin-top:8px">
       <!--    <button type="submit" class="btn btn-primary btn-block btn-flat">登录</button> -->
       <a href="#" onclick="forgetPassword();">忘记密码？</a>
        </div>
        </div>
      </div>
    </form>

    <div class="social-auth-links text-center">
      
      <button type="submit" class="btn btn-primary btn-block btn-flat" onclick="return check()">登录</button>
    </div>  
    <p class="errorTips" id="errorTips"></p> 
	
  </div>

  
</div>
</body>
<script type="text/javascript">
    // 声明一个变量用于存储生成的验证码
    document.getElementById('code').onclick = changeImg;
    function changeImg(){
        // 验证码组成库
        var arrays=new Array(
            '1','2','3','4','5','6','7','8','9','0',
            'a','b','c','d','e','f','g','h','i','j',
            'k','l','m','n','o','p','q','r','s','t',
            'u','v','w','x','y','z',
            'A','B','C','D','E','F','G','H','I','J',
            'K','L','M','N','O','P','Q','R','S','T',
            'U','V','W','X','Y','Z'
        );
        // 重新初始化验证码
        code ='';
        // 随机从数组中获取四个元素组成验证码
        for(var i = 0; i<4; i++){
            // 随机获取一个数组的下标
            var r = parseInt(Math.random()*arrays.length);
            code += arrays[r];
        }
        // 验证码写入span区域
        document.getElementById('code').innerHTML = code;

    }

    // 验证验证码
    function check(){
        var error;
        // 获取用户输入的验证码
        var codeInput = document.getElementById('codeInput').value;
        if(codeInput.toLowerCase() == code.toLowerCase()){
            return true;
        }else{
            error = '验证码错误，重新输入';
            document.getElementById('errorTips').innerHTML = error;
            return false;
        }
    }
</script>
</html>