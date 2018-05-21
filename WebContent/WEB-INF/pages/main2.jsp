<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/common/head.jsp"%>
  <link rel="shortcut icon" href="#" type="image/png">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/dev.css">
	<style type="text/css">
/* 		@media (min-width: 992px)
.col-md-3 {
    width: 50%;} 
		
		.jqstooltip { position: absolute;left: 30px;top: 0px;display: block;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;border: 0px solid white;border-radius: 3px;-webkit-border-radius: 3px;z-index: 10000;}.jqsfield { color: white;padding: 5px 5px 5px 5px;font: 10px arial, san serif;text-align: left;}
@media (min-width: 992px)
.col-md-6 {
    width: 47%;
    .panel .purple .r{
    	border:0.1rem solid #0062CC;
			border-radius: 56%;
    	}
.state-overview .symbol {
    width: 19.29%;
    } */
    .s-widget .fc-grid .fc-day-number {
    text-align: center;
    float: none;
    margin-left: -1.4rem;
}
		@media (min-width: 992px)
.col-md-3 {
    width: 50%;} 
		
		.jqstooltip { position: absolute;left: 30px;top: 0px;display: block;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;border: 0px solid white;border-radius: 3px;-webkit-border-radius: 3px;z-index: 10000;}.jqsfield { color: white;padding: 5px 5px 5px 5px;font: 10px arial, san serif;text-align: left;}
