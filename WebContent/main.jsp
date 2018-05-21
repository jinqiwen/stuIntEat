<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <meta name="keywords" content="admin, dashboard, bootstrap, template, flat, modern, theme, responsive, fluid, retina, backend, html5, css, css3">
  <meta name="description" content="">
  <meta name="author" content="ThemeBucket">
  <link rel="shortcut icon" href="#" type="image/png">

	<style type="text/css">
		@media (min-width: 992px)
.col-md-3 {
    width: 50%;}
		
		.jqstooltip { position: absolute;left: 30px;top: 0px;display: block;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;border: 0px solid white;border-radius: 3px;-webkit-border-radius: 3px;z-index: 10000;}.jqsfield { color: white;padding: 5px 5px 5px 5px;font: 10px arial, san serif;text-align: left;}</style>

 
<link href="css/bootstrap.min.css" rel="stylesheet">
  <!--icheck-->
  <link href="css/minimal.css" rel="stylesheet">
  <link href="css/square.css" rel="stylesheet">
<link href="css/red.css" rel="stylesheet">
<link href="css/blue.css" rel="stylesheet">

  <!--dashboard calendar-->
 <link href="css/clndr.css" rel="stylesheet">

  <!--Morris Chart CSS -->
 <link rel="stylesheet" href="css/morris.css">

  <!--common-->
 <link href="css/style.css" rel="stylesheet">
 <link href="css/style-responsive.css" rel="stylesheet">
		
		<link href="css2/bootstrap.min.css" rel="stylesheet">
        <link href="css2/animate.min.css" rel="stylesheet">
        <link href="css2/font-awesome.min.css" rel="stylesheet">
        <link href="css2/form.css" rel="stylesheet">
        <link href="css2/calendar.css" rel="stylesheet">
        <link href="css2/style.css" rel="stylesheet">
        <link href="css2/icons.css" rel="stylesheet">
        <link href="css2/generics.css" rel="stylesheet">
 
	</head>
	<body id="skin-blur-violate" >
		<script src="http://cpro.baidustatic.com/cpro/ui/f.js" type="text/javascript"></script>
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
                        <input type="text" class="main-search">
                    </div>
                </div>
            </div>
        </header>
        
        <div class="clearfix"></div>
        
        <section id="main" class="p-relative" role="main">
            
            <!-- Sidebar -->
            <aside id="sidebar">
                
                <!-- Sidbar Widgets -->
                <div class="side-widgets overflow">
                    <!-- Profile Menu -->
                    <div class="text-center s-widget m-b-25 dropdown" id="profile-menu">
                        <a href="" data-toggle="dropdown">
                            <img class="profile-pic animated" src="img/profile-pic.jpg" alt="">
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
                
                <!-- Side Menu -->
                <ul class="list-unstyled side-menu">
                    <li class="active">
                        <a class="sa-side-home" href="index.html">
                            <span class="menu-item">Dashboard</span>
                        </a>
                    </li>
                    <li>
                        <a class="sa-side-typography" href="typography.html">
                            <span class="menu-item">Typography</span>
                        </a>
                    </li>
                    <li>
                        <a class="sa-side-widget" href="content-widgets.html">
                            <span class="menu-item">Widgets</span>
                        </a>
                    </li>
                    <li>
                        <a class="sa-side-table" href="tables.html">
                            <span class="menu-item">Tables</span>
                        </a>
                    </li>
                    <li class="dropdown">
                        <a class="sa-side-form" href="">
                            <span class="menu-item">Form</span>
                        </a>
                        <ul class="list-unstyled menu-item">
                            <li><a href="form-elements.html">Basic Form Elements</a></li>
                            <li><a href="form-components.html">Form Components</a></li>
                            <li><a href="form-examples.html">Form Examples</a></li>
                            <li><a href="form-validation.html">Form Validation</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="sa-side-ui" href="">
                            <span class="menu-item">User Interface</span>
                        </a>
                        <ul class="list-unstyled menu-item">
                            <li><a href="buttons.html">Buttons</a></li>
                            <li><a href="labels.html">Labels</a></li>
                            <li><a href="images-icons.html">Images &amp; Icons</a></li>
                            <li><a href="alerts.html">Alerts</a></li>
                            <li><a href="media.html">Media</a></li>
                            <li><a href="components.html">Components</a></li>
                            <li><a href="other-components.html">Others</a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="sa-side-chart" href="charts.html">
                            <span class="menu-item">Charts</span>
                        </a>
                    </li>
                    <li>
                        <a class="sa-side-folder" href="file-manager.html">
                            <span class="menu-item">File Manager</span>
                        </a>
                    </li>
                    <li>
                        <a class="sa-side-calendar" href="calendar.html">
                            <span class="menu-item">Calendar</span>
                        </a>
                    </li>
                    <li class="dropdown">
                        <a class="sa-side-page" href="">
                            <span class="menu-item">Pages</span>
                        </a>
                        <ul class="list-unstyled menu-item">
                            <li><a href="list-view.html">List View</a></li>
                            <li><a href="profile-page.html">Profile Page</a></li>
                            <li><a href="messages.html">Messages</a></li>
                            <li><a href="login.html">Login</a></li>
                            <li><a href="404.html">404 Error</a></li>
                        </ul>
                    </li>
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
                                    <img width="40" src="img/profile-pics/1.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">Nadin Jackson - 2 Hours ago</small><br>
                                    <a class="t-overflow" href="">Mauris consectetur urna nec tempor adipiscing. Proin sit amet nisi ligula. Sed eu adipiscing lectus</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="img/profile-pics/2.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">David Villa - 5 Hours ago</small><br>
                                    <a class="t-overflow" href="">Suspendisse in purus ut nibh placerat Cras pulvinar euismod nunc quis gravida. Suspendisse pharetra</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="img/profile-pics/3.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">Harris worgon - On 15/12/2013</small><br>
                                    <a class="t-overflow" href="">Maecenas venenatis enim condimentum ultrices fringilla. Nulla eget libero rhoncus, bibendum diam eleifend, vulputate mi. Fusce non nibh pulvinar, ornare turpis id</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="img/profile-pics/4.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">Mitch Bradberry - On 14/12/2013</small><br>
                                    <a class="t-overflow" href="">Phasellus interdum felis enim, eu bibendum ipsum tristique vitae. Phasellus feugiat massa orci, sed viverra felis aliquet quis. Curabitur vel blandit odio. Vestibulum sagittis quis sem sit amet tristique.</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="img/profile-pics/1.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">Nadin Jackson - On 15/12/2013</small><br>
                                    <a class="t-overflow" href="">Ipsum wintoo consectetur urna nec tempor adipiscing. Proin sit amet nisi ligula. Sed eu adipiscing lectus</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="img/profile-pics/2.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">David Villa - On 16/12/2013</small><br>
                                    <a class="t-overflow" href="">Suspendisse in purus ut nibh placerat Cras pulvinar euismod nunc quis gravida. Suspendisse pharetra</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="img/profile-pics/3.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">Harris worgon - On 17/12/2013</small><br>
                                    <a class="t-overflow" href="">Maecenas venenatis enim condimentum ultrices fringilla. Nulla eget libero rhoncus, bibendum diam eleifend, vulputate mi. Fusce non nibh pulvinar, ornare turpis id</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="img/profile-pics/4.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">Mitch Bradberry - On 18/12/2013</small><br>
                                    <a class="t-overflow" href="">Phasellus interdum felis enim, eu bibendum ipsum tristique vitae. Phasellus feugiat massa orci, sed viverra felis aliquet quis. Curabitur vel blandit odio. Vestibulum sagittis quis sem sit amet tristique.</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="img/profile-pics/5.jpg" alt="">
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
                                    <img width="40" src="img/profile-pics/1.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">Nadin Jackson - 2 Hours ago</small><br>
                                    <a class="t-overflow" href="">Mauris consectetur urna nec tempor adipiscing. Proin sit amet nisi ligula. Sed eu adipiscing lectus</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="img/profile-pics/2.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">David Villa - 5 Hours ago</small><br>
                                    <a class="t-overflow" href="">Suspendisse in purus ut nibh placerat Cras pulvinar euismod nunc quis gravida. Suspendisse pharetra</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="img/profile-pics/3.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">Harris worgon - On 15/12/2013</small><br>
                                    <a class="t-overflow" href="">Maecenas venenatis enim condimentum ultrices fringilla. Nulla eget libero rhoncus, bibendum diam eleifend, vulputate mi. Fusce non nibh pulvinar, ornare turpis id</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="img/profile-pics/4.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">Mitch Bradberry - On 14/12/2013</small><br>
                                    <a class="t-overflow" href="">Phasellus interdum felis enim, eu bibendum ipsum tristique vitae. Phasellus feugiat massa orci, sed viverra felis aliquet quis. Curabitur vel blandit odio. Vestibulum sagittis quis sem sit amet tristique.</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="img/profile-pics/1.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">Nadin Jackson - On 15/12/2013</small><br>
                                    <a class="t-overflow" href="">Ipsum wintoo consectetur urna nec tempor adipiscing. Proin sit amet nisi ligula. Sed eu adipiscing lectus</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="img/profile-pics/2.jpg" alt="">
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
                
                <!-- Breadcrumb -->
                <ol class="breadcrumb hidden-xs">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Library</a></li>
                    <li class="active">Data</li>
                </ol>
                
                <h4 class="page-title">DASHBOARD</h4>
                                
                <!-- Shortcuts -->
                <!--<div class="block-area shortcut-area">
                    <div class="sticky-header">-->

					<section>
    <!-- left side start-->
    
    
    <!-- main content start-->
					   <!-- <div class="main-content" style="margin-left: 0px;">-->
					
					        
					        <div class="wrapper">
					            <div class="row">
 					                <div class="col-md-6" style="padding-left: 0px;">
					                    <!--statistics start-->
					                    <div class="row state-overview" style="    margin-left: -15px;margin-right: -17px;">
					                        <div class="col-md-3 col-xs-12 col-sm-6" style="">
					                            <div class="panel purple" style="height: 11rem;width: 210%;">
					                                <div class="symbol" style="width:4rem;height:4rem;position:relative;top:-2rem;">
					                                    <!--<i class="fa fa-gavel"></i>-->
					                                    
					                                    	<img src="img/cart1.png">
					                                    
					                                </div>
					                                <div class="state-value" style="position: relative;padding-left: 3rem;">
					                                    <div class="value">230</div>
					                                    <div class="title">New Order</div>
					                                </div>
					                            </div>
					                        </div>
					                        <div class="col-md-3 col-xs-12 col-sm-6">
					                            <div class="panel red" style="height: 11rem;width: 210%;margin-left:16rem;">
					                                <div class="symbol" style="width:4rem;height:4rem;position:relative;top:-2rem;">
					                                    <!--<i class="fa fa-gavel"></i>-->
					                                    
					                                    	<img src="img/yeji.png">
					                                    
					                                </div>
					                                <div class="state-value" style="position: relative;padding-left: 3rem;">
					                                    <div class="value">3490</div>
					                                    <div class="title">Copy Sold</div>
					                                </div>
					                            </div>
					                        </div>
					                    </div>
					                    <div class="row state-overview" style="margin-left: -13px;">
					                        <div class="col-md-3 col-xs-12 col-sm-6">
					                            <div class="panel blue" style="height: 11rem;width: 212%; margin-left:-0.1rem;">
					                                <div class="symbol" style="width:4rem;height:4rem;position:relative;top:-2rem;">
					                                    <!--<i class="fa fa-gavel"></i>-->
					                                    
					                                    	<img src="img/pan.png">
					                                    
					                                </div>
					                                <div class="state-value" style="position: relative;padding-left: 3rem;">
					                                    <div class="value">22014</div>
					                                    <div class="title"> Total Revenue</div>
					                                </div>
					                            </div>
					                        </div>
					                        <div class="col-md-3 col-xs-12 col-sm-6">
					                            <div class="panel green" style="height: 11rem;width: 212%;margin-left:16rem;">
					                                <div class="symbol" style="width:4rem;height:4rem;position:relative;top:-2rem;">
					                                    <!--<i class="fa fa-gavel"></i>-->
					                                    
					                                    	<img src="img/zhanbi.png">
					                                    
					                                </div>
					                                <div class="state-value" style="position: relative;padding-left: 3rem;">
					                                    <div class="value">390</div>
					                                    <div class="title"> Unique Visitors</div>
					                                </div>
					                            </div>
					                        </div>
					                    </div>
					                    <!--statistics end-->
					                </div>
					                <div class="col-md-6" style="    width: 43%;">
					                    <!--more statistics box start-->
					                    <div class="panel deep-purple-box" style="    margin-left: 0rem;    width: 113%;height: 23.7rem;    padding-left: 7rem;">
					                        <div class="panel-body">
					                            <div class="row" style="    margin-right: 32px;margin-left: -56px;">
					                                <div class="col-md-7 col-sm-7 col-xs-7">
					                                    <div id="graph-donut" class="revenue-graph"></div>
					
					                                </div>
					                                <div class="col-md-5 col-sm-5 col-xs-5" style="    width: 29.666667%;">
					                                    <ul class="bar-legend">
					                                        <li><span class="blue"></span> Open rate</li>
					                                        <li><span class="green"></span> Click rate</li>
					                                        <li><span class="purple"></span> Share rate</li>
					                                        <li><span class="red"></span> Unsubscribed rate</li>
					                                    </ul>
					                                </div>
					                            </div>
					                        </div>
					                    </div>
					                    <!--more statistics box end-->
					                </div>
					            </div>
					        </div>   
					            
					        <!--</div>-->
					   
					<!--</div>
					
					    </div>-->
					   
					</section>
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
              
                
                
                
                <!-- Quick Stats -->
                
