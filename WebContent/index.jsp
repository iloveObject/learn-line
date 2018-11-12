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
    <link href="css/picarc.css" rel="stylesheet">
            
  
  
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
                <li><a href="#" class="active">课程介绍</a></li>
                <li><a href="/learn-line/teach-practice.jsp">教学实践</a></li>
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
        
        <div class="templatemo-content-container" >
          <div class="templatemo-flex-row flex-content-row">
            <div class="templatemo-content-widget white-bg col-2">
              <i class="fa fa-times"></i>
              <div class="square"></div>
              <h2 class="templatemo-inline-block">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;网站简介</h2><hr>
              
       	<div id="frame" >  
       	 		<a id="a1" class="num">5</a>  
        		<a id="a2" class="num">4</a>  
        		<a id="a3" class="num">3</a>  
        		<a id="a4" class="num">2</a>  
       			<a id="a5" class="num">1</a>  
        	<div id="photos" class="play">  
             	<img src="images/sunset-big.jpg" > 
             	<img src="images/profile-photo.jpg" >              
             	<img src="images/bicycle.jpg" >  
             	<img src="images/person.jpg" > 
             	<img src="images/cute.png" > 
             	
              		<ul id="dis">  
                		<li>愿景</li>  
                		<li>总结</li>  
               			<li>实践</li>  
               			<li>计划</li>  
               			<li>目标</li>  
             		 </ul>  
        	</div> 
        	
        	
              		
        	
        
		</div> 
		
		 
		 <div id="srch-term" style="font-size: 14px;text-align: left;margin-top: 230px;">
              		<p>本网站 主要服务于软件项目管理相关的课程在线学习，简称SPM,致力于软件项目管理的交流与发展，欢迎大家随时登录学习交流。</p>
              		
             		
              		
             
         </div> 
              		
             
            
        </div>
            
            <div class="templatemo-content-widget white-bg col-1 text-center">
            	<!--<div class="square"></div>-->
            	 <h2 class="templatemo-inline-block" style="text-align: center;">课程目录</h2><hr>
                <div id="srch-term" style="font-size: 18px;text-align: left">
              		<p>1.需求规格说明书</p>
              		<p>2.项目投标书</p>
              		<p>3.生存期模型</p>
              		<p>4.项目配置计划</p>
              		<p>5.项目成本计划</p>
             		<p>6.项目风险计划</p>
             		<p>7.项目进度计划</p>
             		
              		<p style="text-align: right;color: deepskyblue;">+更多</p>
             
              	</div> 
              
            </div>
            
            
            <div class="templatemo-content-widget white-bg col-1">
              <i class="fa fa-times"></i>
             
              <h2 class="text-uppercase">课程访问量</h2>
             
              <h3 class="text-uppercase" style="font-size: 14px;"></h3><hr>
              <h3 class="text-uppercase" style="font-size: 14px">项目投标书</h3>
              <div class="progress progress-striped active">
                <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 36%;">36%</div>
              </div>
               <h3 class="text-uppercase" style="font-size: 14px">项目配置计划</h3>
              <div class="progress progress-striped active">
                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 24%;">22%</div>
              </div>
               <h3 class="text-uppercase" style="font-size: 14px">项目风险计划</h3>
              <div class="progress progress-striped active">
                <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 17%;">18%</div>
              </div> 
               <h3 class="text-uppercase" style="font-size: 14px">项目成本估计</h3>
              <div class="progress progress-striped active">
                <div class="progress-bar progress-bar-striped" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 14%;">14%</div>
              </div>
               <h3 class="text-uppercase" style="font-size: 14px">其他课程</h3>
               <div class="progress progress-striped active">
                <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 10%;">10%</div>
              </div>
            </div>
          </div>
          
          
          
          <div class="templatemo-flex-row flex-content-row">
            <div class="col-1">              
              <div class="templatemo-content-widget orange-bg">
                <i class="fa fa-times"></i>                
                <div class="media">
                  <div class="media-left">
                    <a href="#">
                      <img class="media-object img-circle" src="images/zj.png" alt="Sunset">
                    </a>
                   
                   
                  </div>
                  	
                   <div class="media-body" style="text-align: center;">
                   <h2 class="media-heading text-uppercase">专业讲解</h2>

                    <div style="font-size: 15px;margin-top: 57px;">
                    <p>1.如何做一份高质量投标文件</p>  
                    <p>2.项目风险计划需注意的问题</p> 
                    <p>3.项目进度计划四步解决方案</p> 
                    <p style="text-align: right;">+更多</p>
             
                    </div>
                  </div>
                       
                </div>                
              </div>
              
              
              
              <div class="templatemo-content-widget white-bg">
                <i class="fa fa-times"></i>
                <div class="media">
                  <div class="media-left">
                    <a href="#">
                      <img class="media-object img-circle" src="images/xy.png" alt="Sunset">
                    </a>
              
                  </div>
                  <div class="media-body" style="text-align: center;">
                    <h2 class="media-heading text-uppercase">学员展示</h2>
                    <div style="font-size: 15px;margin-top: 57px;">
                    <p>1.时尚家居项目投标书案例</p>  
                    <p>2.网上超市生存期模型案例</p> 
                    <p>3.乐易购项目风险计划案例</p> 
                    <p style="text-align: right;color: deepskyblue;">+更多</p>
             
                    </div>
                  </div>
                  
                </div>                
              </div>            
            </div>
            
               
             
            
            
            
            <div class="col-1">
              <div class="panel panel-default templatemo-content-widget white-bg no-padding templatemo-overflow-hidden">
                <i class="fa fa-times"></i>
                <div class="panel-heading templatemo-position-relative"><h2 class="text-uppercase">优秀学员信息</h2></div>
                <div class="table-responsive">
                  <table class="table table-striped table-bordered">
                    <thead>
                      <tr>
                        <td>No.</td>
                        <td>姓名</td>
                        <td>年龄</td>
                        <td>所学课程</td>
                        <td>学习时长</td>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>1.</td>
                        <td>刘云天</td>
                        <td>21</td>
                        <td>项目投标书</td>
                        <td>4300小时</td>
                      </tr>
                      <tr>
                        <td>2.</td>
                        <td>关诗雯</td>
                        <td>23</td>
                        <td>项目配置计划</td>
                        <td>3920小时</td>
                      </tr>
                      <tr>
                        <td>3.</td>
                        <td>赵文卿</td>
                        <td>20</td>
                        <td>项目成本计划</td>
                        <td>3000小时</td>
                      </tr>
                      <tr>
                        <td>4.</td>
                        <td>诸葛杰</td>
                        <td>19</td>
                        <td>项目风险计划</td>
                        <td>2680小时</td>
                      </tr>
                      <tr>
                        <td>5.</td>
                        <td>赵晓亮</td>
                        <td>17</td>
                        <td>项目配置计划</td>
                        <td>2000小时</td>
                      </tr>
                      <tr>
                        <td>6.</td>
                        <td>马云鹏</td>
                        <td>22</td>
                        <td>项目进度计划</td>
                        <td>1800小时</td>
                      </tr>
                      <tr>
                        <td>7.</td>
                        <td>徐宏伟</td>
                        <td>21</td>
                        <td>项目风险计划</td>
                        <td>1600小时</td>
                      </tr>
                      <tr>
                        <td>8.</td>
                        <td>黄晓玥</td>
                        <td>23</td>
                        <td>项目投标书</td>
                        <td>1400小时</td>
                      </tr>
                       <tr>
                        <td>9.</td>
                        <td>孙晓婕</td>
                        <td>19</td>
                        <td>项目成本计划</td>
                        <td>1300小时</td>
                      </tr>
                      
                      
                     
                       <tr>
                       
                        <td style="color: deepskyblue;">+更多</td>
                        
                      </tr>                
                    </tbody>
                  </table>    
                </div>                          
              </div>
            </div>           
          </div> 
          
          <footer >
            <p style="text-align:center">Copyright &copy; 2017 河北民族师范学院 
            | 地址  - 河北省承德市双桥区河北民族师范学院  邮编：067000 </p>
          </footer>         
        </div>
      </div>
    </div>
    
        <!-- Templatemo Script -->

  </body>
</html>