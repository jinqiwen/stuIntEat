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
                    <h3 class="block-title">菜谱列表</h3>
                    <div class="table-responsive overflow">
					 	<div class="box-icon">
							<span class="icon32 icon-color icon-add custom-setting adduser"> </span> 
							</div>
						<form action="foodCookList.html" method="post">
							<div class="searcharea">
							窗口编号:
						<!-- 	注意在变量中用的不是引用,比如此处的school 和下面的admin.school在初始是一个没值，一个有值，其反应 请求和响应的区别 -->
							<input type="text" name="s_windowId" value="${s_windowId}" class="form-control m-b-10" />
							菜品名称：
							<input type="text" name="s_fName" value="${s_fName}" class="form-control m-b-10" />
							<button type="submit" class="btn btn-primary" style="position: relative;left: -30px;"><i class="icon-search icon-white"></i> 查询 </button>
							<ul class="list-inline list-mass-actions pull-left" style="position: relative;left: 576px;">
                            <li>
                                <a data-toggle="modal" href="#compose-message" title="" class="tooltips addFcook" data-original-title="添加新菜品">
                                    <i class="sa-list-add"></i>
                                </a>
                            </li>
                        </ul>
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
								  <th>分类</th>
								  <th>窗口</th>
								  <th>材料</th>
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
								<td class="center">
								<a class="btn btn-success viewFoodCookMake" href="#" id="${fCook.id}" fName="${fCook.fName}">
										<i class="icon-zoom-in icon-white"></i>  
										查看成分详情                                           
								</a>
								<a class="btn btn-success viewFNurtration" href="#" id="${fCook.id}" >
										<i class="icon-zoom-in icon-white"></i>  
										查看营养成分详情                                           
								</a>
								<c:if test="${fCook.isPub==1}">
								<a class="btn btn-success   pubFoodCook" href="#" id="${fCook.id}" fName="${fCook.fName}" style="background:#66CD00;">
										<i class="icon-zoom-in icon-white"></i>  
										已上架                                          
								</a>
								</c:if>
								<c:if test="${fCook.isPub==0}">
								<a class="btn btn-success   pubFoodCook" href="#" id="${fCook.id}" fName="${fCook.fName}">
										<i class="icon-zoom-in icon-white"></i>  
										上架                                          
								</a>
								</c:if>
								<a class="btn btn-success   modifyFoodCook"  id="${fCook.id}" fName="${fCook.fName}">
										<i class="icon-zoom-in icon-white"></i>  
										修改                             
								</a>
								<a class="btn btn-success   deleteFoodCook" href="#" id="${fCook.id}" fName="${fCook.fName}">
										<i class="icon-zoom-in icon-white"></i>  
										删除                             
								</a>
								</td>
							</tr>
						  </c:forEach>
						 </c:if>
						  </tbody>
					  </table>   
					<!-- <div class="media text-center"> -->
			<ul class="pagination " style="background: rgba(255,255,255,0.1);">
				       <c:choose>
					  	<c:when test="${page.currentPageNo == 1}">
					  	<li class="active"><a href="javascript:void();" title="首页">首页</a></li>
					  	</c:when>
					  	<c:otherwise>
					  	<li><a href="foodCookList.html?currentpage=1" title="首页">首页</a></li>
					  	</c:otherwise>
					  </c:choose>
				        
						<c:if test="${page.prevPages!=null}">
							<c:forEach items="${page.prevPages}" var="num">
								<li><a href="foodCookList.html?currentpage=${num}"
									class="number" title="${num}">${num}</a></li>
							</c:forEach>
						</c:if>
						<li class="active">
						  <a href="#" title="${page.currentPageNo}">${page.currentPageNo}</a>
						</li>
						<c:if test="${page.nextPages!=null}">
							<c:forEach items="${page.nextPages}" var="num">
								<li><a href="foodCookList.html?currentpage=${num}&status=${status.index}" title="${num}">
								${num} </a></li>
							</c:forEach>
						</c:if>
						<c:if test="${page.totalPageCount !=null}">
							<c:choose>
						  	<c:when test="${page.currentPageNo == page.totalPageCount}">
						  	<li class="active"><a href="javascript:void();" title="尾页">尾页</a></li>
						  	</c:when>
						  	<c:otherwise>
						  	<li><a href="materialList.html?currentpage=${page.totalPageCount}" title="尾页">尾页</a></li>
						  	</c:otherwise>
						    </c:choose>
					    </c:if>
						<c:if test="${page.totalPageCount == null}">
						<li class="active"><a href="javascript:void();" title="尾页">尾页</a></li>
					  	</c:if>
			</ul>
			<%--  <ul class="pagination">
					  <c:choose>
					  	<c:when test="${page.currentPageNo == 1}">
					  	<li class="active"><a href="javascript:void();" title="首页">首页</a></li>
					  	</c:when>
					  	<c:otherwise>
					  	<li><a href="/backend/userlist.html?currentpage=1&s_loginCode=${s_loginCode}&s_referCode=${s_referCode}&s_roleId=${s_roleId}&s_isStart=${s_isStart}" title="首页">首页</a></li>
					  	</c:otherwise>
					  </c:choose>
				        
						<c:if test="${page.prevPages!=null}">
							<c:forEach items="${page.prevPages}" var="num">
								<li><a href="/backend/userlist.html?currentpage=${num}&s_loginCode=${s_loginCode}&s_referCode=${s_referCode}&s_roleId=${s_roleId}&s_isStart=${s_isStart}"
									class="number" title="${num}">${num}</a></li>
							</c:forEach>
						</c:if>
						<li class="active">
						  <a href="#" title="${page.currentPageNo}">${page.currentPageNo}</a>
						</li>
						<c:if test="${page.nextPages!=null}">
							<c:forEach items="${page.nextPages}" var="num">
								<li><a href="/backend/userlist.html?currentpage=${num}&s_loginCode=${s_loginCode}&s_referCode=${s_referCode}&s_roleId=${s_roleId}&s_isStart=${s_isStart}" title="${num}">
								${num} </a></li>
							</c:forEach>
						</c:if>
						<c:if test="${page.totalPageCount !=null}">
							<c:choose>
						  	<c:when test="${page.currentPageNo == page.totalPageCount}">
						  	<li class="active"><a href="javascript:void();" title="尾页">尾页</a></li>
						  	</c:when>
						  	<c:otherwise>
						  	<li><a href="/backend/userlist.html?currentpage=${page.totalPageCount}&s_loginCode=${s_loginCode}&s_referCode=${s_referCode}&s_roleId=${s_roleId}&s_isStart=${s_isStart}" title="尾页">尾页</a></li>
						  	</c:otherwise>
						    </c:choose>
					    </c:if>
						<c:if test="${page.totalPageCount == null}">
						<li class="active"><a href="javascript:void();" title="尾页">尾页</a></li>
					  	</c:if>
						
					  </ul> --%>
				 <!--  </div> -->
				</div>
			</div><!--/span-->
	</div>
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
	<div class="modal fade" id="modifyFoodCookDiv">
		  <div class="tile p-15" >
			<div class="modal-header">
				<button type="button" class="close modifyFookCookcancel" data-dismiss="modal">×</button>
				<h3>修改菜品信息</h3>
			</div>
			 <ul id="modify_formtips"></ul>
			 <form  action="saveFoodCook.html" class="model-form" id="modify-froom" enctype="multipart/form-data" method="post" onsubmit="return modifyfCookFunction();">
				    <input id="m_id" type="hidden" value=""/>
				    <div id="m_fmake"></div>
			    <!-- 	<div class="form-group" >
					<label>菜品名称：</label>
					<input id="m_fName" type="text" value="" class="form-control input-sm"/>
					</div> -->
				<!-- <ul class="downul" id="m_upload" >
					<li>
					<label>上传菜品图片：</label>
						<input type="hidden" id="a_fileInputIDPath" name="idCardPicPath" value=""/>
						<input id="a_fileInputID" name="a_fileInputID" type="file" class="fileInput"/>
						<input type="button" id="a_uploadbtnID" value="上传" class="fileInput" style="width:66px;"/>
						<p><span style="color:red;font-weight: bold;">*注：1、大小不得超过5m.2、图片格式：jpg、png、jpeg、pneg</span></p>
						<div id="a_idPic"></div>
					 </li>
				</ul> -->
				
					<div id="m_moreFcook" ></div>
				<!-- 	<input type="submit" class="btn btn-primary " value="保存" /> -->
			<!-- </form> -->
				<a href="#" class="btn moreFookCook"  style="margin-top: 10px;width: 200px;" id="moreFookCook1">显示更多修改选项</a>
			<div class="modal-footer">
		     	<input type="submit" class="btn btn-primary "  value="保存" />
				<a href="#" class="btn modifyFookCookcancel" data-dismiss="modal">关闭</a>
			</div> 
			</form>
	 </div>
	 </div>
	 
	 
	 <div class="modal fade" id="addFoodCookDiv">
		  <div class="tile p-15" >
			<div class="modal-header">
				<button type="button" class="close addFookCookcancel" data-dismiss="modal">×</button>
				<h3>添加菜品信息</h3>
			</div>
			 <ul id="add_formtips"></ul>
			 <form  action="addFoodCookAndMaterial.html" class="model-form" enctype="multipart/form-data" method="post" onsubmit="return addfCookAndfMakeFunction();">
				    <input id="a_id" type="hidden" value=""/>
				    <div id="a_fmake"></div>
			    <!-- 	<div class="form-group" >
					<label>菜品名称：</label>
					<input id="m_fName" type="text" value="" class="form-control input-sm"/>
					</div> -->
				<!-- <ul class="downul" id="m_upload" >
					<li>
					<label>上传菜品图片：</label>
						<input type="hidden" id="a_fileInputIDPath" name="idCardPicPath" value=""/>
						<input id="a_fileInputID" name="a_fileInputID" type="file" class="fileInput"/>
						<input type="button" id="a_uploadbtnID" value="上传" class="fileInput" style="width:66px;"/>
						<p><span style="color:red;font-weight: bold;">*注：1、大小不得超过5m.2、图片格式：jpg、png、jpeg、pneg</span></p>
						<div id="a_idPic"></div>
					 </li>
				</ul> -->
			<div class="form-group">
				<label>菜品名称</label>
				<input id="a_fName" type="text" value="" class="form-control input-sm" name="a_fName" />
			</div>
			<!-- <div class="form-group even-group"> -->
			 <div class="form-group even-group">
				<label>每份含量(g)</label>
				<input id="a_everyone" type="text" value="" class="form-control input-sm" name="a_everyone" />
			</div>
			<div class="form-group">
				<label>分类</label>
				<input id="a_fClassify" type="text" value="" class="form-control input-sm" name="a_fClassify" />
			</div>
			<div class="form-group even-group">
				<label>窗口</label>
				<input id="a_windowId" type="text" value="" class="form-control input-sm" name="a_windowId" />
			</div>
			<div class="form-group">
				<label>价格</label>
				<input id="a_fPrice" type="text" value="" class="form-control input-sm" name="a_fPrice" />
			</div>
			<!-- style="position: relative;top: 21px;" -->
			<div class="form-group even-group" >
                <label>是否上架 (1代表上架，0代表不上架)</label>
				<input id="a_isPub" type="text" value="" class="form-control input-sm" name="a_isPub" />
			</div>
		
		
		<c:forEach var="i" begin="0" end="5">
         <div class="form-group">
			    <label>原材料${i+1}</label>
			 	<input id="a_${i}" type="text" value="" class="form-control input-sm inputMaterial"   name="a_${i}"/>
			</div>
			<div class="form-group even-group">
			    <label>含量</label>
			 	<input id="alabel_${i}" type="text" value="" class="form-control input-sm" name="alabel_${i}" />
			</div>
        </c:forEach>
        <div id="moreFookMake1"></div>
        <a href="#" class="btn moreFookMake"  style="margin-top: 10px;width: 200px;" >更多材料添加</a>
       <div class="clear"></div>
       <ul class="downul" id="m_upload">
					<li>
					<label>上传菜品图片：</label>
						<input type="hidden" id="a_fileInputIDPath" name="idCardPicPath" value=""/>
						<input id="a_fileInputID" name="a_fileInputID" type="file" class="fileInput"/>
						<input type="button" id="a_uploadbtnID" style="width:66px;" class="fileInput" value="上传"  />
						<!-- <input type="button" id="a_uploadbtnID" value="上传" class="fileInput" style="width:66px;"/> -->
						<p><span style="color:red;font-weight: bold;">*注：1、大小不得超过5m.2、图片格式：jpg、png、jpeg、pneg</span></p>
						<div id="a_idPic"></div>
			       </li>
		</ul>
		
				<!-- 	<input type="submit" class="btn btn-primary " value="保存" /> -->
			<!-- </form> -->
			<div class="modal-footer">
		     	<input type="submit" class="btn btn-primary "  value="保存" />
				<a href="#" class="btn addFookCookcancel" data-dismiss="modal">关闭</a>
			</div> 
			</form>
	 </div>
	 </div>
<%@include file="/WEB-INF/pages/common/foot.jsp"%>
	 <script type="text/javascript" src="${pageContext.request.contextPath}/statics/localjs/fcooklist.js"></script> 
	<script src="${pageContext.request.contextPath}/statics/js2/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/statics/js2/ajaxfileupload.js"></script>
	<script src="${pageContext.request.contextPath}/statics/js2/bootstrap.min.js"></script>