<!--<hr style="color:#fff position:relative;margin-top:-3rem;"/ >-->
	<hr class="whiter" style="position:relative;top:-2.7rem;">
               
                
                <!-- Main Widgets -->
               
                <div class="block-area">
                    <div class="row"><!--style="width: 66.66666667%;"-->
                        <div class="col-md-8"style="    width: 62%;" >
                            <!-- Main Chart --><!--class="tile"-->
                           <div class="tile" style="margin-top:-2.5rem; position: relative;margin-left:-1rem;">
                              <div id="mainx" style="height:300px;width:100%;"></div>
                            </div>
    
                            <!-- Pies -->
                            <div class="tile text-center" style="margin-bottom: -2px;height: 200px;margin-top: 1rem; width:100%; position:relative;margin-left:-1rem;">
                                <div id="main1" style="height:200px;width:19%;float:left;margin-right:0.1rem;"></div>
								<div id="main2" style="height:200px;width:19%;float:left;margin-right:0.1rem;"></div>
								<div id="main3" style="height:200px;width:19%;float:left;"></div>
								<div id="main4" style="height:200px;width:19%;float:left;"></div>
								<div id="main5" style="height:200px;width:19%;float:left;"></div>
                            </div>

                            <!--  Recent Postings -->
                            <div class="row" style="margin-top:1rem;position: relative;margin-left:-2.3rem;">
                                <div class="col-md-6" style="width:46%">
                                    <div class="tile">
                                        <h2 class="tile-title">Recent Postings</h2>
                                        <div class="tile-config dropdown">
                                            <a data-toggle="dropdown" href="" class="tile-menu"></a>
                                            <ul class="dropdown-menu animated pull-right text-right">
                                                <li><a href="">Refresh</a></li>
                                                <li><a href="">Settings</a></li>
                                            </ul>
                                        </div>
                                        
                                        <div class="listview narrow">
                                            <div class="media p-l-5">
                                                <div class="pull-left">
                                                    <img width="40" src="img/profile-pics/1.jpg" alt="">
                                                </div>
                                                <div class="media-body">
                                                    <small class="text-muted">2 Hours ago by Adrien San</small><br/>
                                                    <a class="t-overflow" href="">Cras molestie fermentum nibh, ac semper</a>
                                                   
                                                </div>
                                            </div>
                                            <div class="media p-l-5">
                                                <div class="pull-left">
                                                    <img width="40" src="img/profile-pics/2.jpg" alt="">
                                                </div>
                                                <div class="media-body">
                                                    <small class="text-muted">5 Hours ago by David Villa</small><br/>
                                                    <a class="t-overflow" href="">Suspendisse in purus ut nibh placerat</a>
                                                    
                                                </div>
                                            </div>
                                            <div class="media p-l-5">
                                                <div class="pull-left">
                                                    <img width="40" src="img/profile-pics/3.jpg" alt="">
                                                </div>
                                                <div class="media-body">
                                                    <small class="text-muted">On 15/12/2013 by Mitch bradberry</small><br/>
                                                    <a class="t-overflow" href="">Cras pulvinar euismod nunc quis gravida. Suspendisse pharetra</a>
                                                    
                                                </div>
                                            </div>
                                            <div class="media p-l-5">
                                                <div class="pull-left">
                                                    <img width="40" src="img/profile-pics/4.jpg" alt="">
                                                </div>
                                                <div class="media-body">
                                                    <small class="text-muted">On 14/12/2013 by Mitch bradberry</small><br/>
                                                    <a class="t-overflow" href="">Cras pulvinar euismod nunc quis gravida. </a>
                                                    
                                                </div>
                                            </div>
                                            <div class="media p-l-5">
                                                <div class="pull-left">
                                                    <img width="40" src="img/profile-pics/5.jpg" alt="">
                                                </div>
                                                <div class="media-body">
                                                    <small class="text-muted">On 13/12/2013 by Mitch bradberry</small><br/>
                                                    <a class="t-overflow" href="">Integer a eros dapibus, vehicula quam accumsan, tincidunt purus</a>
                                                    
                                                </div>
                                            </div>
                                            <div class="media p-5 text-center l-100">
                                                <a href=""><small>VIEW ALL</small></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <!-- Tasks to do -->
                                <div class="col-md-6" style="width:46%">
                                    <div class="tile">
                                        <h2 class="tile-title">Tasks to do</h2>
                                        <div class="tile-config dropdown">
                                            <a data-toggle="dropdown" href="" class="tile-menu"></a>
                                            <ul class="dropdown-menu pull-right text-right">
                                                <li id="todo-add"><a href="">Add New</a></li>
                                                <li id="todo-refresh"><a href="">Refresh</a></li>
                                                <li id="todo-clear"><a href="">Clear All</a></li>
                                            </ul>
                                        </div>
                                        
                                        <div class="listview todo-list sortable">
                                            <div class="media">
                                                <div class="checkbox m-0">
                                                    <label class="t-overflow">
                                                        <input type="checkbox">
                                                        Curabitur quis nisi ut nunc gravida suscipis
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="media">
                                                <div class="checkbox m-0">
                                                    <label class="t-overflow">
                                                        <input type="checkbox">
                                                        Suscipit at feugiat dewoo
                                                    </label>
                                                </div>
                                                
                                            </div>
                                            <div class="media">
                                                <div class="checkbox m-0">
                                                    <label class="t-overflow">
                                                        <input type="checkbox">
                                                        Gravida wendy lorem ipsum seen
                                                    </label>
                                                </div>
                                                
                                            </div>
                                            <div class="media">
                                                <div class="checkbox m-0">
                                                    <label class="t-overflow">
                                                        <input type="checkbox">
                                                        Fedrix quis nisi ut nunc gravida suscipit at feugiat purus
                                                    </label>
                                                </div>
                                                
                                            </div>
                                        </div>
                                        
                                        <h2 class="tile-title">Completed Tasks</h2>
                                        
                                        <div class="listview todo-list sortable">
                                            <div class="media">
                                                <div class="checkbox m-0">
                                                    <label class="t-overflow">
                                                        <input type="checkbox" checked="checked">
                                                        Motor susbect win latictals bin the woodat cool
                                                    </label>
                                                </div>
                                                
                                            </div>
                                            <div class="media">
                                                <div class="checkbox m-0">
                                                    <label class="t-overflow">
                                                        <input type="checkbox" checked="checked">
                                                        Wendy mitchel susbect win latictals bin the woodat cool
                                                    </label>
                                                </div>
                                                
                                            </div>
                                            <div class="media">
                                                <div class="checkbox m-0">
                                                    <label class="t-overflow">
                                                        <input type="checkbox" checked="checked">
                                                        Latictals bin the woodat cool for the win
                                                    </label>
                                                </div>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        
                        <div class="col-md-4" style="position: relative;margin-top: -2.4rem;">
                            <!-- USA Map -->
                            <div class="tile">
                                <h2 class="tile-title">Live Visits</h2>
                                <div class="tile-config dropdown">
                                    <a data-toggle="dropdown" href="" class="tile-menu"></a>
                                  <!--  <ul class="dropdown-menu pull-right text-right">
                                        <li><a href="">Refresh</a></li>
                                        <li><a href="">Settings</a></li>
                                    </ul>-->
                                  
                                </div>
                                
                                <div id="usa-map"><%@include file="tmall.jsp"%></div>
                            </div>
    
                            <!-- Dynamic Chart -->
                            <div class="tile">
                                <h2 class="tile-title">Server Process</h2>
                                <div class="tile-config dropdown">
                                    <a data-toggle="dropdown" href="" class="tile-menu"></a>
                                    <ul class="dropdown-menu pull-right text-right">
                                        <li><a href="">Refresh</a></li>
                                        <li><a href="">Settings</a></li>
                                    </ul>
                                </div>

                                <div class="p-t-10 p-r-5 p-b-5">
                                    <div id="dynamic-chart" style="height: 200px"></div>
                                </div>

                            </div>
                            
                            <!-- Activity -->
                            <div class="tile">
                                <h2 class="tile-title">Social Media activities</h2>
                                <div class="tile-config dropdown">
                                    <a data-toggle="dropdown" href="" class="tile-menu"></a>
                                    <ul class="dropdown-menu pull-right text-right">
                                        <li><a href="">Refresh</a></li>
                                        <li><a href="">Settings</a></li>
                                    </ul>
                                </div>
                                
                                <div class="listview narrow">
                                    
                                    <div class="media">
                                        <div class="pull-right">
                                            <div class="counts">367892</div>
                                        </div>
                                        <div class="media-body">
                                            <h6>FACEBOOK LIKES</h6>
                                        </div>
                                    </div>
                                    
                                    <div class="media">
                                        <div class="pull-right">
                                            <div class="counts">2012</div>
                                        </div>
                                        <div class="media-body">
                                            <h6>GOOGLE +1s</h6>
                                        </div>
                                    </div>
                                    
                                    <div class="media">
                                        <div class="pull-right">
                                            <div class="counts">56312</div>
                                        </div>
                                        <div class="media-body">
                                            <h6>YOUTUBE VIEWS</h6>
                                        </div>
                                    </div>
                                    
                                    <div class="media">
                                        <div class="pull-right">
                                            <div class="counts">785879</div>
                                        </div>
                                        <div class="media-body">
                                            <h6>TWITTER FOLLOWERS</h6>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="pull-right">
                                            <div class="counts">68</div>
                                        </div>
                                        <div class="media-body">
                                            <h6>WEBSITE COMMENTS</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                
                <!-- Chat -->
                <div class="chat">
                    
                    <!-- Chat List -->
                    <div class="pull-left chat-list">
                        <div class="listview narrow">
                            <div class="media">
                                <img class="pull-left" src="img/profile-pics/1.jpg" width="30" alt="">
                                <div class="media-body p-t-5">
                                    Alex Bendit
                                </div>
                            </div>
                            <div class="media">
                                <img class="pull-left" src="img/profile-pics/2.jpg" width="30" alt="">
                                <div class="media-body">
                                    <span class="t-overflow p-t-5">David Volla Watkinson</span>
                                </div>
                            </div>
                            <div class="media">
                                <img class="pull-left" src="img/profile-pics/3.jpg" width="30" alt="">
                                <div class="media-body">
                                    <span class="t-overflow p-t-5">Mitchell Christein</span>
                                </div>
                            </div>
                            <div class="media">
                                <img class="pull-left" src="img/profile-pics/4.jpg" width="30" alt="">
                                <div class="media-body">
                                    <span class="t-overflow p-t-5">Wayne Parnell</span>
                                </div>
                            </div>
                            <div class="media">
                                <img class="pull-left" src="img/profile-pics/5.jpg" width="30" alt="">
                                <div class="media-body">
                                    <span class="t-overflow p-t-5">Melina April</span>
                                </div>
                            </div>
                            <div class="media">
                                <img class="pull-left" src="img/profile-pics/6.jpg" width="30" alt="">
                                <div class="media-body">
                                    <span class="t-overflow p-t-5">Ford Harnson</span>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    
                    <!-- Chat Area -->
                    <div class="media-body">
                        <div class="chat-header">
                            <a class="btn btn-sm" href="">
                                <i class="fa fa-circle-o status m-r-5"></i> Chat with Friends
                            </a>
                        </div>
                    
                        <div class="chat-body">
                            <div class="media">
                                <img class="pull-right" src="img/profile-pics/1.jpg" width="30" alt="" />
                                <div class="media-body pull-right">
                                    Hiiii<br/>
                                    How you doing bro?
                                    <small>Me - 10 Mins ago</small>
                                </div>
                            </div>
                            
                            <div class="media pull-left">
                                <img class="pull-left" src="img/profile-pics/2.jpg" width="30" alt="" />
                                <div class="media-body">
                                    I'm doing well buddy. <br/>How do you do?
                                    <small>David - 9 Mins ago</small>
                                </div>
                            </div>
                            
                            <div class="media pull-right">
                                <img class="pull-right" src="img/profile-pics/2.jpg" width="30" alt="" />
                                <div class="media-body">
                                    I'm Fine bro <br/>Thank you for asking
                                    <small>Me - 8 Mins ago</small>
                                </div>
                            </div>
                            
                            <div class="media pull-right">
                                <img class="pull-right" src="img/profile-pics/2.jpg" width="30" alt="" />
                                <div class="media-body">
                                    Any idea for a hangout?
                                    <small>Me - 8 Mins ago</small>
                                </div>
                            </div>
                       		  
                        </div>
                    
                        <div class="chat-footer media">
                            <i class="chat-list-toggle pull-left fa fa-bars"></i>
                            <i class="pull-right fa fa-picture-o"></i> 
                            <div class="media-body">
                                <textarea class="form-control" placeholder="Type something..."></textarea>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </section>

            <!-- Older IE Message -->
            <!--[if lt IE 9]>
                <div class="ie-block">
                    <h1 class="Ops">Ooops!</h1>
                    <p>You are using an outdated version of Internet Explorer, upgrade to any of the following web browser in order to access the maximum functionality of this website. </p>
                    <ul class="browsers">
                        <li>
                            <a href="https://www.google.com/intl/en/chrome/browser/">
                                <img src="img/browsers/chrome.png" alt="">
                                <div>Google Chrome</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.mozilla.org/en-US/firefox/new/">
                                <img src="img/browsers/firefox.png" alt="">
                                <div>Mozilla Firefox</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.opera.com/computer/windows">
                                <img src="img/browsers/opera.png" alt="">
                                <div>Opera</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://safari.en.softonic.com/">
                                <img src="img/browsers/safari.png" alt="">
                                <div>Safari</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://windows.microsoft.com/en-us/internet-explorer/downloads/ie-10/worldwide-languages">
                                <img src="img/browsers/ie.png" alt="">
                                <div>Internet Explorer(New)</div>
                            </a>
                        </li>
                    </ul>
                    <p>Upgrade your browser for a Safer and Faster web experience. <br/>Thank you for your patience...</p>
                </div>   
            <![endif]-->
        </section>

		
		
	 <script src="js2/jquery.min.js"></script> <!-- jQuery Library -->
        <script src="js2/jquery-ui.min.js"></script> <!-- jQuery UI -->
        <script src="js2/jquery.easing.1.3.js"></script> <!-- jQuery Easing - Requirred for Lightbox + Pie Charts-->
        <!-- Bootstrap -->
        <script src="js2/bootstrap.min.js"></script>
