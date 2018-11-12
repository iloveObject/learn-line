<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Visual Admin Dashboard - Preferences</title>
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
  <body>
    <!-- Left column -->
    <div class="templatemo-flex-row">
      <div class="templatemo-sidebar">
        <header class="templatemo-site-header">
          <div class="square"></div>
          <h1>&nbsp; &nbsp;Spm Admin</h1>
        </header>
        <div class="profile-photo-container">
          <img src="images/profile-photo.jpg" alt="Profile Photo" class="img-responsive">
          <div class="profile-photo-overlay"></div>
        </div>
        <!-- Search box -->
        <form class="templatemo-search-form">
          <div class="input-group">
              <button type="submit" class="fa fa-search"></button>
              <input type="text" class="form-control" placeholder="搜索" name="srch-term" id="srch-term">
          </div>
        </form>
        <div class="mobile-menu-icon">
            <i class="fa fa-bars"></i>
          </div>
        <nav class="templatemo-left-nav">
          <ul>
            <li><a href="/learn-line/index.jsp"><i class="fa fa-home fa-fw"></i>首页</a></li>
            <li><a href="/learn-line/information.jsp"><i class="fa fa-bar-chart fa-fw"></i>课程管理</a></li>
            <li><a href="/learn-line/download.jsp"><i class="fa fa-database fa-fw"></i>下载区</a></li>
            <li><a href="#" class="active"><i class="fa fa-users fa-fw"></i>留言板</a></li>
			 <c:if test="${role.equals('1')}" >
                	<li><a href="/learn-line/yourscore.jsp"><i class="fa fa-sliders fa-fw"></i>成绩查询</a></li>
            </c:if>
            <li><a href="/learn-line/login.jsp"><i class="fa fa-eject fa-fw"></i>退出</a></li>
          </ul>
        </nav>
      </div>
      <!-- Main content -->
      <div class="templatemo-content col-1 light-gray-bg">
        <div class="templatemo-top-nav-container">
          <div class="row">
            <nav class="templatemo-top-nav col-lg-12 col-md-12">
              <ul class="text-uppercase">
                <li><a href="" class="active">留言中心</a></li>
                <li><a href="">我的留言</a></li>
              </ul>
            </nav>
          </div>
        </div>
        <div class="templatemo-content-container">
          <div class="templatemo-content-widget white-bg">
            <div class="panel panel-default no-border">
              <div class="panel-heading border-radius-10">
                <h2>留下你的足迹。。。</h2>
              </div>
              <div class="panel-body">
                <div class="templatemo-flex-row flex-content-row margin-bottom-30">
                  <div class="col-1">
                    <div id="gauge_div" class="templatemo-chart">
                    	   <form action="messageServelt" class="templatemo-login-form" method="post">
				              <input type="hidden" name="action" value="add"/>
				              <div class="row form-group">
				                <div class="col-lg-6 col-md-6 form-group">                  
				                    <label for="inputUsername">姓名：</label>
				                    <input type="text" name="name" class="form-control" id="inputUsername" placeholder="Admin">                  
				                </div>
				                <div class="col-lg-6 col-md-6 form-group">                  
				                    <label for="inputEmail">邮箱：</label>
				                    <input type="email" name="mail" class="form-control" id="inputEmail" placeholder="admin@company.com">                  
				                </div> 
				              </div>
				              <div class="row form-group">
				                <div class="col-lg-12 form-group">                   
				                    <label class="control-label" for="inputNote">留言</label>
				                    <textarea class="form-control" name="content" id="inputNote" rows="7"></textarea>
				                </div>
				              </div>
				              <div class="form-group text-right">
				                <button type="submit" class="templatemo-blue-button">确定</button>
				                <button type="reset" class="templatemo-white-button">取消</button>
				              </div>                           
				            </form>
                    </div>
                  </div>              
                </div>     
              </div>
            </div> 
          	 <div class="panel panel-default no-border">
              <div class="panel-heading border-radius-10">
                <h2>看看他人的脚印。。。</h2>
              </div>
              <div class="panel-body">
                <div class="templatemo-flex-row flex-content-row margin-bottom-30">
                  <div class="col-1">
                    <div id="pinlun_div" class="templatemo-chart">
                    	<ul>
                    	<% request.getAttribute("list"); %>
                		<c:forEach items="${list}" var="message">
                            <li style="height:50px;margin:5px">${message.content }<span style="float:right;margin-right:40px">${message.name }</span></li>
                         </c:forEach>
                        </ul>
                    </div>
                  </div>              
                </div>     
              </div>
            </div>     
          </div>
         <footer >
            <p style="text-align:center">Copyright &copy; 2015 北京邮电大学 
            | 地址  - 北京市西土城路10号  邮编：100876 </p>
          </footer>  
        </div>
      </div>
    </div>

    <!-- JS -->
    <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>        <!-- jQuery -->
    <script type="text/javascript" src="js/bootstrap-filestyle.min.js"></script>  <!-- http://markusslima.github.io/bootstrap-filestyle/ -->
    <script type="text/javascript" src="js/templatemo-script.js"></script>        <!-- Templatemo Script -->
  </body>
</html>
