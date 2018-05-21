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
     height: 578px;
     width: 605px;
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
</style>
<div class="block-area" id="responsiveTable">
                    <h3 class="block-title">管理员列表</h3>
                    <div class="table-responsive overflow">
					 	<div class="box-icon">
							<span class="icon32 icon-color icon-add custom-setting adduser"> </span> 
							</div>
						<form action="backend/userlist.html" method="post">
							<div class="searcharea">
							管理员名称:
						<!-- 	注意在变量中用的不是引用,比如此处的school 和下面的admin.school在初始是一个没值，一个有值，其反应 请求和响应的区别 -->
							<input type="text" name="s_loginCode" value="" class="form-control m-b-10" />
							所属学校：
							<input type="text" name="s_referCode" value="" class="form-control m-b-10"/>
							角色：
							 <select name="s_roleId" style="width:100px;" class="btn btn-sm btn-alt dropdown-toggle">
					 			<option value="" selected="selected">--请选择--</option>
					 			<c:if test="${roleList != null}">
					 				<c:forEach items="${roleList}" var="role">
					 					<option <c:if test="${s_roleId == role.id}">selected = "selected"</c:if>
					 					value="${role.id}">${role.roleName}</option>
					 				</c:forEach>
					 			</c:if>
					 		</select>
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
						
					<ul class="list-inline list-mass-actions pull-left" style="position: relative;left: 576px;top: -33px;">
                            <li>
                                <a data-toggle="modal"  title="" class="tooltips addadmin" data-original-title="添加新管理员" data-toggle="modal"  data-target="#addAdminDiv">
                                    <i class="sa-list-add addadmin"></i>
                                </a>
                            </li>
                        </ul>
                        	</form>
					<!-- <button class="btn btn-info adduser"  style="position: absolute;left: 1461px;top: 215px;">
		            <i class="icon-edit icon-white"></i>  
							增加                                          
		          	</button> -->
					<div class="block-area" id="responsiveTable">
                    <div class="table-responsive overflow">
						<table class="table table-bordered table-hover tile" style="width: 1644px;position: relative;left: -15px;top: -30px;">
						  <thead>
							  <tr>
							      <th>序列号</th>
								  <th>管理员名称</th>
								  <th>职位</th>
								  <th>学校</th>
								  <th>食堂位置</th>
								  <th>角色</th>
								  <th>注册时间</th>
								  <th>操作</th>
							  </tr>
						  </thead>   
						  <tbody>
						  
						  <c:if test="${page.items != null}">
						  <c:forEach items="${page.items}"  var ="admin" varStatus="status">
							<tr>
						     	<td class="center">${status.index + 1} </td>
<!-- 注意此admin 不是pojo的admin ,此admin是page中的adminList,此admin是一个别名 -->
								<td class="center">${admin.name}</td>
								<td class="center">${admin.position}</td>
								<td class="center">${admin.school}</td>
								<td class="center">${admin.froom}</td>
								<td class="center">
								<c:if test="${admin.roleId == 1}">总部总经理</c:if>
                    			<c:if test="${admin.roleId == 2}">分部总经理</c:if>
                    			<c:if test="${admin.roleId == 3}">食堂总经理</c:if>
                    			<c:if test="${admin.roleId == 4}">食堂副经理</c:if>
								</td>
								<%-- <td class="center">
								<c:if test="${admin.isStart == 2}"><input type="checkbox" disabled="disabled"/></c:if>
                    			<c:if test="${admin.isStart == 1}"><input type="checkbox" checked="true" disabled="disabled"/></c:if>
								</td> --%>
								<td class="center">
								<fmt:formatDate value="${admin.createTime}" pattern="yyyy-MM-dd"/>
								</td>
								<td class="center">
									<a class="btn btn-success viewadmin" href="#" id="${admin.id}">
										<i class="icon-zoom-in icon-white"></i>  
										查看                                           
									</a>
									<a class="btn btn-info modifyadmin" href="#" id="${admin.id}">
										<i class="icon-edit icon-white"></i>  
										修改                                            
									</a>
									<a class="btn btn-danger deladmin" href="#"  id="${admin.id}">
										<i class="icon-trash icon-white"></i> 
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
					  	<li><a href="/backend/adminList.html?currentpage=1" title="首页">首页</a></li>
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
								<li><a href="adminList.html?currentpage=${num}&status=${status.index}" title="${num}">
								${num} </a></li>
							</c:forEach>
						</c:if>
						<c:if test="${page.totalPageCount !=null}">
							<c:choose>
						  	<c:when test="${page.currentPageNo == page.totalPageCount}">
						  	<li class="active"><a href="javascript:void();" title="尾页">尾页</a></li>
						  	</c:when>
						  	<c:otherwise>
						  	<li><a href="adminList.html?currentpage=${page.totalPageCount}" title="尾页">尾页</a></li>
						  	</c:otherwise>
						    </c:choose>
					    </c:if>
						<c:if test="${page.totalPageCount == null}">
						<li class="active"><a href="javascript:void();" title="尾页">尾页</a></li>
					  	</c:if>
		         	</ul>
		         	
				  </div>
				</div>
