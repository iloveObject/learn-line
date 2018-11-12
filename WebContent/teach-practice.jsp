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
                <li><a href="#" class="active">教学实践</a></li>
                <li><a href="/learn-line/teacher-team.jsp">教学团队</a></li>
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
         
        <div class="templatemo-content-container">
          <div class="templatemo-flex-row flex-content-row">
            <div class="templatemo-content-widget blue-bg col-2">
              <i class="fa fa-times"></i>
              <div class="square"></div>
              <h2 class="templatemo-inline-block">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;教学实验</h2><hr>
              <p>项目投标书实验</p>
              <p>生存期模型</p> 
              <p>项目进度计划</p>
              <p>需求规格说明书</p>
             <p>质量计划</p>
             <p>成本估算</p>
            </div>
            
            <div class="templatemo-content-widget green-bg col-1 text-center">
              <i class="fa fa-times"></i>
              <h2 class="text-uppercase">优秀学生</h2>
              <h3 class="text-uppercase margin-bottom-30">三好学生合照</h3>
              <img src="images/bicycle.jpg" alt="Bicycle" class="img-circle img-thumbnail">
            </div>
            
            <div class="templatemo-content-widget green-bg col-1 text-center">
              <i class="fa fa-times"></i>
              <h2 class="text-uppercase">课堂活动</h2>
              <h3 class="text-uppercase margin-bottom-30">课堂活动照片</h3>            
               <img src="images/12.JPG" alt="Bicycle" class="img-circle img-thumbnail">                       
            </div>
          </div>    
          
          
          
     <div  style="margin-top: 50px;margin-left: 20px;">
          	<div class="listcontent">
<UL class="e2">

<script language="javascript" src="/system/resource/js/dynclicks.js"></script><div class="listcontent">
    <UL class="e2">
            
              <a href="info/1005/2759.htm" target="_blank" title="生存期模型" class="preview"><img src="images/13.jpg" width="150" height="100"></a>
 			<li id="lineu4_0" style="float:right;padding-right: 600px;">
        	[<a href="zdxk.htm" class="c118944_columnstyle">教学实验</a>]
        
            <a href="" class="c118944 title" target="_blank" title="生存期模型" style="color:#256EB1;">生存期模型</a><br />
           <span>1.描述了开发的主要阶段</span><br />
           <span>2.定义了每阶段的过程</span><br />
           <span>3.规范了每阶段的输入和输出</span><br />

             </li>
             <div style="text-align: right;">
            <SPAN class="info" ><SMALL >日期：</SMALL>17-05-25 15:22:00 </SPAN>
			<P class="intro"></P>
			</div>
			
			 <a href="info/1005/2759.htm" target="_blank" title="需求规格说明书" class="preview"><img src="images/14.jpg" width="150" height="100"></a>
 			<li id="lineu4_1" style="float:right;padding-right: 610px;">
        	[<a href="zdxk.htm" class="c118944_columnstyle">教学实验</a>]
        
            <a href="" class="c118944 title" target="_blank" title="需求规格说明书" style="color:#256EB1;">需求规格说明书</a><br />
           <span>业务需求</span><br />
           <span>用户需求</span><br />
           <span>功能需求</span><br />

             </li>
             <div style="text-align: right;">
            <SPAN class="info" ><SMALL >日期：</SMALL>17-05-25 15:22:00 </SPAN>
			<P class="intro"></P>
			</div>
			
			 <a href="info/1005/2759.htm" target="_blank" title="进度计划" class="preview"><img src="images/15.gif" width="150" height="100"></a>
 			<li id="lineu4_" style="float:right;padding-right: 650px;">
        	[<a href="zdxk.htm" class="c118944_columnstyle">教学实验</a>]
        
            <a href="" class="c118944 title" target="_blank" title="进度计划" style="color:#256EB1;">进度计划</a><br />
           <span>关于进度估算</span><br />
           <span>任务关联关系</span><br />
           <span>任务关系的依据</span><br />

             </li>
             <div style="text-align: right;">
            <SPAN class="info" ><SMALL >日期：</SMALL>17-05-25 15:22:00</SPAN>
			<P class="intro"></P>
			</div>
 
                        
       </UL>
       
       
       
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