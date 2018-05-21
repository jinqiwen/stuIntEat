<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<!--
		Charisma v1.0.0

		Copyright 2012 Muhammad Usman
		Licensed under the Apache License v2.0
		http://www.apache.org/licenses/LICENSE-2.0

		http://usman.it
		http://twitter.com/halalit_usman
	-->
	<meta charset="utf-8">
	<title>SL会员商城</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
	<meta name="author" content="Muhammad Usman">

	<style type="text/css">
	  body {
		padding-bottom: 40px;
	  }
	  .sidebar-nav {
		padding: 9px 0;
	  }
	  .navbar .nav li a{
	    border:0px;
	}
	.custom-setting{}
	.clear{clear: both;}
	div .modal-body label {
		color:black;
	}
	</style>
	<!-- start-->
	<link href="${pageContext.request.contextPath}/statics/css2/animate.min.css" rel="stylesheet">
	 <link href="${pageContext.request.contextPath}/statics/css2/bootstrap.min.css" rel="stylesheet"> 
	<link href="${pageContext.request.contextPath}/statics/css2/calendar.css" rel='stylesheet'>
	<link href="${pageContext.request.contextPath}/statics/css2/file-manager.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/statics/css2/font-awesome.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/statics/css2/form.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/statics/css2/generics.css" rel='stylesheet'>
	<link href="${pageContext.request.contextPath}/statics/css2/icons.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/statics/css2/lightbox.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/statics/css2/media-player.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/statics/css2/style.css" rel='stylesheet'>
	

	<!-- 华丽丽滴分割线 -->
	<!-- add by bdqn_hl 2014-2-28 start-->
	<link href='${pageContext.request.contextPath}/statics/localcss/userlist.css' rel='stylesheet'>
	<link href='${pageContext.request.contextPath}/statics/localcss/rolelist.css' rel='stylesheet'>
	<link href='${pageContext.request.contextPath}/statics/localcss/authoritymanage.css' rel='stylesheet'>
	<link href='${pageContext.request.contextPath}/statics/localcss/dicmanage.css' rel='stylesheet'>
	<link href='${pageContext.request.contextPath}/statics/localcss/affiche.css' rel='stylesheet'>
	<link href='${pageContext.request.contextPath}/statics/localcss/information.css' rel='stylesheet'>
	<link href='${pageContext.request.contextPath}/statics/localcss/addgoodspack.css' rel='stylesheet'>
	<link href='${pageContext.request.contextPath}/statics/localcss/mymessage.css' rel='stylesheet'>
	<link href='${pageContext.request.contextPath}/statics/localcss/messagelist.css' rel='stylesheet'>
	
	<!-- <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"> -->
	<!-- add by bdqn_hl 2014-2-28 end-->
	
	<!-- 华丽丽滴分割线  -->
	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- The fav icon -->
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/statics/img/favicon.ico">
	<script>var tt = '${mList}';</script>
	
	<script>
	 $("#settings1").click(function (){
	   $(".modal fade in").css{display:block;};
	    
	 });
	</script>
	<style type="text/css">
	.modal-content{
	display: none;
	}
	
	#settings1{
	position: fixed;
    right: 0;
    color: #000;
    background: rgba(255, 255, 255, 0.88);
    padding: 7px 8px;
    top: 120px;
    z-index: 1000;
    cursor: pointer;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.22);
    font-family: open-sans-regular;
    border-radius: 5px 0px 0px 5px !important;
    line-height: 20px;
    width: 34px;
    white-space: nowrap;
	}
    #settings {display:none;}
	</style>
	