</div>
</div>
		
		
		<!-- 修改管理员model ------start-->   
          <div  class="modal  fade" id="modifyAdminDiv">
             <div class="tile p-15" >
             <div class="modal-header modelH">
				<button type="button" class="close" data-dismiss="modal">×</button>
				<h3 class="model-h">修改管理员信息</h3>
			</div>
			<ul id="modify_formtip"></ul> 
                        <form  action="modifyadmin.html" class="model-form"  method="post" onsubmit="return modifyAdminFunction();">
                          	<input id="m_id" type="hidden" value="" name="m_id"/>
                            <div class="form-group">
                                <label >姓名</label>
                                <input type="text" id="m_name" class="form-control input-sm"  placeholder="name" name="m_name">
                            </div>
                            
                            <div class="form-group even-group">
                                 <label >职位</label>
                                <input type="text" id="m_position" class="form-control input-sm"  placeholder="position" name="m_position">
                            </div>
                             <div class="form-group">
                                 <label >性别</label>
                                <input type="text" id="m_sex" class="form-control input-sm"  placeholder="sex" name="m_sex">
                            </div>
                             <div class="form-group even-group">
                                 <label >学校</label>
                                <input type="text" id="m_school" class="form-control input-sm"  placeholder="school" name="m_school">
                            </div>
                             <div class="form-group">
                                 <label >食堂</label>
                                <input type="text" id="m_froom" class="form-control input-sm" placeholder="fRoom" name="m_froom">
                            </div>
                             <div class="form-group even-group">
                                 <label >部门</label>
                                <input type="text" id="m_department" class="form-control input-sm"  placeholder="department" name="m_department">
                            </div>
                             <div class="form-group">
                                 <label >角色</label>
                                <input type="text" id="m_role" class="form-control input-sm"  placeholder="role" name="m_role">
                            </div> 
                    <div class="modal-footer model_foot">
                   <a href="#" class="btn modifyusercancel" data-dismiss="modal">取消</a>
				   <input type="submit"  class="btn btn-primary" value="保存" />
			      </div>                    
                        </form>
			      </div>
                    </div>
      <!-- 修改管理员model ------end-->  
	<!-- 查看管理员model ------start-->   
          <div  class="modal  fade" id="viewAdminDiv">
             <div class="tile p-15" >
             <div class="modal-header modelH">
				<button type="button" class="close" data-dismiss="modal">×</button>
				<h3 class="model-h">查看管理员信息</h3>
			</div>
                        <form  class="model-form" >
                          	<input id="v_id" type="hidden" value="" name="id"/>
                            <div class="form-group">
                                <label for="exampleInputEmail1">姓名</label>
                                <input type="text" id="v_name" class="form-control input-sm" id="exampleInputEmail1" placeholder="name"  readonly>
                            </div>
                            
                            <div class="form-group even-group">
                                 <label for="exampleInputEmail1">职位</label>
                                <input type="text" id="v_position" class="form-control input-sm" id="exampleInputPassword1" placeholder="position" name="position"  readonly>
                            </div>
                             <div class="form-group">
                                 <label for="exampleInputEmail1">性别</label>
                                <input type="text" id="v_sex" class="form-control input-sm" id="exampleInputPassword1" placeholder="sex" name="sex"  readonly>
                            </div>
                             <div class="form-group even-group">
                                 <label for="exampleInputEmail1">学校</label>
                                <input type="text" id="v_school" class="form-control input-sm" id="exampleInputPassword1" placeholder="school" name="school"  readonly>
                            </div>
                             <div class="form-group">
                                 <label for="exampleInputEmail1">食堂</label>
                                <input type="text" id="v_froom" class="form-control input-sm" id="exampleInputPassword1" placeholder="fRoom" name="fRoom"  readonly>
                            </div>
                             <div class="form-group even-group">
                                 <label for="exampleInputEmail1">部门</label>
                                <input type="text" id="v_department" class="form-control input-sm" id="exampleInputPassword1" placeholder="department" name="department"  readonly>
                            </div>
                             <div class="form-group">
                                 <label for="exampleInputEmail1">角色</label>
                                <input type="text" id="v_role" class="form-control input-sm" id="exampleInputPassword1" placeholder="role" name="role"  readonly>
                            </div>   
                             <div class="form-group even-group">
                                 <label for="exampleInputEmail1">公司</label>
                                <input type="text" id="v_company" class="form-control input-sm" id="exampleInputPassword1" placeholder="company" name="company"  readonly>
                            </div>   
                             <div class="form-group">
                                 <label for="exampleInputEmail1">账号创建时间</label>
                                <input type="text" id="v_createTime" class="form-control input-sm" id="exampleInputPassword1" placeholder="ceateTime" name="createTime"  readonly>
                            </div>  
                              <div class="form-group even-group">
                                 <label for="exampleInputEmail1">联系电话</label>
                                <input type="text" id="v_telephone" class="form-control input-sm" id="exampleInputPassword1" placeholder="ceateTime" name="telephone"  readonly>
                            </div>                        
                        </form>
                       
                  <div class="modal-footer">
                   <a href="#" class="btn modifyusercancel" data-dismiss="modal">关闭</a>
			      </div>
			      </div>
                    </div>
      <!-- 查看管理员model ------end-->  
      <!-- 添加管理员model ------start-->   
          <div  class="modal  fade" id="addAdminDiv">
             <div class="tile p-15" >
             <div class="modal-header modelH">
				<button type="button" class="close addadmincancel" data-dismiss="modal" >×</button>
				<h3 class="model-h">添加管理员信息</h3>
			</div>
			<ul id="add_formtip"></ul> 
                        <form action="addadmin.html" class="model-form"  method="post"  onsubmit="return addAdminFunction();">
                            <div class="form-group">
                                <label for="exampleInputEmail1">姓名</label>
                                <input type="text" id="a_name" class="form-control input-sm" id="exampleInputEmail1" placeholder="name"  name="a_name">
                            </div>
                            <div class="form-group even-group">
                                <label for="exampleInputEmail1">账号</label>
                                <input type="text" id="a_loginCode" class="form-control input-sm" id="exampleInputEmail1" placeholder="loginCode"  name="a_loginCode">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">密码</label>
                                <input type="text" id="a_password" class="form-control input-sm" id="exampleInputEmail1" placeholder="password"  name="a_password">
                            </div>
                            <div class="form-group even-group">
                                 <label for="exampleInputEmail1">职位</label>
                                <input type="text" id="a_position" class="form-control input-sm" id="exampleInputPassword1" placeholder="position" name="a_position"  >
                            </div>
                             <div class="form-group">
                                 <label for="exampleInputEmail1">性别</label>
                                <input type="text" id="a_sex" class="form-control input-sm" id="exampleInputPassword1" placeholder="sex"  name="a_sex" >
                            </div>
                             <div class="form-group even-group">
                                 <label for="exampleInputEmail1">学校</label>
                                <input type="text" id="a_school" class="form-control input-sm" id="exampleInputPassword1" placeholder="school"  name="a_school"  >
                            </div>
                             <div class="form-group">
                                 <label for="exampleInputEmail1">食堂</label>
                                <input type="text" id="a_froom" class="form-control input-sm" id="exampleInputPassword1" placeholder="fRoom" name="a_froom"  >
                            </div>
                             <div class="form-group even-group">
                                 <label for="exampleInputEmail1">部门</label>
                                <input type="text" id="a_department" class="form-control input-sm" id="exampleInputPassword1" placeholder="department" name="a_department"  >
                            </div>
                             <div class="form-group">
                                 <label for="exampleInputEmail1">角色</label>
                                <input type="text" id="a_role" class="form-control input-sm" id="exampleInputPassword1" placeholder="role" name="a_role"  >
                            </div>   
                             <div class="form-group even-group">
                                 <label for="exampleInputEmail1">联系电话</label>
                                <input type="text" id="a_telephone" class="form-control input-sm" id="exampleInputPassword1" placeholder="company" name="a_telephone" >
                            </div>                    
                          <div class="modal-footer">
                   <input type="submit"  class="btn btn-primary" value="保存" />
                   <a href="#" class="btn addadmincancel" data-dismiss="modal">取消</a>
                   </div>
                        </form>
                
			      </div>
			      </div>
                   
      <!-- 添加管理员model ------end-->  
<%@include file="/WEB-INF/pages/common/foot.jsp"%>
	 <script type="text/javascript" src="${pageContext.request.contextPath}/statics/localjs/userlist.js"></script> 
	<script src="${pageContext.request.contextPath}/statics/js2/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/statics/js2/bootstrap.min.js"></script>