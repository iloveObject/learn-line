<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <title>你的成绩</title>
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
        <form class="templatemo-search-form" role="search">
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
            <li><a href="/learn-line/index.jsp" ><i class="fa fa-home fa-fw"></i>首页</a></li>
            <li><a href="/learn-line/information.jsp"><i class="fa fa-bar-chart fa-fw"></i>课程管理</a></li>
            <li><a href="/learn-line/download.jsp"><i class="fa fa-database fa-fw"></i>下载区</a></li>
            <li><a href="messageServelt?method=findAll"><i class="fa fa-users fa-fw"></i>留言板</a></li>
            <li><a href="#" class="active"><i class="fa fa-users fa-fw"></i>留言板</a></li>
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
                <li><a href="#" >成绩查看</a></li>
                
              </ul>  
            </nav> 
          </div>
        </div>
       <div class="templatemo-content-container">
          <div class="templatemo-content-widget white-bg">
            <h2 class="margin-bottom-10">你的成绩</h2>
            <p>&nbsp;</p>
              
              <div class="row form-group">
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label for="inputFirstName">学号：</label>
                    <input type="text" name="stuid" class="form-control" id="inputFirstName" readonly="readonly" value="12">                  
                </div>
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label for="inputLastName">姓名：</label>
                    <input type="text" name="name" class="form-control" id="inputLastName" value="张三" readonly="readonly">                  
                </div> 
              </div>
              <div class="row form-group">
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label for="inputUsername">班级：</label>
                    <input type="text" name="classid" class="form-control" id="inputUsername" value="计本1班" readonly="readonly">                  
                </div>
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label for="inputEmail">平时成绩：</label>
                    <input type="text" name="normal_score" class="form-control" id="inputEmail" value="78" readonly="readonly">                  
                </div> 
              </div>
               <div class="row form-group">
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label for="inputUsername">期中成绩：</label>
                    <input type="text" name="middle_score" class="form-control" id="inputUsername" value="87" readonly="readonly">                  
                </div>
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label for="inputEmail">期末成绩：</label>
                    <input type="text" name="end_score" class="form-control" id="inputEmail" value="85" readonly="readonly">                  
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
    <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>      <!-- jQuery -->
    <script type="text/javascript" src="js/jquery-migrate-1.2.1.min.js"></script> <!--  jQuery Migrate Plugin -->
    <script type="text/javascript" src="js/templatemo-script.js"></script>      <!-- Templatemo Script -->
  </body>
</html>