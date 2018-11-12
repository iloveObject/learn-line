<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">  
	    <title>SPM Admin - Login</title>
        <meta name="description" content="">
        <meta name="author" content="templatemo">
        
	    
	    <link href="css/font-awesome.min.css" rel="stylesheet">
	    <link href="css/bootstrap.min.css" rel="stylesheet">
	    <link href="css/templatemo-style.css" rel="stylesheet">
	    
	    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	    <!--[if lt IE 9]>
	      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	    <![endif]-->
	</head>
	<body class="light-gray-bg">
		<div class="templatemo-content-widget templatemo-login-widget white-bg">
			<header class="text-center">
	          <div class="square"></div>
	          <h1>SPM Admin</h1>
	        </header>
	        <form action="userServelt" method="post" class="templatemo-login-form">
	        <input name="method" value="findAll" type="hidden">
	        	<div class="form-group">
	        		<div class="input-group">
		        		<div class="input-group-addon"><i class="fa fa-user fa-fw"></i></div>	        		
		              	<input type="text" name = "user" class="form-control" placeholder="xxxxxxx@163.com">           
		          	</div>	
	        	</div>
	        	<div class="form-group">
	        		<div class="input-group">
		        		<div class="input-group-addon"><i class="fa fa-key fa-fw"></i></div>	        		
		              	<input type="password" name = "password" class="form-control" placeholder="******">           
		          	</div>	
	        	</div>	          	
	          	<div class="form-group">
	          		 <div class="margin-right-15 templatemo-inline-block">
                      <input type="radio" name="role" id="r4" value="0">
                      <label for="r4" class="font-weight-400"><span></span>教师</label>
                    </div>
                    <div class="margin-right-15 templatemo-inline-block">
                      <input type="radio" name="role" id="r5" value="1" checked>
                      <label for="r5" class="font-weight-400"><span></span>学生</label>
                    </div>
				</div>
				<div class="form-group">
					<button type="submit" class="templatemo-blue-button width-100">登录</button>
					
				</div>
	        </form>
		</div>
		<div class="templatemo-content-widget templatemo-login-widget templatemo-register-widget white-bg">
			<p>还没有一个账号? <strong><a href="#" class="blue-text">点此注册！</a></strong></p>
		</div>
	</body>
</html>