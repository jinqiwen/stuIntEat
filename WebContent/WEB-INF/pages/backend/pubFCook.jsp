<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/common/head.jsp"%>
<style>
    .downul{
    margin-left: -39px;
    margin-top: 8px;
    }
    .fileInput{
    background: none;
    border: 1px solid #F7F7F7;
    width: 168px;
    height: 24px;
    margin-bottom: 4px;
    text-align: center;
    }

    .input-sm{
     width: 278px;
    }
    .block-area{
        width: 632px;
    height: 800px;
    }
    .form-group{
       width: 278px;
       float:left;
       
       
    }
    .p-15{
    height:848px;
    width: 608px;;
    position: relative;
    left:  670px;
    top: 88px;
    }
    .even-group{
    left: 15px;
    position: relative;
    }
    .model-form{
    overflow: hidden;
    }
    .modelH{   
    height: 43px;
    }
    
    .model-h{
     position: relative;
    left: -15px;
    top: -21px;
    }
    .model_foot{
    clear: both;
    position: relative;
    top: 10px;
    }
    .table{
    
    width:1639px;
    left: -15px;
    }
    .three-group{
     left: 30px;
    position: relative;
    }
</style>
 <div class="block-area" id="responsiveTable">
                    <h3 class="block-title">上架菜谱列表</h3>
                    <div class="table-responsive " style="overflow: inherit;">
					 	<div class="box-icon">
							<span class="icon32 icon-color icon-add custom-setting adduser"> </span> 
							</div>
						<form action="pubfCookList.html" method="post">
							<div class="searcharea">
							食品材料:
						<!-- 	注意在变量中用的不是引用,比如此处的school 和下面的admin.school在初始是一个没值，一个有值，其反应 请求和响应的区别 -->
							<input type="text" name="s_fKey" value="" class="form-control m-b-10" />
							管理员编号：
							<input type="text" name="s_adminId" value="" class="form-control m-b-10"/>
							<button type="submit" class="btn btn-primary" ><i class="icon-search icon-white"></i> 查询 </button>
						</div>
						</form>
					<div class="block-area" id="responsiveTable" >
                    <div class="table-responsive ">
						<table class="table tile table-bordered table-striped">
						  <thead>
							  <tr>
							      <th>序列号</th>
								  <th style="width: 200px;">菜品</th>
								  <th>菜品名称</th>
								  <th>分类</th>
								  <th>窗口</th>
								  <th>材料</th>
								  <th>价格</th>
								  <th>单份含量</th>
                                  <th>操作</th>
							  </tr>
						  </thead>   
						  <tbody>
						    <c:if test="${page.items != null}">
						  <c:forEach items="${page.items}" var="fCook" varStatus="status">
							<tr>
						     	<td class="center">${status.index + 1} </td>
								<td class="center"><img src="${fCook.fImg }" style="width: 125px;height: 76px;margin-top: -8px;margin-bottom: -6px;"></img></td>
								<td class="center">${fCook.fName}</td>
								<td class="center">${fCook.fClassify}</td>
								<td class="center">${fCook.windowId}</td>
								<td class="center">${fCook.fKey}</td>
								<td class="center">${fCook.fPrice}</td>
								<td class="center">${fCook.everyone}</td>
								<td class="center">
								<a class="btn btn-success viewFoodCookMake" href="#" id="${fCook.id}" fName="${fCook.fName}">
										<i class="icon-zoom-in icon-white"></i>  
										查看成分详情                                           
								</a>
								<c:if test="${fCook.isPub==1}">
								<a class="btn btn-success   pubFoodCook" href="#" id="${fCook.id}" fName="${fCook.fName}" style="background:#66CD00;">
										<i class="icon-zoom-in icon-white"></i>  
										已上架                                          
								</a>
								</c:if>
								<a class="btn btn-success   downFoodCook" href="#" id="${fCook.id}" >
										<i class="icon-zoom-in icon-white"></i>  
										下架                            
								</a>
								</td>
							</tr>
						  </c:forEach>
						 </c:if>
						  </tbody>
					  </table>   
					 <ul class="pagination " style="background: rgba(255,255,255,0.1);">
				       <c:choose>
					  	<c:when test="${page.currentPageNo == 1}">
					  	<li class="active"><a href="javascript:void();" title="首页">首页</a></li>
					  	</c:when>
					  	<c:otherwise>
					  	<li><a href="pubfCookList.html?currentpage=1" title="首页">首页</a></li>
					  	</c:otherwise>
					  </c:choose>
				        
						<c:if test="${page.prevPages!=null}">
							<c:forEach items="${page.prevPages}" var="num">
								<li><a href="adminList.html?currentpage=${num}"
									class="number" title="${num}">${num}</a></li>
							</c:forEach>
						</c:if>
						<li class="active">
						  <a href="#" title="${page.currentPageNo}">${page.currentPageNo}</a>
						</li>
						<c:if test="${page.nextPages!=null}">
							<c:forEach items="${page.nextPages}" var="num">
								<li><a href="pubfCookList.html?currentpage=${num}&status=${status.index}" title="${num}">
								${num} </a></li>
							</c:forEach>
						</c:if>
						<c:if test="${page.totalPageCount !=null}">
							<c:choose>
						  	<c:when test="${page.currentPageNo == page.totalPageCount}">
						  	<li class="active"><a href="javascript:void();" title="尾页">尾页</a></li>
						  	</c:when>
						  	<c:otherwise>
						  	<li><a href="pubfCookList.html?currentpage=${page.totalPageCount}" title="尾页">尾页</a></li>
						  	</c:otherwise>
						    </c:choose>
					    </c:if>
						<c:if test="${page.totalPageCount == null}">
						<li class="active"><a href="javascript:void();" title="尾页">尾页</a></li>
					  	</c:if>
		         	</ul>
				  </div>
				</div>
			</div><!--/span-->
		</div>
		
	<div class="modal fade" id="viewFoodCookDiv">
		  <div class="tile p-15" >
			<div class="modal-header">
				<button type="button" class="close viewFookCookcancel" data-dismiss="modal">×</button>
				<h3>查看菜品营养信息</h3>
			</div>
			 <form   class="model-form"  >
			 <ul id="view_formtips"></ul>
				<input id="v_id" type="hidden" value=""/>
			    	<div class="form-group" >
					<label>菜品名称：</label>
					<input id="m_fName" type="text" value="" class="form-control input-sm"/>
					</div>	
			</form>
			<div class="modal-footer">
				<a href="#" class="btn viewFookCookcancel" data-dismiss="modal">关闭</a>
			</div>
	 </div>
	 </div>
	
<%@include file="/WEB-INF/pages/common/foot.jsp"%>
	 <script type="text/javascript" src="${pageContext.request.contextPath}/statics/localjs/fcooklist.js"></script> 