<!--折线图-->
        <script src="js/echarts.js"></script>
        <script type="text/javascript" src="js/jszhexianzhuxing.js"></script>
        <script type="text/javascript" src="http://gallery.echartsjs.com/dep/echarts/map/js/china.js"></script>
        <!-- Charts -->
        <script src="js2/charts/jquery.flot.js"></script> <!-- Flot Main -->
        <script src="js2/charts/jquery.flot.time.js"></script> <!-- Flot sub -->
        <script src="js2/charts/jquery.flot.animator.min.js"></script> <!-- Flot sub -->
        <script src="js2/charts/jquery.flot.resize.min.js"></script> <!-- Flot sub - for repaint when resizing the screen -->

        <script src="js2/sparkline.min.js"></script> <!-- Sparkline - Tiny charts -->
        <script src="js2/easypiechart.js"></script> <!-- EasyPieChart - Animated Pie Charts -->
        <script src="js2/charts.js"></script> <!-- All the above chart related functions -->

        <!-- Map -->
        <script src="js2/maps/jvectormap.min.js"></script> <!-- jVectorMap main library -->
        <script src="js2/maps/usa.js"></script> <!-- USA Map for jVectorMap -->

        <!--  Form Related -->
        <script src="js2/icheck.js"></script> <!-- Custom Checkbox + Radio -->

        <!-- UX -->
        <script src="js2/scroll.min.js"></script> <!-- Custom Scrollbar -->

        <!-- Other -->
        <script src="js2/calendar.min.js"></script> <!-- Calendar -->
        <script src="js2/feeds.min.js"></script> <!-- News Feeds -->
        

        <!-- All JS functions -->
        <script src="js2/functions.js"></script>
        
 <!--      五环图 -->
 <script src="js/echarts.js"></script>
		<script type="text/javascript" src="js/wuhuanyuantu.js"></script>
        
        
        
        
        
        
        
        <script src="js/jquery-1.10.2.min.js"></script>
<script src="js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="js/jquery-migrate-1.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/modernizr.min.js"></script>
<script src="js/jquery.nicescroll.js"></script>

<!--easy pie chart-->
<script src="js/easypiechart.js"></script>
<script src="js/easypiechart-init.js"></script>

<!--Sparkline Chart-->
<!--<script src="js/sparkline.js"></script>
<script src="js/sparkline-init.js"></script>-->

<!--icheck -->
<!--<script src="js/icheck.js"></script>
<script src="js/icheck-init.js"></script>-->

<!-- jQuery Flot Chart-->
<!--<script src="js/jquery.flot.js"></script>
<script src="js/flot.tooltip.js"></script>
<script src="js/flot.resize.js"></script>-->


<!--Morris Chart-->
<script src="js/morris.js"></script>
<script src="js/raphael-min.js"></script>

<!--Calendar-->
<!--<script src="js/calendar/clndr.js"></script>
<script src="js/calendar/evnt.calendar.init.js"></script>
<script src="js/calendar/moment-2.2.1.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.5.2/underscore-min.js"></script>-->

<!--common scripts for all pages-->
<!--<script src="js/scripts.js"></script>-->

<!--Dashboard Charts-->
<script src="js/dashboard-chart-init.js"></script>

				
