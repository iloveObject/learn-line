<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <title>SPM在线学习网站</title>
    <meta name="description" content="">
    <meta name="author" content="templatemo">
    
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/templatemo-style.css" rel="stylesheet">
    <link href="css/ldy.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
        .item img{
            height:400px;
            width:1250px;
        }
        .zxxx{
            width:235px;
            margin-bottom:50px;
            padding-top:80px;
            padding-left:80px;
        }
        .zxxx h1{
            width:300px;
            height:50px;

            line-height:50px;
            font-size:30px;
            color:black;

        }
        .zxxx ul{
            text-indent:5px;
        }
        .right{
            width:700px;
            margin-left:0px;
            margin-top:0px;
            padding-left:80px;

        }

        .right h1 span{
            font-size:18px;
            color:#d7d6d6;
            font-family:'Gill Sans MT';

        }
        .list{

            width:700px;
            margin-top:0px;

        }
        .list li{
            line-height:50px;
            border-bottom:1px dashed #CCC;
            text-indent:1em;

        }
        .list li a{
            font-size:15px;
            color:#666;
        }
        .list li a:hover{
            text-decoration:underline;
            color:#1182c9;
        }
        .list  li span{
            float:right;
            color:#999;
            font-size:12px;
            margin-right:5px;
            margin-top:0px;
        }
        .bread{
            border-bottom:1px solid #eee;
            padding:0px 0px 10px 0px;
            font-size:14px;
            font-weight:normal;
            color:#999;
        }
        .pagination{
            float:right;


        }
        .bread a{
            color:#999;
            font-size:14px;
        }
        .bread a:hover{
            text-decoration:underline;
        }
        .now{text-decoration:underline;}
        .linkpic {
            clear:both;
            padding:5px 10px;
            width:580px
        }
        .conlink{
            padding:0
        }
        .linkpic li{
            height:25px;
            padding-top:5px
        }
        .linkpic li a{
            font-size:15px;
            color:#333;
        }
        .linkpic li a:hover{
            text-decoration:underline;
            color:#1182c9;
        }
        .linkpic li span{
            float:right;
            color:#9A9898;
            margin-top:-20px
        }
    </style>

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
            <li><a href="#" class="active"><i class="fa fa-database fa-fw"></i>下载区</a></li>
            <li><a href="messageServelt?method=findAll"><i class="fa fa-users fa-fw"></i>留言板</a></li>
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
                <li><a href="" class="active">下载专区</a></li>
                <li><a href="">下载进度</a></li>
                <li><a href="">我的下载</a></li>
              </ul>  
            </nav> 
          </div>
        </div>
        <div class="templatemo-content-container">
          <div class="templatemo-flex-row flex-content-row">
            <div class="templatemo-content-widget white-bg col-2">
        <div class="mybody">
    <h4 style="margin-left: 100px;margin-top: 20px;font-weight: 600">下载区</h4>
    <div class="right">
        <ul class="list">
            <li><a href="#">软件项目管理概述</a><span>下载</span></li>
            <li><a href="#">项目确立</a><span>下载</span></li>
            <li><a href="#">生存期模型</a><span>下载</span></li>
            <li><a href="#">软件项目范围计划</a><span>下载</span></li>
            <li><a href="#">软件项目成本计划</a><span>下载</span></li>
            <li><a href="#">软件项目进度计划</a><span>下载</span></li>
            <li><a href="#">软件项目质量计划</a><span>下载</span></li>
            <li><a href="#">软件配置管理计划</a><span>下载</span></li>
            <li><a href="#">软件项目风险计划</a><span>下载</span></li>
            <li><a href="#">软件项目合同计划</a><span>下载</span></li>
            <li><a href="#">项目集成计划</a><span>下载</span></li>
            <li><a href="#">项目集成计划执行控制</a><span>下载</span></li>
			<li><a href="#">项目核心计划执行控制</a><span>下载</span></li>
			<li><a href="#">项目辅助计划执行控制</a><span>下载</span></li>
        </ul>

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
    <script src="js/jquery-1.11.2.min.js"></script>      <!-- jQuery -->
    <script src="js/jquery-migrate-1.2.1.min.js"></script> <!--  jQuery Migrate Plugin -->
    
    <script type="text/javascript" src="js/templatemo-script.js"></script>      <!-- Templatemo Script -->

  </body>
</html>