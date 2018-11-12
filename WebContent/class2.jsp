<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <title>我的课程</title>
    <meta name="description" content="">
    <meta name="author" content="templatemo">
    
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/templatemo-style.css" rel="stylesheet">
  </head>
  <body>  
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
            <li><a href="#" class="active"><i class="fa fa-bar-chart fa-fw"></i>课程管理</a></li>
            <li><a href="/learn-line/download.jsp"><i class="fa fa-database fa-fw"></i>下载区</a></li>
            <li><a href="messageServelt?method=findAll"><i class="fa fa-users fa-fw"></i>留言板</a></li>
			 <c:if test="${role.equals('1')}" >
                	<li><a href="/learn-line/yourscore.jsp"><i class="fa fa-sliders fa-fw"></i>成绩查询</a></li>
            </c:if>
            <li><a href="/learn-line/login.jsp"><i class="fa fa-eject fa-fw"></i>退出</a></li>
          </ul>  
        </nav>
      </div>
      <div class="templatemo-content col-1 light-gray-bg">
        <div class="templatemo-top-nav-container">
          <div class="row">
            <nav class="templatemo-top-nav col-lg-12 col-md-12">
              <ul class="text-uppercase">
                <li><a href="/learn-line/information.jsp" >我的课程</a></li>
                <li><a href="/learn-line/classlist.jsp" class="active">课程目录</a></li>
                <li><a href="/learn-line/classt.jsp">课后习题</a></li>
              </ul>  
            </nav> 
          </div>
        </div>
        <div style="text-align:center;">
        <br/>
        <h2>1.1 项目与软件项目</h2>
        <div style="margin-top:30px">
  <video id="video1" width="420" style="margin-top:15px; width:800px">
    <source src="video/2.mp4" type="video/mp4" />
    Your browser does not support HTML5 video.
  </video>
  </div>
  <br />
  <div style="margin-top:40px">
  <button style="height:60px">上一节</button> 
  <button onclick="playPause()" style="margin-right:100px;margin-left:100px;height:60px">播放/暂停</button> 
  <button style="height:60px">下一节</button> 
   </div>
</div> 
<footer style="margin-top:250px;">
            <p style="text-align:center">Copyright &copy; 2015 北京邮电大学 
            | 地址  - 北京市西土城路10号  邮编：100876 </p>
          </footer>   
<script type="text/javascript">
var myVideo=document.getElementById("video1");

function playPause()
{ 
if (myVideo.paused) 
  myVideo.play(); 
else 
  myVideo.pause(); 
} 

</script> 
      </div>
    </div>

    <script src="js/jquery-1.11.2.min.js"></script>      <!-- jQuery -->
    <script src="js/jquery-migrate-1.2.1.min.js"></script> <!--  jQuery Migrate Plugin -->
    
    <script type="text/javascript" src="js/templatemo-script.js"></script>      <!-- Templatemo Script -->

  </body>
</html>