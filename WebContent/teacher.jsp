<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <title>Visual Admin Dashboard - Manage Users</title>
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
            <li><a href="/learn-line/index.jsp" class="active"><i class="fa fa-home fa-fw"></i>首页</a></li>
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
                <li><a href="/learn-line/teacher-team.jsp">教学团队</a></li>
                <li><a href="/learn-line/student.jsp" >学生入口</a></li>
                <li><a href="#" class="active">教师入口</a></li>
              </ul>  
            </nav> 
          </div>
        </div>
          <div class="templatemo-content-container">
              <!--Search&&add-->
              <div class="templatemo-content-widget white-bg" style="padding: 15px；background:">
              	<span style="width:200px;font-size:18px">选课管理</span>
              	<form action="" method="post">
	                <ul style="margin-left:450px">
	                        <li>
	                        	<input type="text" class="form-control" placeholder="请输入学号" style="width:180px;display:inline">
	                            <button type="submit" class="templatemo-blue-button">查询</button>
	                         </li> 
	                </ul>
                </form>
              </div>
          <div class="templatemo-content-widget no-padding">
            <div class="panel panel-default table-responsive">
              <table class="table table-striped table-bordered templatemo-user-table">
                <thead>
                  <tr>
                    <td style="text-align:center"><a href="" class="white-text templatemo-sort-by">编号 </a></td>
                    <td style="text-align:center"><a href="" class="white-text templatemo-sort-by">学号</a></td>
                    <td style="text-align:center"><a href="" class="white-text templatemo-sort-by">姓名</a></td>
                    <td style="text-align:center"><a href="" class="white-text templatemo-sort-by">班级</a></td>
                    <td style="text-align:center"><a href="" class="white-text templatemo-sort-by">时间</a></td>
                    <td style="text-align:center">电话</td>
                    <td style="text-align:center">状态</td>
                    <td style="text-align:center">备注</td>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td style="text-align:center">1.</td>
                    <td style="text-align:center">John</td>
                    <td style="text-align:center">Smith</td>
                    <td style="text-align:center">@jS</td>
                    <td style="text-align:center">js@company.com</td>
                    <td style="text-align:center"><a href="" class="templatemo-link">Action</a></td>
                    <td style="text-align:center"><a href="" class="templatemo-edit-btn">Edit</a></td>
                    <td style="text-align:center"><a href="" class="templatemo-link">Delete</a></td>
                  </tr>
                  <tr>
                    <td style="text-align:center">2.</td>
                    <td style="text-align:center">Bill</td>
                    <td style="text-align:center">Jones</td>
                    <td style="text-align:center">@bJ</td>
                    <td style="text-align:center">bj@company.com</td>
                    <td style="text-align:center"><a href="" class="templatemo-link">Action</a></td>
                    <td style="text-align:center"><a href="" class="templatemo-edit-btn">Edit</a></td>
                    <td style="text-align:center"><a href="" class="templatemo-link">Delete</a></td>
                  </tr>
                  <tr>
                    <td style="text-align:center">3.</td>
                    <td style="text-align:center">John</td>
                    <td style="text-align:center">Smith</td>
                    <td style="text-align:center">@jS</td>
                    <td style="text-align:center">js@company.com</td>
                    <td style="text-align:center"><a href="" class="templatemo-link">Action</a></td>
                    <td style="text-align:center"><a href="" class="templatemo-edit-btn">Edit</a></td>
                    <td style="text-align:center"><a href="" class="templatemo-link">Delete</a></td>
                  </tr>
                  <tr>
                    <td style="text-align:center">4.</td>
                    <td style="text-align:center">Bill</td>
                    <td style="text-align:center">Jones</td>
                    <td style="text-align:center">@bJ</td>
                    <td style="text-align:center">bj@company.com</td>
                    <td style="text-align:center"><a href="" class="templatemo-link">Action</a></td>
                    <td style="text-align:center"><a href="" class="templatemo-edit-btn">Edit</a></td>
                    <td style="text-align:center"><a href="" class="templatemo-link">Delete</a></td>
                  </tr>
                  <tr>
                    <td style="text-align:center">5.</td>
                    <td style="text-align:center">John</td>
                    <td style="text-align:center">Smith</td>
                    <td style="text-align:center">@jS</td>
                    <td style="text-align:center">js@company.com</td>
                    <td style="text-align:center"><a href="" class="templatemo-link">Action</a></td>
                    <td style="text-align:center"><a href="" class="templatemo-edit-btn">Edit</a></td>
                    <td style="text-align:center"><a href="" class="templatemo-link">Delete</a></td>
                  </tr>
                  <tr>
                    <td style="text-align:center">6.</td>
                    <td style="text-align:center">Bill</td>
                    <td style="text-align:center">Jones</td>
                    <td style="text-align:center">@bJ</td>
                    <td style="text-align:center">bj@company.com</td>
                    <td style="text-align:center"><a href="" class="templatemo-link">Action</a></td>
                    <td style="text-align:center"><a href="" class="templatemo-edit-btn">Edit</a></td>
                    <td style="text-align:center"><a href="" class="templatemo-link">Delete</a></td>
                  </tr>
                  <tr>
                    <td style="text-align:center">7.</td>
                    <td style="text-align:center">John</td>
                    <td style="text-align:center">Smith</td>
                    <td style="text-align:center">@jS</td>
                    <td style="text-align:center">js@company.com</td>
                    <td style="text-align:center"><a href="" class="templatemo-link">Action</a></td>
                    <td style="text-align:center"><a href="" class="templatemo-edit-btn">Edit</a></td>
                    <td style="text-align:center"><a href="" class="templatemo-link">Delete</a></td>
                  </tr>
                  <tr>
                    <td style="text-align:center">8.</td>
                    <td style="text-align:center">Bill</td>
                    <td style="text-align:center">Jones</td>
                    <td style="text-align:center">@bJ</td>
                    <td style="text-align:center">bj@company.com</td>
                    <td style="text-align:center"><a href="" class="templatemo-link">Action</a></td>
                    <td style="text-align:center"><a href="" class="templatemo-edit-btn">Edit</a></td>
                    <td style="text-align:center"><a href="" class="templatemo-link">Delete</a></td>
                  </tr>
                  <tr>
                    <td style="text-align:center">9.</td>
                    <td style="text-align:center">John</td>
                    <td style="text-align:center">Smith</td>
                    <td style="text-align:center">@jS</td>
                    <td style="text-align:center">js@company.com</td>
                    <td style="text-align:center"><a href="" class="templatemo-link">Action</a></td>
                    <td style="text-align:center"><a href="" class="templatemo-edit-btn">Edit</a></td>
                    <td style="text-align:center"><a href="" class="templatemo-link">Delete</a></td>
                  </tr>
                  <tr>
                    <td style="text-align:center">10.</td>
                    <td style="text-align:center">Bill</td>
                    <td style="text-align:center">Jones</td>
                    <td style="text-align:center">@bJ</td>
                    <td style="text-align:center">bj@company.com</td>
                    <td style="text-align:center"><a href="" class="templatemo-link">Action</a></td>
                    <td style="text-align:center"><a href="" class="templatemo-edit-btn">Edit</a></td>
                    <td style="text-align:center"><a href="" class="templatemo-link">Delete</a></td>
                  </tr>
                  
                             
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