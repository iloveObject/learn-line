<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <title>成绩管理</title>
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
            <li><a href="#" class="active"><i class="fa fa-home fa-fw"></i>首页</a></li>
            <li><a href="/learn-line/information.jsp"><i class="fa fa-bar-chart fa-fw"></i>课程管理</a></li>
            <li><a href="/learn-line/download.jsp"><i class="fa fa-database fa-fw"></i>下载区</a></li>
            <li><a href="messageServelt?method=findAll" ><i class="fa fa-users fa-fw"></i>留言板</a></li>
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
                <li><a href="/learn-line/teacher-team.jsp">教学团队</a></li>
                <li><a href="studentServelt?method=findAll" >选课管理</a></li>
                <li><a href="#" class="active">成绩管理</a></li>
              </ul>  
            </nav> 
          </div>
        </div>



          <div class="templatemo-content-container">

              <!--Search&&add-->

              <div class="templatemo-content-widget white-bg" style="padding: 15px">
               <div class="row ">
               		<form action="scoreServelt" class="templatemo-login-form" method="post">
              			<input type="hidden" name="action" value="findByid"/>
                          <div  style="padding-top: 16px;margin-left:420px">
                          		<input type="text" name = "stuid" class="form-control" placeholder="请输入学号" style="width:180px;display: inline ">
                               <button type="submit" class="templatemo-blue-button">查询</button>
                               <button type="reset" class="templatemo-white-button" style="margin-left: 10px"><a href="/learn-line/scoreAdd.jsp">添加</a></button>
                          </div>
                         </form>
                      </div>
              </div>

	

          <div class="templatemo-content-widget no-padding">
            <div class="panel panel-default table-responsive">
            
              <table class="table table-striped table-bordered templatemo-user-table">
                <thead>
                  <tr>
                    <td style="text-align:center"><a href="" class="white-text templatemo-sort-by">学号</a></td>
                    <td style="text-align:center"><a href="" class="white-text templatemo-sort-by">姓名</a></td>
                    <td style="text-align:center"><a href="" class="white-text templatemo-sort-by">班级</a></td>
                    <td style="text-align:center"><a href="" class="white-text templatemo-sort-by">平时成绩</a></td>
                    <td style="text-align:center">期中成绩</td>
                    <td style="text-align:center">期末成绩</td>
                    <td style="text-align:center"><a href="" class="white-text templatemo-sort-by">修改</a></td>
                    <td style="text-align:center">删除</td>
                  </tr>
                </thead>
                <tbody>
                <% request.getAttribute("list"); %>
                 <c:forEach items="${list}" var="score">
               <tr>
                    
                    <td style="text-align:center">${score.stuid }</td>
                    <td style="text-align:center">${score.name } </td>
                    <td style="text-align:center">${score.classid }</td>
                    <td style="text-align:center">${score.normal_score }</td>
                    <td style="text-align:center">${score.middle_score }</td>
                    <td style="text-align:center">${score.end_score }</td>
                    <td style="text-align:center"><a href="scoreServelt?method=find&stuid=${score.stuid }"  class="templatemo-link">修改</a></td>
                    <td style="text-align:center"><a href="scoreServelt?method=delete&stuid=${score.stuid }" onclick="javascript:if(confirm('确定要删除吗？')){return true;}return false;" class="templatemo-link">删除</a></td>
                  </tr>
                  </c:forEach>
                </tbody>
              </table>  
              
            </div>                          
          </div>          
          <!-- Second row ends -->

          <div class="pagination-wrap">
            <ul class="pagination">
              <li><a href="#">1</a></li>
              <li><a href="#">2</a></li>
              <li class="active"><a href="#">3 <span class="sr-only">(current)</span></a></li>
              <li><a href="#">4</a></li>
              <li><a href="#">5</a></li>
              <li>
                <a href="#" aria-label="Next">
                  <span aria-hidden="true"><i class="fa fa-play"></i></span>
                </a>
              </li>
            </ul>
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
    <script type="text/javascript" src="js/templatemo-script.js"></script>      <!-- Templatemo Script -->
    <script>
      $(document).ready(function(){
        // Content widget with background image
        var imageUrl = $('img.content-bg-img').attr('src');
        $('.templatemo-content-img-bg').css('background-image', 'url(' + imageUrl + ')');
        $('img.content-bg-img').hide();        
      });
    </script>
  </body>
</html>