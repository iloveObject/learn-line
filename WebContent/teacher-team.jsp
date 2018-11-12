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
    <link href="css/jstd.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
  </head>
  <body>
    <style type="text/css">
      a,img{border:0;vertical-align:middle;}
      /*公告*/
      .notice{width:387px;margin-left:20px;margin-top:20px;height:26px;overflow:hidden;background:url(images/bg.gif) no-repeat;}
      .noticTipTxt{color:#ff7300;height:22px;line-height:22px;overflow:hidden;margin:0 0 0 40px;}
      .noticTipTxt li{height:22px;line-height:22px;}
      .noticTipTxt a{color:#0075E8;font-size:12px;text-decoration:none;}
      .noticTipTxt a:hover{color:#ff7300;text-decoration:underline;}
    </style>
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
            <li><a href="#" class="active"><i class="fa fa-home fa-fw"></i>首页</a></li>
            <li><a href="/learn-line/information.jsp"><i class="fa fa-bar-chart fa-fw"></i>课程管理</a></li>
            <li><a href="/learn-line/download.jsp"><i class="fa fa-database fa-fw"></i>下载区</a></li>
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
                <li><a href="/learn-line/index.jsp" >课程介绍</a></li>
                <li><a href="/learn-line/teach-practice.jsp">教学实践</a></li>
                <li><a href="#" class="active">教学团队</a></li>
                <c:set var="role"  value="${role}"/>
                <c:if test="${role.equals('1')}" >
                	<li><a href="/learn-line/student.jsp">学生选课</a></li>
                </c:if>
                <c:if test="${role.equals('0')}" >
                	<li><a href="studentServelt?method=findAll">选课管理</a></li>
                	<li><a href="scoreServelt?method=findAll">成绩管理</a></li>
                </c:if>
              </ul>  
            </nav> 
          </div>
        </div>
      <!--jstd-->

       <div class="bt">
          教师团队
        </div>
        <div class="notice">
          <ul id="jsfoot01" class="noticTipTxt">
            <li><a href="" target="_blank">科任教师 12月01日<img src="images/hot001.gif" width="22" height="11" /></a></li>
            <li><a href="" target="_blank">教师风采 12月02日</a></li>
          </ul>
        </div>

        <div class="notice">
          <ul id="jsfoot02" class="noticTipTxt">
            <li><a href="" target="_blank">科任教师 12月01日<img src="images/hot001.gif" width="22" height="11" /></a></li>
            <li><a href="" target="_blank">教师风采 12月02日</a></li>
          </ul>
        </div>

        <div class="notice">
          <ul id="jsfoot03" class="noticTipTxt">
            <li><a href="" target="_blank">科任教师 12月01日<img src="images/hot001.gif" width="22" height="11" /></a></li>
            <li><a href="" target="_blank">教师风采 12月02日</a></li>
          </ul>
        </div>

        <div class="notice">
          <ul id="jsfoot04" class="noticTipTxt">
            <li><a href="" target="_blank">科任教师 12月01日<img src="images/hot001.gif" width="22" height="11" /></a></li>
            <li><a href="" target="_blank">教师风采 12月02日</a></li>
          </ul>
        </div>

        <div class="notice">
          <ul id="jsfoot05" class="noticTipTxt">
            <li><a href="" target="_blank">科任教师 12月01日<img src="images/hot001.gif" width="22" height="11" /></a></li>
            <li><a href="" target="_blank">教师风采 12月02日</a></li>
          </ul>
        </div>

        <div class="slip" id="hover">
          <div>
            <p class="jieshao">
            	<img src="images/1.jpg" title="<h3>刘娇莲</h3>" />刘娇莲，1973年9月出生，本科学历，中学一级教师，1991年毕业于湖南第一师范学校。<br>&nbsp;<br clear=left>
            </p>
          </div>

          <div>
            <p class="jieshao">
            	<img src="images/2.jpg" title="<h3>路雯</h3>" />路雯，参加省市、全国教育教学各项比赛多次荣获“教学竞赛一等奖”。<br>&nbsp;<br clear=left>
            </p>                    
          </div>

          <div>
            <p class="jieshao">
            	<img src="images/3.jpg" title="<h3>赵仁红</h3>" />赵仁红：小学语文高级教师，本科学历。全国、省、市级教育教学论文比赛屡获一等奖。<br>&nbsp;<br clear=left>
            </p>                    
          </div>

          <div>
            <p class="jieshao">
            	<img src="images/4.jpg" title="<h3>欧艳红</h3>" />欧艳红，共产党员，本科学历，小学高级教师。<br>&nbsp;<br clear=left>
            </p>                     
          </div>
        </div>

        

        </div>
      </div>
    </div>
    
    <!-- JS -->
    <script src="js/jquery-1.11.2.min.js"></script>      <!-- jQuery -->
    <script src="js/jquery-migrate-1.2.1.min.js"></script> <!--  jQuery Migrate Plugin -->    
    <script type="text/javascript" src="js/templatemo-script.js"></script>      <!-- Templatemo Script -->
    <script type="text/javascript" src="js/scrolltext.js"></script>
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="js/jquery.sliphover.min.js"></script>
    <script type="text/javascript">
      if(document.getElementById("jsfoot01")){
        var scrollup = new ScrollText("jsfoot01");
        scrollup.LineHeight = 22;        //单排文字滚动的高度
        scrollup.Amount = 1;            //注意:子模块(LineHeight)一定要能整除Amount.
        scrollup.Delay = 20;           //延时
        scrollup.Start();             //文字自动滚动
        scrollup.Direction = "up"; //文字向上滚动
      }
      if(document.getElementById("jsfoot02")){
        var scrollup = new ScrollText("jsfoot02");
        scrollup.LineHeight = 22;        //单排文字滚动的高度
        scrollup.Amount = 1;            //注意:子模块(LineHeight)一定要能整除Amount.
        scrollup.Delay = 20;           //延时
        scrollup.Start();             //文字自动滚动
        scrollup.Direction = "up"; //文字向上滚动
      }
      if(document.getElementById("jsfoot03")){
        var scrollup = new ScrollText("jsfoot03");
        scrollup.LineHeight = 22;        //单排文字滚动的高度
        scrollup.Amount = 1;            //注意:子模块(LineHeight)一定要能整除Amount.
        scrollup.Delay = 20;           //延时
        scrollup.Start();             //文字自动滚动
        scrollup.Direction = "up"; //文字向上滚动
      }
      if(document.getElementById("jsfoot04")){
        var scrollup = new ScrollText("jsfoot04");
        scrollup.LineHeight = 22;        //单排文字滚动的高度
        scrollup.Amount = 1;            //注意:子模块(LineHeight)一定要能整除Amount.
        scrollup.Delay = 20;           //延时
        scrollup.Start();             //文字自动滚动
        scrollup.Direction = "up"; //文字向上滚动
      }
      if(document.getElementById("jsfoot05")){
        var scrollup = new ScrollText("jsfoot05");
        scrollup.LineHeight = 22;        //单排文字滚动的高度
        scrollup.Amount = 1;            //注意:子模块(LineHeight)一定要能整除Amount.
        scrollup.Delay = 20;           //延时
        scrollup.Start();             //文字自动滚动
        scrollup.Direction = "up"; //文字向上滚动
      }

      $(document).ready(function(e) {
          $('#hover').sliphover({
          backgroundColor:'rgba(208,0,14,0.7)'
        });
      });

      var flag=1;
        $('#rightArrow').click(function(){
          if(flag==1){
            $("#floatDivBoxs").animate({right: '-175px'},300);
            $(this).animate({right: '-5px'},300);
            $(this).css('background-position','-50px 0');
            flag=0;
          }else{
            $("#floatDivBoxs").animate({right: '0'},300);
            $(this).animate({right: '170px'},300);
            $(this).css('background-position','0px 0');
            flag=1;
          }
        });
    </script> 
  </body>
</html>