@media (min-width: 992px)
.col-md-6 {
    width: 47%;
    .panel .purple .r{
    	border:0.1rem solid #0062CC;
			border-radius: 56%;
    	}
.state-overview .symbol {
    width: 19.29%;
    }
    
    .pie-chart-tiny {
    margin-right:6rem;
}
.s-widget .fc-grid .fc-day-number {
    text-align: center;
    float: none;
    margin-left: -1.2rem;
}
    
    
/*.img-responsive, .thumbnail>img, .thumbnail a>img, .carousel-inner>.item>img, .carousel-inner>.item>a>img {
  
    max-width: 45%;}*/
	</style>
	
   <!--  新增css -->
  <link href="${pageContext.request.contextPath}/statics/css/minimal.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/statics/css/square.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/statics/css/red.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/statics/css/blue.css" rel="stylesheet">
  <!--dashboard calendar-->
  <link href="${pageContext.request.contextPath}/statics/css/clndr.css" rel="stylesheet">

  <!--Morris Chart CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/morris.css">

  <!--common-->
  <link href="${pageContext.request.contextPath}/statics/css/style.css" rel="stylesheet">
	
  <link href="${pageContext.request.contextPath}/statics/css/style-responsive.css" rel="stylesheet">
    <!-- 新增css结束 -->
        <link href="${pageContext.request.contextPath}/statics/css2/font-awesome.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/statics/css2/form.css" rel="stylesheet">
       <link href="${pageContext.request.contextPath}/statics/css2/calendar.css" rel="stylesheet">
       <link href="${pageContext.request.contextPath}/statics/css2/style.css" rel="stylesheet">
       
       <link href="${pageContext.request.contextPath}/statics/css2/icons.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/statics/css2/generics.css" rel="stylesheet">
 
	</head>
	<body id="skin-blur-violate" >
		<script src="http://cpro.baidustatic.com/cpro/ui/f.js" type="text/javascript"></script>
            <!-- Content -->
          
                
          <!--  </section> -->
<!-- left side start-->
    <!--4个图标和echartstu-->
    <!-- main content start-->
					   <!-- <div class="main-content" style="margin-left: 0px;">-->
				 <div class="wrapper">
					            <div class="row">
 					                <div class="col-md-6 "><!--style="padding-left: 0px;"-->
					                    <!--statistics start-->
					                    <div class="row state-overview" ><!--style="    margin-left: -20px;margin-right: -17px;"-->
					                        <div class="col-md-6 col-xs-12 col-sm-6 animated fadeInLeftBig " duration="14s">
					                            <div class="panel purple r" ><!--style="height: 11rem;width: 182%;"-->
					                                <div class="symbol" ><!--style="width:4rem;height:4rem;position:relative;top:-2rem;>
					                                    <!--<i class="fa fa-gavel"></i>-->
					                                    
					                                    	<img  class="img-responsive" src="img/cart1.png">
					                                    
					                                </div>
					                                <div class="state-value" ><!--style="position: relative;padding-left: 3rem;"-->
					                                    <div class="value">NO.7</div>
					                                    <div class="title">订单量最多的窗口</div>
					                                </div>
					                            </div>
					                        </div>
					                        <div class="col-md-6 col-xs-12 col-sm-6 animated fadeInRightBig"  duration="2s">
					                            <div class="panel red" > <!--style="height: 11rem;width: 182%;margin-left:15rem;"-->
					                                <div class="symbol" ><!--style="width:4rem;height:4rem;position:relative;top:-2rem;"-->
					                                    <!--<i class="fa fa-gavel"></i>-->
					                                    
					                                    	<img class="img-responsive" src="img/yeji.png">
					                                    
					                                </div>
					                                <div class="state-value" ><!--style="position: relative;padding-left: 3rem;"-->
					                                    <div class="value">NO.5</div>
					                                    <div class="title">超时送达订单量</div>
					                                </div>
					                            </div>
					                        </div>
					                    </div>
					                    <div class="row state-overview"> <!--style="margin-left: -19px;"-->
					                        <div class="col-md-6 col-xs-12 col-sm-6 animated fadeInLeftBig "  duration="2s">
					                            <div class="panel blue" ><!--style="height: 11rem;width: 185%; margin-left:-0.1rem;"-->
					                                <div class="symbol" ><!--style="width:4rem;height:4rem;position:relative;top:-2rem;"-->
					                                    <!--<i class="fa fa-gavel"></i>-->
					                                    
					                                    	<img class="img-responsive" src="img/pan.png">
					                                    
					                                </div>
					                                <div class="state-value" ><!--style="position: relative;padding-left: 3rem;"-->
					                                    <div class="value">NO.2</div>
					                                    <div class="title"> 好评最多窗口</div>
					                                </div>
					                            </div>
					                        </div>
					                        <div class="col-md-6 col-xs-12 col-sm-6 animated fadeInRightBig">
					                            <div class="panel green" ><!--style="height: 11rem;width: 185%;margin-left:15rem;"-->
					                                <div class="symbol" ><!--style="width:4rem;height:4rem;position:relative;top:-2rem;"-->
					                                    <!--<i class="fa fa-gavel"></i>-->
					                                    
					                                    	<img class="img-responsive" src="img/zhanbi.png">
					                                    
					                                </div>
					                                <div class="state-value" ><!--style="position: relative;padding-left: 3rem;"-->
					                                    <div class="value">NO.4</div>
					                                    <div class="title">食堂平均评价星级</div>
					                                </div>
					                            </div>
					                        </div>
					                    </div>
					                    <!--statistics end-->
					                </div>
					                <div class="col-md-6 animated fadeInDownBig" > 
<!--more statistics box start-->
					                    <div class="panel deep-purple-box" style="height: 17.9rem;">
					                        <div class="panel-body">
					                            <div class="row" style="height: 18.5rem;" >
					                                <div class="col-md-7 col-sm-7 col-xs-7">
														<div style="font-size:1.6rem;text-align: center;" >窗口销售量前5名</div>
					                                    <div id="graph-donut" class="revenue-graph"></div>
					
					                                </div>
					                                <div class="col-md-5 col-sm-5 col-xs-5" >
					                                    <ul class="bar-legend">
					                                        <li><span class="blue"></span> NO.6</li>
					                                        <li><span class="green"></span> NO.24</li>
					                                        <li><span class="purple"></span>NO.4</li>
					                                        <li><span class="red"></span> NO.20</li>
					                                        <li><span class="blue1"></span>NO.13</li>
					                                       
					                                    </ul>
					                                </div>
					                            </div>
					                        </div>
					                    </div>
					                    <!--more statistics box end-->
					                </div>
					            </div>
					        </div> 
					        </div>  
					   
			
                
                
                
                <!-- Quick Stats -->
	<hr class="whiter" style="position:relative;margin-top:-3.5rem;">
               
                
                <!-- Main Widgets -->
               
                <div class="block-area">
                    <div class="row">
                        <div class="col-md-8 " >
<!-- Main Chart柱形图和折线图 --><!--class="tile"-->
                           	
                           		<div class="tile animated fadeInUpBig" >
                              		<div id="mainx"style="height:300px; margin-top: -4rem;" ></div>
                            	</div>
                           
    
<!-- Pies -->
                            
                            	<div class="tile text-center animated fadeInLeftBig" >
                            		<div class="title-dark p-10 " >
                            			<div class="pie-chart-tiny" style="width: 130px;height: 200px; position: relative;margin-left: 3rem;"><div id="main1" style="height:190px;width:120%;float:left;"></div></div>
		                        		
										<div class="pie-chart-tiny"style="width: 130px;height:200px;position:  relative;margin-left: 3rem;"><div id="main2" style="height:190px;width:120%;float:left;"></div></div>
										<div class="pie-chart-tiny"style="width: 130px;height:200px;position:  relative;margin-left: 3rem;"><div id="main3" style="height:190px;width:120%;float:left;"></div></div>
										<div class="pie-chart-tiny"style="width: 130px;height:200px;position:  relative;margin-left: 3rem;"><div id="main4" style="height:190px;width:120%;float:left;"></div></div>
										<div class="pie-chart-tiny"style="width: 130px;height:200px;position:  relative;margin-left: 3rem;"><div id="main5" style="height:190px;width:120%;float:left;"></div></div>
                            		</div>
                            	</div>
							
<!--  Recent Postings最近的帖子 -->
                            <div class="row" >
                                <div class="col-md-6 " >
                                    <div class="tile">
                                        <h2 class="tile-title">最近的帖子</h2>
                                        <div class="tile-config dropdown">
                                            <a data-toggle="dropdown" href="" class="tile-menu"></a>
                                            <ul class="dropdown-menu animated pull-right text-right">
                                                <li><a href="">刷新</a></li>
                                                <li><a href="">设置</a></li>
                                            </ul>
                                        </div>
                                        
                                        <div class="listview narrow">
                                            <div class="media p-l-5">
                                                <div class="pull-left">
                                                    <img width="40" src="img/profile-pics/1.jpg" alt="">
                                                </div>
                                                <div class="media-body">
                                                    <small class="text-muted">2小时之前来自苏珊</small><br/>
                                                    <a class="t-overflow" href="">送达很快</a>
                                                   
                                                </div>
                                            </div>
                                            <div class="media p-l-5">
                                                <div class="pull-left">
                                                    <img width="40" src="img/profile-pics/2.jpg" alt="">
                                                </div>
                                                <div class="media-body">
                                                    <small class="text-muted">5小时之前来自大卫</small><br/>
                                                    <a class="t-overflow" href="">很好吃</a>
                                                    
                                                </div>
                                            </div>
                                            <div class="media p-l-5">
                                                <div class="pull-left">
                                                    <img width="40" src="img/profile-pics/3.jpg" alt="">
                                                </div>
                                                <div class="media-body">
                                                    <small class="text-muted">15/12/2013 来自波拉</small><br/>
                                                    <a class="t-overflow" href="">干净卫生</a>
                                                    
                                                </div>
                                            </div>
                                            <div class="media p-l-5">
                                                <div class="pull-left">
                                                    <img width="40" src="img/profile-pics/4.jpg" alt="">
                                                </div>
                                                <div class="media-body">
                                                    <small class="text-muted">14/12/2013 来自罗斯</small><br/>
                                                    <a class="t-overflow" href="">送达很快，以后光顾食堂饭菜</a>
                                                    
                                                </div>
                                            </div>
                                            <div class="media p-l-5">
                                                <div class="pull-left">
                                                    <img width="40" src="img/profile-pics/5.jpg" alt="">
                                                </div>
                                                <div class="media-body">
                                                    <small class="text-muted">13/12/2013来自菜鸟</small><br/>
                                                    <a class="t-overflow" href="">第一次吃食堂饭菜，不错哦</a>
                                                    
                                                </div>
                                            </div>
                                            <div class="media p-5 text-center l-100">
                                                <a href=""><small>更多</small></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
 <!-- Tasks to do 任务-->
                                <div class="col-md-6">
                                    <div class="tile">
                                        <h2 class="tile-title">窗口未完成配送订单量</h2>
                                        <div class="tile-config dropdown">
                                            <a data-toggle="dropdown" href="" class="tile-menu"></a>
                                            <ul class="dropdown-menu pull-right text-right">
                                                <li id="todo-add"><a href="">添加新品</a></li>
                                                <li id="todo-refresh"><a href="">更新</a></li>
                                                <li id="todo-clear"><a href="">清除全部</a></li>
                                            </ul>
                                        </div>
                                        
                                        <div class="listview todo-list sortable">
                                            <div class="media">
                                                <div class="checkbox m-0">
                                                    <label class="t-overflow">
                                                        <input type="checkbox">
                                                       	二区/7栋/123456/红烧 排骨一份
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="media">
                                                <div class="checkbox m-0">
                                                    <label class="t-overflow">
                                                        <input type="checkbox">
                                                        一区/9栋/123456/红烧 排骨一份
                                                    </label>
                                                </div>
                                                
                                            </div>
                                            <div class="media">
                                                <div class="checkbox m-0">
                                                    <label class="t-overflow">
                                                        <input type="checkbox">
                                                      一区/1栋/134567/酱汁肘子两份
                                                    </label>
                                                </div>
                                                
                                            </div>
                                            <div class="media">
                                                <div class="checkbox m-0">
                                                    <label class="t-overflow">
                                                        <input type="checkbox">
                                                        二区/6栋/145678/菠菜肉丸汤一份
                                                    </label>
                                                </div>
                                                
                                            </div>
                                        </div>
                                        
                                        <h2 class="tile-title">窗口已完成配送订单详情</h2>
                                        
                                        <div class="listview todo-list sortable">
                                            <div class="media">
                                                <div class="checkbox m-0">
                                                    <label class="t-overflow">
                                                        <input type="checkbox" checked="checked">
                                                        二区/9栋/156789/土豆丝拌面一份
                                                    </label>
                                                </div>
                                                
                                            </div>
                                            <div class="media">
                                                <div class="checkbox m-0">
                                                    <label class="t-overflow">
                                                        <input type="checkbox" checked="checked">
                                                         二区/4栋/167891/金针菇烧肉丝一份
                                                    </label>
                                                </div>
                                                
                                            </div>
                                            <div class="media">
                                                <div class="checkbox m-0">
                                                    <label class="t-overflow">
                                                        <input type="checkbox" checked="checked">
                                                          一区/2栋/156789/牛肉串5份
                                                    </label>
                                                </div>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        
                        <div class="col-md-4 " >
<!-- USA Map 地图-->
                            <div class="tile animated fadeInRightBig" style="    margin-top: -3.9rem;">
                                <h2 class="tile-title">分店分布点</h2>
                                <div class="tile-config dropdown">
                                    <a data-toggle="dropdown" href="" class="tile-menu"></a>
                                 
                                </div>
                                
                                <div id="usa-map" >
                                	<div class="jvectormap-container" id="c-map" style="width: 100%; height: 100%; position: relative; overflow: hidden; background-color: rgba(0, 0, 0, 0.25);"></div>
                            	</div>
    						</div>
<!-- Dynamic Chart三角图 -->
                            <div class="tile animated fadeInRightBig" >
                                <h2 class="tile-title">窗口评价统计表</h2>
                                <div class="tile-config dropdown">
                                    <a data-toggle="dropdown" href="" class="tile-menu"></a>
                                    <ul class="dropdown-menu pull-right text-right">
                                        <li><a href="">Refresh</a></li>
                                        <li><a href="">Settings</a></li>
                                    </ul>
                                </div>

                                <div class="p-t-10 p-r-5 p-b-5">
                                    <div id="dynamic-chart"></div>
                                	<div id="mainz" style="height:250px;width:100%;position:relative;margin-right:0rem;margin-left:0rem;"></div>
                                </div>
                            </div>                         
<!-- Activity  最右下-->
                           <div class="tile">
                                <h2 class="tile-title">菜品销售量排行榜</h2>
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
                                            <div class="counts">3678</div>
                                        </div>
                                        <div class="media-body">
                                            <h6>桂花糯米藕</h6>
                                        </div>
                                    </div>
                                    
                                    <div class="media">
                                        <div class="pull-right">
                                            <div class="counts">2012</div>
                                        </div>
                                        <div class="media-body">
                                            <h6>糖醋水萝卜</h6>
                                        </div>
                                    </div>
                                    
                                    <div class="media">
                                        <div class="pull-right">
                                            <div class="counts">5631</div>
                                        </div>
                                        <div class="media-body">
                                            <h6>土豆烧茄子</h6>
                                        </div>
                                    </div>
                                    
                                    <div class="media">
                                        <div class="pull-right">
                                            <div class="counts">7858</div>
                                        </div>
                                        <div class="media-body">
                                            <h6>刀削面</h6>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="pull-right">
                                            <div class="counts">6878</div>
                                        </div>
                                        <div class="media-body">
                                            <h6>炸酱面</h6>
                                        </div>
                                    </div>
                                     <div class="media">
                                        <div class="pull-right">
                                            <div class="counts">858</div>
                                        </div>
                                        <div class="media-body">
                                            <h6>红烧排骨</h6>
                                        </div>
                                    </div>
                                     <div class="media">
                                        <div class="pull-right">
                                            <div class="counts">58</div>
                                        </div>
                                        <div class="media-body">
                                            <h6>菊花干锅</h6>
                                        </div>
                                    </div>
                                     <div class="media">
                                        <div class="pull-right">
                                            <div class="counts">6789</div>
                                        </div>
                                        <div class="media-body">
                                            <h6>重庆小面</h6>
                                        </div>
                                    </div>
                                     <div class="media">
                                        <div class="pull-right">
                                            <div class="counts">3456</div>
                                        </div>
                                        <div class="media-body">
                                            <h6>烤鸡翅</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>   
                       </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
        </section>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.10.2.min.js"></script>
<!--引入echarts官方类库-->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/echarts.js"></script>
<script type="text/javascript" src="http://gallery.echartsjs.com/dep/echarts/map/js/china.js"></script>
<!--<script src="${pageContext.request.contextPath}/js/wow.min.js" type="text/javascript"></script>-->
<script type="text/javascript">
//	new wow().init();
	var htmlWidth=document.documentElement.clientWidth||document.body.clientWidth;
//	alert(htmlWidth);
	document.getElementById('header').onclick = function myfunction() {
		if (htmlWidth<500) {
		document.getElementsByTagName('html')[0].className += 'menu-active';
		document.getElementsByTagName('aside')[0].className += 'toggled';
		
	} 
	};
	
	

	var myChart5 = echarts.init(document.getElementById("c-map"));
	
	var BJData;





		// 将data字符串转换成数组
		data="[[{name:'东营',value:15}, {name:'上海'}],[{name:'兰州',value:15}, {name:'上海'}],[{name:'佛山',value:15}, {name:'上海'}],[{name:'东莞',value:55}, {name:'上海'}],[{name:'东营',value:43}, {name:'上海'}],[{name:'中山',value:27}, {name:'上海'}]]";
		BJData = eval("("+data+")");

var geoCoordMap = {
    '上海': [121.4648,31.2891],
    '东莞': [113.8953,22.901],
    '东营': [118.7073,37.5513],
    '中山': [113.4229,22.478],
    '临汾': [111.4783,36.1615],
    '临沂': [118.3118,35.2936],
    '丹东': [124.541,40.4242],
    '丽水': [119.5642,28.1854],
    '乌鲁木齐': [87.9236,43.5883],
    '佛山': [112.8955,23.1097],
    '保定': [115.0488,39.0948],
    '兰州': [103.5901,36.3043],
    '包头': [110.3467,41.4899],
    '北京': [116.4551,40.2539],
    '北海': [109.314,21.6211],
    '南京': [118.8062,31.9208],
    '南宁': [108.479,23.1152],
    '南昌': [116.0046,28.6633],
    '南通': [121.1023,32.1625],
    '厦门': [118.1689,24.6478],
    '台州': [121.1353,28.6688],
    '合肥': [117.29,32.0581],
    '呼和浩特': [111.4124,40.4901],
    '咸阳': [108.4131,34.8706],
    '哈尔滨': [127.9688,45.368],
    '唐山': [118.4766,39.6826],
    '嘉兴': [120.9155,30.6354],
    '大同': [113.7854,39.8035],
    '大连': [122.2229,39.4409],
    '天津': [117.4219,39.4189],
    '太原': [112.3352,37.9413],
    '威海': [121.9482,37.1393],
    '宁波': [121.5967,29.6466],
    '宝鸡': [107.1826,34.3433],
    '宿迁': [118.5535,33.7775],
    '常州': [119.4543,31.5582],
    '广州': [113.5107,23.2196],
    '廊坊': [116.521,39.0509],
    '延安': [109.1052,36.4252],
    '张家口': [115.1477,40.8527],
    '徐州': [117.5208,34.3268],
    '德州': [116.6858,37.2107],
    '惠州': [114.6204,23.1647],
    '成都': [103.9526,30.7617],
    '扬州': [119.4653,32.8162],
    '承德': [117.5757,41.4075],
    '拉萨': [91.1865,30.1465],
    '无锡': [120.3442,31.5527],
    '日照': [119.2786,35.5023],
    '昆明': [102.9199,25.4663],
    '杭州': [119.5313,29.8773],
    '枣庄': [117.323,34.8926],
    '柳州': [109.3799,24.9774],
    '株洲': [113.5327,27.0319],
    '武汉': [114.3896,30.6628],
    '汕头': [117.1692,23.3405],
    '江门': [112.6318,22.1484],
    '沈阳': [123.1238,42.1216],
    '沧州': [116.8286,38.2104],
    '河源': [114.917,23.9722],
    '泉州': [118.3228,25.1147],
    '泰安': [117.0264,36.0516],
    '泰州': [120.0586,32.5525],
    '济南': [117.1582,36.8701],
    '济宁': [116.8286,35.3375],
    '海口': [110.3893,19.8516],
    '淄博': [118.0371,36.6064],
    '淮安': [118.927,33.4039],
    '深圳': [114.5435,22.5439],
    '清远': [112.9175,24.3292],
    '温州': [120.498,27.8119],
    '渭南': [109.7864,35.0299],
    '湖州': [119.8608,30.7782],
    '湘潭': [112.5439,27.7075],
    '滨州': [117.8174,37.4963],
    '潍坊': [119.0918,36.524],
    '烟台': [120.7397,37.5128],
    '玉溪': [101.9312,23.8898],
    '珠海': [113.7305,22.1155],
    '盐城': [120.2234,33.5577],
    '盘锦': [121.9482,41.0449],
    '石家庄': [114.4995,38.1006],
    '福州': [119.4543,25.9222],
    '秦皇岛': [119.2126,40.0232],
    '绍兴': [120.564,29.7565],
    '聊城': [115.9167,36.4032],
    '肇庆': [112.1265,23.5822],
    '舟山': [122.2559,30.2234],
    '苏州': [120.6519,31.3989],
    '莱芜': [117.6526,36.2714],
    '菏泽': [115.6201,35.2057],
    '营口': [122.4316,40.4297],
    '葫芦岛': [120.1575,40.578],
    '衡水': [115.8838,37.7161],
    '衢州': [118.6853,28.8666],
    '西宁': [101.4038,36.8207],
    '西安': [109.1162,34.2004],
    '贵阳': [106.6992,26.7682],
    '连云港': [119.1248,34.552],
    '邢台': [114.8071,37.2821],
    '邯郸': [114.4775,36.535],
    '郑州': [113.4668,34.6234],
    '鄂尔多斯': [108.9734,39.2487],
    '重庆': [107.7539,30.1904],
    '金华': [120.0037,29.1028],
    '铜川': [109.0393,35.1947],
    '银川': [106.3586,38.1775],
    '镇江': [119.4763,31.9702],
    '长春': [125.8154,44.2584],
    '长沙': [113.0823,28.2568],
    '长治': [112.8625,36.4746],
    '阳泉': [113.4778,38.0951],
    '青岛': [120.4651,36.3373],
    '韶关': [113.7964,24.7028]
};

var convertData = function (data) {
    var res = [];
    for (var i = 0; i < data.length; i++) {
        var dataItem = data[i];
        var fromCoord = geoCoordMap[dataItem[0].name];
        var toCoord = geoCoordMap[dataItem[1].name];
       	if (fromCoord && toCoord) {
            res.push([
            	{
                	coord:fromCoord,
                	value: dataItem[0].value
	            },
	            {
	            	coord: toCoord,
	            }
            ]);
        }
    }
    return res;
};

var color = ['#a6c84c', '#ffa022', '#46bee9'];
var series = [];
[['上海', BJData]].forEach(function (item, i) {
    series.push(
   
    {
        type: 'lines',
        zlevel: 2,
        effect: {
            show: false,
            period: 4, 
            trailLength: 0.02,
            symbol:'arrow',
            symbolSize: 5,
        } ,
      /*   lineStyle: {
            normal: {
                width: 1,
                opacity: 0,
                curveness: 0
            }
        },   */
        
        data: convertData(item[1])
    },
    {
        type: 'effectScatter',
        coordinateSystem: 'geo',
        zlevel: 2,
        rippleEffect: {
        	period:4,
            brushType: 'stroke',
            scale: 4
        },
        label: {
            normal: {
                show: true,
                position: 'right',
                offset:[5, 0],
                formatter: '{b}'
            },
            emphasis: {
            	show: true
            }
        },
        symbol: 'circle',
        symbolSize: function (val) {
            return 4 + val[2] / 10;
        },
        itemStyle: {
            normal: {
            	show: false,
                color: '#f00'
            }
        },
        data: item[1].map(function (dataItem) {
            return {
                name: dataItem[0].name,
                value: geoCoordMap[dataItem[0].name].concat([dataItem[0].value])
            };
        }),
    },
    //被攻击点
    {
        type: 'scatter',
        coordinateSystem: 'geo',
        zlevel: 2,
        rippleEffect: {
        	period:4,
            brushType: 'stroke',
            scale: 4
        },
        label: {
            normal: {
                show: true,
                position: 'right',
//			                offset:[5, 0],
				
				color:'#00ffff',
                formatter: '{b}',
                textStyle: {
                	color:"#00ffff"
                }
            },
            emphasis: {
            	show: true
            }
        },
        symbol: 'pin',
       	symbolSize:30,
        itemStyle: {
            normal: {
            	show: true,
                color: '#9966cc'
            }
        },
        data:[{
            name: item[0],
            value: geoCoordMap[item[0]].concat([100]),
        }],
    }
    );
});

option = {
//  backgroundColor: '#404a59',
					
	visualMap: {
        min : 0,
        max : 100,
        calculable : true,
        color: ['#ff3333', 'orange', 'yellow','lime','aqua'],
        textStyle:{
            color:'#fff'
        }
    },
    
	geo: {
		map: 'china',
		label: {
			emphasis: {
				show: false
			}
		},
		roam: true,
		layoutCenter: ['50%', '30%'],
		layoutSize:"180%",
		itemStyle: {
			normal: {
				color: 'rgba(51, 69, 89, .5)',
				borderColor: 'rgba(100,149,237,1)'
			},
			emphasis: {
				color: 'rgba(37, 43, 61, .5)'
			}
		}
	},
	series:
//	[{
//		center:[89%, 50%]
//	}
//	],
     series
    
};

myChart5.setOption(option);

	



</script>
		
		        
 <!--      五环图 -->
 <script src="${pageContext.request.contextPath}/js/echarts.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/wuhuanyuantu.js"></script>
        
     
	 <script src="${pageContext.request.contextPath}/statics/js2/jquery.min.js"></script> <!-- jQuery Library -->
        <script src="${pageContext.request.contextPath}/statics/js2/jquery-ui.min.js"></script> <!-- jQuery UI -->
        <script src="${pageContext.request.contextPath}/statics/js2/jquery.easing.1.3.js"></script> <!-- jQuery Easing - Requirred for Lightbox + Pie Charts-->
        <!-- Bootstrap -->
       <!-- <script src="${pageContext.request.contextPath}/statics/js2/bootstrap.min.js"></script>-->
<!--折线图-->
        <script src="${pageContext.request.contextPath}/js/echarts.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/jszhexianzhuxing.js"></script>
        <script type="text/javascript" src="http://gallery.echartsjs.com/dep/echarts/map//js/china.js"></script>
        <!-- Charts -->
        <script src="${pageContext.request.contextPath}/statics/js2/charts/jquery.flot.js"></script> <!-- Flot Main -->
        <script src="${pageContext.request.contextPath}/statics/js2/charts/jquery.flot.time.js"></script> <!-- Flot sub -->
        <script src="${pageContext.request.contextPath}/statics/js2/charts/jquery.flot.animator.min.js"></script> <!-- Flot sub -->
        <script src="${pageContext.request.contextPath}/statics/js2/charts/jquery.flot.resize.min.js"></script> <!-- Flot sub - for repaint when resizing the screen -->

        <script src="${pageContext.request.contextPath}/statics/js2/sparkline.min.js"></script> <!-- Sparkline - Tiny charts -->
        <script src="${pageContext.request.contextPath}/statics/js2/easypiechart.js"></script> <!-- EasyPieChart - Animated Pie Charts -->
        <script src="${pageContext.request.contextPath}/statics/js2/charts.js"></script> <!-- All the above chart related functions -->

        <!-- Map -->
        <script src="${pageContext.request.contextPath}/statics/js2/maps/jvectormap.min.js"></script> <!-- jVectorMap main library -->
        <script src="${pageContext.request.contextPath}/statics/js2/maps/usa.js"></script> <!-- USA Map for jVectorMap -->

        <!--  Form Related -->
        <script src="${pageContext.request.contextPath}/statics/js2/icheck.js"></script> <!-- Custom Checkbox + Radio -->

        <!-- UX -->
        <script src="${pageContext.request.contextPath}/statics/js2/scroll.min.js"></script> <!-- Custom Scrollbar -->

        <!-- Other -->
        <script src="${pageContext.request.contextPath}/statics/js2/calendar.min.js"></script> <!-- Calendar -->
        <script src="${pageContext.request.contextPath}/statics/js2/feeds.min.js"></script> <!-- News Feeds -->
        

        <!-- All JS functions -->
        <script src="${pageContext.request.contextPath}/statics/js2/functions.js"></script>
   
        
        
        
        
        
        <script src="${pageContext.request.contextPath}/js/jquery-1.10.2.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-migrate-1.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/modernizr.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.nicescroll.js"></script>

<!--easy pie chart-->
<script src="${pageContext.request.contextPath}/js/easypiechart.js"></script>
<script src="${pageContext.request.contextPath}/js/easypiechart-init.js"></script>
<!--Morris Chart-->
<script src="${pageContext.request.contextPath}/js/morris.js"></script>
<script src="${pageContext.request.contextPath}/js/raphael-min.js"></script>

<!--Dashboard Charts-->
<script src="${pageContext.request.contextPath}/js/dashboard-chart-init.js"></script>
<!--右下折线tu-->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhexian.js"></script>	
<%@include file="/WEB-INF/pages/common/foot.jsp"%>
	</body>
</html>
