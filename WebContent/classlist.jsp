<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <title>课程目录
    </title>
    <meta name="description" content="">
    <meta name="author" content="templatemo">
    <link href="./css/cour_list.css" type="text/css" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="./css/weebox.css">
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
                <li><a href="#" class="active">课程目录</a></li>
                <li><a href="/learn-line/classt.jsp">课后习题</a></li>
              </ul>  
            </nav> 
          </div>
        </div>
          <div class="main"> 
   <div class="left" style="width:634px"> 
    <div class="content1 roundcorner"> 
     <div class="wwc" style="padding-bottom:0px;"></div> 
     <div id="msg_notice" style="display: none;padding-bottom:0px;"> 
     </div> 
     <div class="timeline"> 
      <h2><span class="numbers"><b>目录</b></span> <a href="" title="创业、创业精神与人生发展" style="cursor:default"></a></h2> 
     <div class="units"> 
      <h2><span class="numbers"><b>1</b></span> <a href="" title="创业者与创业团队" style="cursor:default"> 软件项目管理概述</a> </h2> 
      <div class="leveltwo"> 
       <h3 class="clearfix"><span class="icon">1.1 <em class="openlock"></em> </span> <span class="articlename"> <a href="/learn-line/class2.jsp" title="创业者的特征与必备的识人能力"> 项目与软件项目 </a> </span> </h3>
      </div> 
      <div class="leveltwo"> 
       <h3 class="clearfix"><span class="icon">1.2 <em class="openlock"></em> </span> <span class="articlename"> <a href="" title="创业者的用人之道与组建团队的策略"> 项目管理 </a> </span> </h3> 
      </div> 
      <div class="leveltwo"> 
       <h3 class="clearfix"><span class="icon">1.3 <em class="openlock"></em> </span> <span class="articlename"> <a href="" title="优秀团队的特征与领导者的角色演绎"> 项目管理知识体系 </a> </span> </h3> 
      </div> 
     </div> 
     <div class="units"> 
      <h2><span class="numbers"><b>2</b></span> <a href="" title="创业机会与创业风险" style="cursor:default"> 项目确立 </a> </h2> 
      <div class="leveltwo"> 
       <h3 class="clearfix">
       <span class="icon">2.1 <em class="openlock"></em> </span> <span class="articlename"> <a href="" title="如何识别创业机会"> 项目评估 </a> </span> </h3> 
      </div> 
      <div class="leveltwo"> 
       <h3 class="clearfix">
       <span class="icon">2.2 <em class="openlock"></em> </span> <span class="articlename"> <a href="" title="如何选择创业项目、识别创业风险"> 项目立项 </a> </span> </h3> 
      </div> 
      <div class="leveltwo"> 
       <h3 class="clearfix">
       <span class="icon">2.3 <em class="openlock"></em> </span> <span class="articlename"> <a href="" title="如何规避风险与商业模式设计"> 项目招标书 </a> </span> </h3> 
      </div> 
     </div> 
     <div class="units"> 
      <h2><span class="numbers"><b>3</b></span> <a href="" title="创业资源" style="cursor:default"> 生存期模型 </a> </h2> 
      <div class="leveltwo"> 
       <h3 class="clearfix">
       <span class="icon">3.1 <em class="openlock"></em> </span> <span class="articlename"> <a href="" title="获取创业资源——融资的五种途径"> 瀑布模型 </a> </span> </h3>
      </div> 
      <div class="leveltwo"> 
       <h3 class="clearfix">
       <span class="icon">3.2 <em class="openlock"></em> </span> <span class="articlename"> <a href="" title="融资规划与企业经营方案"> V模型 </a> </span> </h3>
      </div> 
      <div class="leveltwo"> 
       <h3 class="clearfix">
       <span class="icon">3.3 <em class="openlock"></em> </span> <span class="articlename"> <a href="" title="初创企业的策略与整合资源的方法"> 快速原型模型 </a> </span> </h3> 
      </div> 
     </div> 
     <div class="units"> 
      <h2><span class="numbers"><b>4</b></span> <a href="" title="创业计划" style="cursor:default"> 需求管理 </a> </h2> 
      <div class="leveltwo"> 
       <h3 class="clearfix">
       <span class="icon">4.1 <em class="openlock"></em> </span> <span class="articlename"> <a href="" title="创业计划书的结构、模板"> 软件需求定义 </a> </span> </h3>
      </div> 
      <div class="leveltwo"> 
       <h3 class="clearfix">
       <span class="icon">4.2 <em class="openlock"></em> </span> <span class="articlename"> <a href="" title="创业计划书需要回答的十大问题与写作方法"> 需求管理过程 </a> </span> </h3>
      </div>
     </div>   
        </div>
      </div>
       <footer >
            <p style="text-align:center">Copyright &copy; 2015 北京邮电大学 
            | 地址  - 北京市西土城路10号  邮编：100876 </p>
          </footer>   
    </div>

    <script src="js/jquery-1.11.2.min.js"></script>      <!-- jQuery -->
    <script src="js/jquery-migrate-1.2.1.min.js"></script> <!--  jQuery Migrate Plugin -->
    
    <script type="text/javascript" src="js/templatemo-script.js"></script>      <!-- Templatemo Script -->

  </body>
</html>