</head>
<body id="skin-blur-violate">
        <header id="header" class="media">
            <a href="" id="menu-toggle"></a> 
            <a class="logo pull-left" href="index.html">SUPER ADMIN 1.0</a>
            
            <div class="media-body">
                <div class="media" id="top-menu">
                    <div class="pull-left tm-icon">
                        <a data-drawer="messages" class="drawer-toggle" href="">
                            <i class="sa-top-message"></i>
                            <i class="n-count animated">5</i>
                            <span>Messages</span>
                        </a>
                    </div>
                    <div class="pull-left tm-icon">
                        <a data-drawer="notifications" class="drawer-toggle" href="">
                            <i class="sa-top-updates"></i>
                            <i class="n-count animated">9</i>
                            <span>Updates</span>
                        </a>
                    </div>
                    
                    <div id="time" class="pull-right">
                        <span id="hours"></span>
                        :
                        <span id="min"></span>
                        :
                        <span id="sec"></span>
                    </div>

                    <div class="media-body">
                       <!--  <input type="text" class="main-search"> -->
                    </div>
                </div>
            </div>
        </header>
         <div class="clearfix"></div>
        
        <section id="main" class="p-relative" role="main">
	<a id="settings1" href="#changeSkin1" data-toggle="modal">
                         </i> Change Skin</a>
	<div class="modal fade in" id="changeSkin1" tabindex="-1" role="dialog"
		aria-hidden="false" style="display: none;">
		<div class="modal-dialog modal-lg">
			<div class="modal-content" style="display: block;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title">Change Template Skin</h4>
				</div>
				<div class="modal-body">
					<div class="row template-skins">
						<a data-skin="skin-blur-violate" class="col-sm-2 col-xs-4" href=""><img
							src="${pageContext.request.contextPath}/statics/img/skin-violate.jpg" alt="">
						</a><a data-skin="skin-blur-lights" class="col-sm-2 col-xs-4" href=""><img
							src="${pageContext.request.contextPath}/statics/img/skin-lights.jpg" alt="">
						</a><a data-skin="skin-blur-city" class="col-sm-2 col-xs-4" href=""><img
							src="${pageContext.request.contextPath}/statics/img/skin-city.jpg" alt="">
						</a><a data-skin="skin-blur-greenish" class="col-sm-2 col-xs-4"
							href=""><img src="${pageContext.request.contextPath}/statics/img/skin-greenish.jpg" alt="">
						</a><a data-skin="skin-blur-night" class="col-sm-2 col-xs-4" href=""><img
							src="${pageContext.request.contextPath}/statics/img/skin-night.jpg" alt="">
						</a><a data-skin="skin-blur-blue" class="col-sm-2 col-xs-4" href=""><img
							src="${pageContext.request.contextPath}/statics/img/skin-blue.jpg" alt="">
						</a><a data-skin="skin-blur-sunny" class="col-sm-2 col-xs-4" href=""><img
							src="${pageContext.request.contextPath}/statics/img/skin-sunny.jpg" alt="">
						</a><a data-skin="skin-cloth" class="col-sm-2 col-xs-4" href=""><img
							src="${pageContext.request.contextPath}/statics/img/skin-cloth.jpg" alt="">
						</a><a data-skin="skin-tectile" class="col-sm-2 col-xs-4" href=""><img
							src="${pageContext.request.contextPath}/statics/img/skin-tectile.jpg" alt="">
						</a><a data-skin="skin-blur-chrome" class="col-sm-2 col-xs-4" href=""><img
							src="${pageContext.request.contextPath}/statics/img/skin-chrome.jpg" alt="">
						</a><a data-skin="skin-blur-ocean" class="col-sm-2 col-xs-4" href=""><img
							src="${pageContext.request.contextPath}/statics/img/skin-ocean.jpg" alt="">
						</a><a data-skin="skin-blur-sunset" class="col-sm-2 col-xs-4" href=""><img
							src="${pageContext.request.contextPath}/statics/img/skin-sunset.jpg" alt="">
						</a><a data-skin="skin-blur-yellow" class="col-sm-2 col-xs-4" href=""><img
							src="${pageContext.request.contextPath}/statics/img/skin-yellow.jpg" alt="">
						</a><a data-skin="skin-blur-kiwi" class="col-sm-2 col-xs-4" href=""><img
							src="${pageContext.request.contextPath}/statics/img/skin-kiwi.jpg" alt="">
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
            <!-- Sidebar -->
         <aside id="sidebar">
                <!-- Sidbar Widgets -->
                <div class="side-widgets overflow">
                    <!-- Profile Menu -->
                    <div class="text-center s-widget m-b-25 dropdown" id="profile-menu">
                        <a href="" data-toggle="dropdown">
                            <img class="profile-pic animated" src="${pageContext.request.contextPath}/statics/img/admin1.jpg" alt="">
                        </a>
                        <ul class="dropdown-menu profile-menu">
                            <li><a href="">My Profile</a> <i class="icon left">&#61903;</i><i class="icon right">&#61815;</i></li>
                            <li><a href="">Messages</a> <i class="icon left">&#61903;</i><i class="icon right">&#61815;</i></li>
                            <li><a href="">Settings</a> <i class="icon left">&#61903;</i><i class="icon right">&#61815;</i></li>
                            <li><a href="">Sign Out</a> <i class="icon left">&#61903;</i><i class="icon right">&#61815;</i></li>
                        </ul>
                        <h4 class="m-0">Malinda Hollaway</h4>
                        @malinda-h
                    </div>
                    
                <!-- Calendar -->
                    <div class="s-widget m-b-25">
                        <div id="sidebar-calendar"></div>
                    </div>
                    
                    <!-- Feeds -->
                    <div class="s-widget m-b-25">
                        <h2 class="tile-title">
                           News Feeds
                        </h2>
                        
                        <div class="s-widget-body">
                            <div id="news-feed"></div>
                        </div>
                    </div>
                    
                    <!-- Projects -->
                    <div class="s-widget m-b-25">
                        <h2 class="tile-title">
                            Projects on going
                        </h2>
                        
                        <div class="s-widget-body">
                            <div class="side-border">
                                <small>Joomla Website</small>
                                <div class="progress progress-small">
                                     <a href="#" data-toggle="tooltip" title="" class="progress-bar tooltips progress-bar-danger" style="width: 60%;" data-original-title="60%">
                                          <span class="sr-only">60% Complete</span>
                                     </a>
                                </div>
                            </div>
                            <div class="side-border">
                                <small>Opencart E-Commerce Website</small>
                                <div class="progress progress-small">
                                     <a href="#" data-toggle="tooltip" title="" class="tooltips progress-bar progress-bar-info" style="width: 43%;" data-original-title="43%">
                                          <span class="sr-only">43% Complete</span>
                                     </a>
                                </div>
                            </div>
                            <div class="side-border">
                                <small>Social Media API</small>
                                <div class="progress progress-small">
                                     <a href="#" data-toggle="tooltip" title="" class="tooltips progress-bar progress-bar-warning" style="width: 81%;" data-original-title="81%">
                                          <span class="sr-only">81% Complete</span>
                                     </a>
                                </div>
                            </div>
                            <div class="side-border">
                                <small>VB.Net Software Package</small>
                                <div class="progress progress-small">
                                     <a href="#" data-toggle="tooltip" title="" class="tooltips progress-bar progress-bar-success" style="width: 10%;" data-original-title="10%">
                                          <span class="sr-only">10% Complete</span>
                                     </a>
                                </div>
                            </div>
                            <div class="side-border">
                                <small>Chrome Extension</small>
                                <div class="progress progress-small">
                                     <a href="#" data-toggle="tooltip" title="" class="tooltips progress-bar progress-bar-success" style="width: 95%;" data-original-title="95%">
                                          <span class="sr-only">95% Complete</span>
                                     </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <ul class="list-unstyled side-menu" id="menus" style="width: 45px;height: 100%;left:0;position: absolute;background:rgba(0,0,0,0.5);">
               <%--   <c:if test="${mList != null}">
				<c:forEach items="${mList}" var="mList">
                <li><a href="${mList.mainMenu.funcUrl }"  style="cursor:pointer;"><span class="menu-item">${ mList.mainMenu.functionName}</span></a></li>
                </c:forEach> --%><!-- class="+pic+' -->
               <%--  </c:if> --%>
                </ul>
                </aside>
             
            <!-- Content -->
            <section id="content" class="container">
            
                <!-- Messages Drawer -->
                <div id="messages" class="tile drawer animated">
                    <div class="listview narrow">
                        <div class="media">
                            <a href="">Send a New Message</a>
                            <span class="drawer-close">&times;</span>
                            
                        </div>
                        <div class="overflow" style="height: 254px">
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="${pageContext.request.contextPath}/statics/img/profile-pics/1.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">Nadin Jackson - 2 Hours ago</small><br>
                                    <a class="t-overflow" href="">Mauris consectetur urna nec tempor adipiscing. Proin sit amet nisi ligula. Sed eu adipiscing lectus</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="${pageContext.request.contextPath}/statics/img/profile-pics/2.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">David Villa - 5 Hours ago</small><br>
                                    <a class="t-overflow" href="">Suspendisse in purus ut nibh placerat Cras pulvinar euismod nunc quis gravida. Suspendisse pharetra</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="${pageContext.request.contextPath}/statics/img/profile-pics/3.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">Harris worgon - On 15/12/2013</small><br>
                                    <a class="t-overflow" href="">Maecenas venenatis enim condimentum ultrices fringilla. Nulla eget libero rhoncus, bibendum diam eleifend, vulputate mi. Fusce non nibh pulvinar, ornare turpis id</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="${pageContext.request.contextPath}/statics/img/profile-pics/4.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">Mitch Bradberry - On 14/12/2013</small><br>
                                    <a class="t-overflow" href="">Phasellus interdum felis enim, eu bibendum ipsum tristique vitae. Phasellus feugiat massa orci, sed viverra felis aliquet quis. Curabitur vel blandit odio. Vestibulum sagittis quis sem sit amet tristique.</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="${pageContext.request.contextPath}/statics/img/profile-pics/1.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">Nadin Jackson - On 15/12/2013</small><br>
                                    <a class="t-overflow" href="">Ipsum wintoo consectetur urna nec tempor adipiscing. Proin sit amet nisi ligula. Sed eu adipiscing lectus</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="${pageContext.request.contextPath}/statics/img/profile-pics/2.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">David Villa - On 16/12/2013</small><br>
                                    <a class="t-overflow" href="">Suspendisse in purus ut nibh placerat Cras pulvinar euismod nunc quis gravida. Suspendisse pharetra</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="${pageContext.request.contextPath}/statics/img/profile-pics/3.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">Harris worgon - On 17/12/2013</small><br>
                                    <a class="t-overflow" href="">Maecenas venenatis enim condimentum ultrices fringilla. Nulla eget libero rhoncus, bibendum diam eleifend, vulputate mi. Fusce non nibh pulvinar, ornare turpis id</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="${pageContext.request.contextPath}/statics/img/profile-pics/4.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">Mitch Bradberry - On 18/12/2013</small><br>
                                    <a class="t-overflow" href="">Phasellus interdum felis enim, eu bibendum ipsum tristique vitae. Phasellus feugiat massa orci, sed viverra felis aliquet quis. Curabitur vel blandit odio. Vestibulum sagittis quis sem sit amet tristique.</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="${pageContext.request.contextPath}/statics/img/profile-pics/5.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">Wendy Mitchell - On 19/12/2013</small><br>
                                    <a class="t-overflow" href="">Integer a eros dapibus, vehicula quam accumsan, tincidunt purus</a>
                                </div>
                            </div>
                        </div>
                        <div class="media text-center whiter l-100">
                            <a href=""><small>VIEW ALL</small></a>
                        </div>
                    </div>
                </div>
                    

                    <div id="time" class="pull-right">
                        <span id="hours"></span>
                        :
                        <span id="min"></span>
                        :
                        <span id="sec"></span>
                    </div>

                    <div class="media-body">
                       <!--  <input type="text" class="main-search"> -->
                    </div>
             
        
          <!-- Notification Drawer -->
                <div id="notifications" class="tile drawer animated">
                    <div class="listview narrow">
                        <div class="media">
                            <a href="">Notification Settings</a>
                            <span class="drawer-close">&times;</span>
                        </div>
                        <div class="overflow" style="height: 254px">
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="${pageContext.request.contextPath}/statics/img/profile-pics/1.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">Nadin Jackson - 2 Hours ago</small><br>
                                    <a class="t-overflow" href="">Mauris consectetur urna nec tempor adipiscing. Proin sit amet nisi ligula. Sed eu adipiscing lectus</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="${pageContext.request.contextPath}/statics/img/profile-pics/2.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">David Villa - 5 Hours ago</small><br>
                                    <a class="t-overflow" href="">Suspendisse in purus ut nibh placerat Cras pulvinar euismod nunc quis gravida. Suspendisse pharetra</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="${pageContext.request.contextPath}/statics/img/profile-pics/3.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">Harris worgon - On 15/12/2013</small><br>
                                    <a class="t-overflow" href="">Maecenas venenatis enim condimentum ultrices fringilla. Nulla eget libero rhoncus, bibendum diam eleifend, vulputate mi. Fusce non nibh pulvinar, ornare turpis id</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="${pageContext.request.contextPath}/statics/img/profile-pics/4.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">Mitch Bradberry - On 14/12/2013</small><br>
                                    <a class="t-overflow" href="">Phasellus interdum felis enim, eu bibendum ipsum tristique vitae. Phasellus feugiat massa orci, sed viverra felis aliquet quis. Curabitur vel blandit odio. Vestibulum sagittis quis sem sit amet tristique.</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="${pageContext.request.contextPath}/statics/img/profile-pics/1.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">Nadin Jackson - On 15/12/2013</small><br>
                                    <a class="t-overflow" href="">Ipsum wintoo consectetur urna nec tempor adipiscing. Proin sit amet nisi ligula. Sed eu adipiscing lectus</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="${pageContext.request.contextPath}/statics/img/profile-pics/2.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">David Villa - On 16/12/2013</small><br>
                                    <a class="t-overflow" href="">Suspendisse in purus ut nibh placerat Cras pulvinar euismod nunc quis gravida. Suspendisse pharetra</a>
                                </div>
                            </div>
                        </div>
                        <div class="media text-center whiter l-100">
                            <a href=""><small>VIEW ALL</small></a>
                        </div>
                    </div>
                </div>
                   <ol class="breadcrumb hidden-xs">
                    <li><a href="#">首页</a></li>
                    <li><a href="#">留言版</a></li>
                    <li><a href="#modifyPWD" class="modifypwd" data-toggle="modal">修改密码</a></li>
                    <li class="active"><a href="#">注销</a></li>
                </ol>
                 <h4 class="page-title">你好:${user.loginCode }</h4>
			<div class="modal fade in" id="modifyPWD" tabindex="-1" role="dialog"
				aria-hidden="false" style="display: none;">
				<div class="modal-dialog modal-lg">
					<div class="modal-content" style="display: block;">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
							<h4 class="modal-title">SL Member Shopping Mall</h4>
						</div>
						<div class="modal-body">
							<div class="row template-skins">
								<div class="block-area" id="basic">
									<h3 style="font-size: large;" >修改密码</h3>
									<div class="tile p-15">
									
											<div class="form-group">
												<label for="exampleInputPassword1" style="color:darkgray;">请输入原密码：</label> <input
													type="password" class="form-control input-sm"
													id="oldpassword" placeholder="OldPassword"><span style="color:red;font-weight: bold;">*</span>
											</div>

											<div class="form-group">
												<label for="exampleInputPassword1"  style="color:darkgray;">请输入新密码：</label> <input
													type="password" class="form-control input-sm"
													id="newpassword" placeholder="NewPassword"><span
							                        style="color:red;font-weight: bold;">*新密码必须6位以上</span>
											</div>
                                            <div class="form-group">
												<label for="exampleInputPassword1"  style="color:darkgray;">再次输入新密码：</label> <input
													type="password" class="form-control input-sm"
													id="aginpassword" placeholder="NewPassword"><span style="color:red;font-weight: bold;">*</span>
											</div>
	                      
						                  <p id="modifypwdtip">
					                    	</p>
											<a class="btn btn-sm m-t-10" data-dismiss="modal">取消</a>
											<a  class="btn btn-sm m-t-10" id="modifySavePassword" >修改</a>
									
									</div>
								</div>

							</div>
						</div>
					</div>
					</div>
					</div>
