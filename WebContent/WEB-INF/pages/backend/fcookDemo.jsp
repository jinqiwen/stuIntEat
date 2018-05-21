<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/common/head.jsp"%>
<style>
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
    height: 581px;
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
                    <h3 class="block-title">菜谱列表</h3>
                    <div class="table-responsive overflow">
					 	<div class="box-icon">
							<span class="icon32 icon-color icon-add custom-setting adduser"> </span> 
							</div>
						<form action="materialList.html" method="post">
							<div class="searcharea">
							学校:
						<!-- 	注意在变量中用的不是引用,比如此处的school 和下面的admin.school在初始是一个没值，一个有值，其反应 请求和响应的区别 -->
							<input type="text" name="s_school" value="${school}" class="form-control m-b-10" />
							食堂：
							<input type="text" name="s_froom" value="${froom}" class="form-control m-b-10"/>
							<%-- 是否启用：
							 <select name="s_isStart" style="width:100px;" class="btn btn-sm btn-alt dropdown-toggle">
								<option value="" selected="selected">--请选择--</option>
								　　 <c:if test="${s_isStart == 1}">  
									　　<option value="1" selected="selected">启用</option>
										<option value="2">未启用</option>
								　　 </c:if>  
								　　 <c:if test="${s_isStart == 2}">  
									　    <option value="2" selected="selected">未启用</option>
										<option value="1">启用</option>
								 	 </c:if>
								　　  <c:if test="${s_isStart == null || s_isStart == ''}">  
									　    <option value="2">未启用</option>
										<option value="1">启用</option>
								 	</c:if>
						 	</select> --%>
							<button type="submit" class="btn btn-primary"><i class="icon-search icon-white"></i> 查询 </button>
						</div>
						</form>
					<div class="block-area" id="responsiveTable">
                    <div class="table-responsive overflow">
						<table class="table tile">
						  <thead>
							  <tr>
						    	  <th>序列号</th>
								  <th style="width: 200px;">菜品</th>
								  <th>菜品名称</th>
								  <th>学校</th>
								  <th>食堂</th>
								  <th>管理员编号</th>
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
								<td class="center">${fCook.school}</td>
								<td class="center">${fCook.froom}</td>
								<td class="center">${fCook.adminId}</td>
								<td class="center">
								<a class="btn btn-success viewFoodCookMake" href="#" id="${fCook.id}" fname="${fCook.fName}">
										<i class="icon-zoom-in icon-white"></i>  
										查看成分详情                                           
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
					  	<li><a href="materialList.html?currentpage=1" title="首页">首页</a></li>
					  	</c:otherwise>
					  </c:choose>
				        
						<c:if test="${page.prevPages!=null}">
							<c:forEach items="${page.prevPages}" var="num">
								<li><a href="fCookList.html?currentpage=${num}"
									class="number" title="${num}">${num}</a></li>
							</c:forEach>
						</c:if>
						<li class="active">
						  <a href="#" title="${page.currentPageNo}">${page.currentPageNo}</a>
						</li>
						<c:if test="${page.nextPages!=null}">
							<c:forEach items="${page.nextPages}" var="num">
								<li><a href="fCookList.html?currentpage=${num}&status=${status.index}" title="${num}">
								${num} </a></li>
							</c:forEach>
						</c:if>
						<c:if test="${page.totalPageCount !=null}">
							<c:choose>
						  	<c:when test="${page.currentPageNo == page.totalPageCount}">
						  	<li class="active"><a href="javascript:void();" title="尾页">尾页</a></li>
						  	</c:when>
						  	<c:otherwise>
						  	<li><a href="fCookList.html?currentpage=${page.totalPageCount}" title="尾页">尾页</a></li>
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
				<input id="v_id" type="hidden" value=""/>
			    	<!-- <div class="form-group" >
					<label>菜品名称：</label>
					<input id="m_fName" type="text" value="" class="form-control input-sm"/>
					</div> -->
					
			</form>
				
			
			<div class="modal-footer">
				<a href="#" class="btn viewFookCookcancel" data-dismiss="modal">关闭</a>
			</div>
	 </div>
	 </div>
	
<%@include file="/WEB-INF/pages/common/foot.jsp"%>
	 <script type="text/javascript" src="${pageContext.request.contextPath}/statics/localjs/fcooklist.js"></script> 
	<script src="${pageContext.request.contextPath}/statics/js2/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/statics/js2/bootstrap.min.js"></script>