<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/common/head.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css2/jquery-ui.css">
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
    height: 790px;
    width: 903px;
    position: relative;
    left: 497px;
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
                    <h3 class="block-title">原材料列表</h3>
                    <div class="table-responsive overflow">
					 	<div class="box-icon">
							<span class="icon32 icon-color icon-add custom-setting adduser"> </span> 
							</div>
						<form action="materiallist.html" method="get">
							<div class="searcharea">
							原材料名称:
							<input type="text" name="s_mName" value="${mName}" class="form-control m-b-10" />
							<button type="submit" class="btn btn-primary"><i class="icon-search icon-white"></i> 查询 </button>
						</div>
						</form>
					<div class="block-area" id="responsiveTable">
                    <div class="table-responsive overflow">
						<table class="table tile">
						  <thead>
							  <tr>
							      <th>序列号</th> 
								  <th>原材料名称</th>
								  <th>库存量(kg)</th>
								  <th>更新时间</th>
                                  <th>操作</th>
							  </tr>
						  </thead>   
						  <tbody>
						  
						   <c:if test="${page.items != null}">
						  <c:forEach items="${page.items}" var="MNum" varStatus="status">
							<tr>
						     	<td class="center">${status.index + 1} </td>
								<td class="center">${MNum.mName}</td>
								<td class="center"><input type="text" id="${MNum.id}" style="width:116px;" value="${MNum.content}" class="form-control input-sm" onblur="modifyContent();"/><span id="inputmodify" style="position: relative;left: 129px;top: -19px;"></span></td>
								<td class="center">${MNum.updateTime}</td>
								<td class="center">
								<a class="btn btn-success viewMNurtrition" href="#" id="${MNum.id}">
										<i class="icon-zoom-in icon-white"></i>  
										查看原材料营养成分                                         
								</a>
								<a class="btn btn-success addMaterial" href="#" id="${MNum.id}">
										<i class="icon-zoom-in icon-white"></i>  
										添加                                          
								</a>
								<a class="btn btn-success delMaterial" href="#" id="${MNum.id}" name="${MNum.mName}">
										<i class="icon-zoom-in icon-white"></i>  
										删除                                         
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
					  	<li><a href="materiallist.html?currentpage=1" title="首页">首页</a></li>
					  	</c:otherwise>
					  </c:choose>
				        
						<c:if test="${page.prevPages!=null}">
							<c:forEach items="${page.prevPages}" var="num">
								<li><a href="materiallist.html?currentpage=${num}"
									class="number" title="${num}">${num}</a></li>
							</c:forEach>
						</c:if>
						<li class="active">
						  <a href="#" title="${page.currentPageNo}">${page.currentPageNo}</a>
						</li>
						<c:if test="${page.nextPages!=null}">
							<c:forEach items="${page.nextPages}" var="num">
								<li><a href="materiallist.html?currentpage=${num}&status=${status.index}" title="${num}">
								${num} </a></li>
							</c:forEach>
						</c:if>
						<c:if test="${page.totalPageCount !=null}">
							<c:choose>
						  	<c:when test="${page.currentPageNo == page.totalPageCount}">
						  	<li class="active"><a href="javascript:void();" title="尾页">尾页</a></li>
						  	</c:when>
						  	<c:otherwise>
						  	<li><a href="materiallist.html?currentpage=${page.totalPageCount}" title="尾页">尾页</a></li>
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
		
		 <div class="modal fade" id="viewMNurtritionDiv">
		  <div class="tile p-15" >
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">×</button>
				<h3>查看原材料营养信息</h3>
			</div>
			 <form   class="model-form"  >
				<input id="v_id" type="hidden" value=""/>
			    	<div class="form-group">
					<label>原材料：</label>
					<input id="v_mName" type="text" value="" class="form-control input-sm"/>
					</div>
					 <div class="form-group even-group">
					  <label>热量：</label>
					  <input id="v_heatCount" type="text" value="" class="form-control input-sm"/>
					</div>
					 <div class="form-group three-group" >
					  <label>脂肪：</label><input type="text" id="v_fat" value="" class="form-control input-sm"/>
					</div>
					 <div class="form-group ">
					  <label>纤维素：</label><input type="text" id="v_fibrin" value="" class="form-control input-sm"/>
					</div>
					 <div class="form-group even-group">
					  <label>维生素C：</label>
					  <input type="text" id="v_vC" value="" class="form-control input-sm"/>
					</div> 
					 <div class="form-group three-group">
					  <label>胡萝卜素：</label>
					  <input id="v_carotenes" type="text" value="" class="form-control input-sm"/>
					</div>
					 <div class="form-group">
					  <label>核黄素：</label><input type="text" id="v_riboflavin" value="" class="form-control input-sm"/>
					</div>
					 <div class="form-group even-group">
					  <label>胆固醇：</label>
					   <input type="text" id="v_cholesterol" value="" class="form-control input-sm"/>
					</div>
					<div class="form-group three-group">
					  <label>钙：</label><input type="text" id="v_ca" value="" class="form-control input-sm"/>
					</div>
					 <div class="form-group">
					  <label>锌：</label><input type="text" id="v_zn" value="" class="form-control input-sm"/>
					</div>
					 <div class="form-group even-group">
					  <label>锰：</label><input type="text" id="v_mn" value="" class="form-control input-sm"/>
					</div> 
					 <div class="form-group three-group">
					  <label>磷：</label><input type="text" id="v_p" value="" class="form-control input-sm"/>
					</div>
					 <div class="form-group">
					  <label>硒：</label><input type="text" id="v_se" value="" class="form-control input-sm"/>
					</div>
					 <div class="form-group even-group">
					  <label>碳水化合物：</label><input type="text" id="v_carbohy" value="" class="form-control input-sm"/>
					</div>
					 <div class="form-group  three-group">
					  <label>蛋白质：</label><input type="text" id="v_protein" value="" class="form-control input-sm"/>
					</div>
					 <div class="form-group ">
					  <label>维生素A：</label><input type="text" id="v_vA" value="" class="form-control input-sm"/>
					</div>
					 <div class="form-group even-group">
					  <label>维生素E：</label>
					  <input type="text" id="v_vE" value="" class="form-control input-sm"/>
					</div>
					 <div class="form-group  three-group">
					  <label>硫胺素：</label>
					  <input id="v_thiamine"  type="text"  value="" class="form-control input-sm"/>
					 
					</div>
					 <div class="form-group">
					  <label>烟酸：</label>
					  <input type="text" id="v_niacin" value="" class="form-control input-sm"/>
					</div>
					 <div class="form-group even-group">
					  <label>镁：</label>
					  <input type="text" id="v_mg" value="" class="form-control input-sm"/>
					</div>
					 <div class="form-group  three-group">
					  <label>铜：</label>
					  <input type="text" id="v_cu" value="" class="form-control input-sm"/>
					</div>
					 <div class="form-group ">
					  <label>钾：</label>
					  <input type="text" id="v_k" value="" class="form-control input-sm"/>
					</div>
					 <div class="form-group even-group">
					  <label>钠：</label>
					  <input type="text" id="v_na" value="" class="form-control input-sm"/>
					</div>
					 <div class="form-group  three-group">
					  <label>维生素B：</label>
					  <input type="text" id="v_vB" value="" class="form-control input-sm"/>
					</div>
					 <div class="form-group">
					  <label>材料分类：</label>
					  <input type="text" id="v_classify" value="" class="form-control input-sm"/>
					</div>
					 <!-- <div class="form-group even-group">
					  <label>创建时间：</label>
					  <input type="text" id="v_createTime" value="" class="form-control input-sm"/>
					</div> -->
					</form>
				
			
			<div class="modal-footer">
				<a href="#" class="btn viewMNurtritioncancel" data-dismiss="modal">关闭</a>
			</div>
	 </div>
	 </div>
	 
	         <!--  添加原材料信息 -->
		 <div class="modal fade" id="addMaterialDiv">
		  <div class="tile p-15" style="height: 400px;">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">×</button>
				<h3>添加原材料</h3>
			</div>
			<ul id="add_formtip"></ul> 
			 <form class="model-form"  >
				<input id="v_id" type="hidden" value=""/>
			    	<div class="form-group">
					<label for="checktags">原材料：</label>
					<!-- 在用户输入时给予提醒 -->
					 <div class="p-relative">
					<input id="a_mName" type="text" value="" class="form-control input-sm spinner-1 spinedit checktags" onblur="checkIsExist();" name="material"/>
					 </div>
					</div>
					 <div class="form-group even-group">
					  <label>库存量(kg)：</label>
					  <input id="a_content" type="text" value="" class="form-control input-sm"/>
					</div>
			</form>
			<div class="modal-footer">
			    <a href="#" class="btn saveMaterial" data-dismiss="modal">添加</a>
				<a href="#" class="btn addMaterialDivcancel" data-dismiss="modal">关闭</a>
			</div>
	 </div>
	 </div>
<%@include file="/WEB-INF/pages/common/foot.jsp"%>
	 <script type="text/javascript" src="${pageContext.request.contextPath}/statics/localjs/materiallist.js"></script> 
	<script src="${pageContext.request.contextPath}/statics/js2/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/statics/js2/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/statics/js2/jquery-ui.min.js"></script>
	<script>
  $( function() {
    var availableTags = [
      "土豆",
      "鸡蛋",
      "西红柿",
      "猪肉",
    ];
    $( ".checktags" ).autocomplete({
      source: availableTags
    });
  } );
  </script>