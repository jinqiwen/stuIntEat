<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/common/head.jsp"%>

<!-- <div>
	<ul class="breadcrumb" >
		<li><a href="#">后台管理</a> <span class="divider">/</span></li>
		<li><a href="/backend/userlist.html">用户管理</a></li>
	</ul>
</div> -->

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
							<input type="text" name="s_loginCode" value="${name}" class="form-control m-b-10" />
							所属学校：
							<input type="text" name="s_referCode" value="${school}" class="form-control m-b-10"/>
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
						</form>
					
					<button class="btn btn-info adduser"  style="position: absolute;left: 1461px;top: 215px;">
		            <i class="icon-edit icon-white"></i>  
							增加                                          
		          	</button>
					<div class="block-area" id="responsiveTable">
                    <div class="table-responsive overflow">
						<table class="table tile">
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
						  <c:forEach items="${page.items}" var="admin" varStatus="status">
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
									<a class="btn btn-danger deladmin" href="#"  name="${user.name}"  position="${admin.position}" id="${admin.id}" school="${admin.school}" picture="${admin.picture}">
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
					  	<li><a href="/backend/userlist.html?currentpage=1" title="首页">首页</a></li>
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
			</div><!--/span-->
		</div>
		

	<div class="modal hide fade" id="addUserDiv">
		<form action="/backend/adduser.html" enctype="multipart/form-data" method="post" onsubmit="return addUserFunction();">
			<div class="modal-header">
				<button type="button" class="close addusercancel" data-dismiss="modal">×</button>
				<h3>添加用户信息</h3>
			</div>
			<div class="modal-body">
				<ul id="add_formtip"></ul>
				<ul class="topul">
					<li>
					  <label>角色：</label>
					  <input id="selectrolename" type="hidden" name="roleName" value=""/>
					  <select id="selectrole" name="roleId" style="width:100px;">
			 			<option value="" selected="selected">--请选择--</option>
			 			<c:if test="${roleList != null}">
			 				<c:forEach items="${roleList}" var="role">
			 					<option value="${role.id}">${role.roleName}</option>
			 				</c:forEach>
			 			</c:if>
			 		 </select>
			 		 <span style="color:red;font-weight: bold;">*</span>
					</li>
					<li>
					  <label>会员类型：</label>
					  <input id="selectusertypename" type="hidden" name="userTypeName" value=""/>
					  <select id="selectusertype" name="userType" style="width:100px;">
			 			<option value="" selected="selected">--请选择--</option>
			 		 </select>
					</li>
					<li>
					  <label>用户名：</label><input type="text" id="a_logincode" name="loginCode" onkeyup="value=value.replace(/[^\w\.\/]/ig,'')"/>
					  <span style="color:red;font-weight: bold;">*</span>
					</li>
					<li>
					  <label>姓名：</label><input type="text" id="a_username" name="userName" />
					  <span style="color:red;font-weight: bold;">*</span>
					</li> 
					<li>
					  <label>性别：</label>
		 			  <select name="sex" style="width:100px;">
		 			    <option value="" selected="selected">--请选择--</option>
		 				<option value="男">男</option>
		 				<option value="女">女</option>
		 			  </select> 
					</li> 
					<li>
					  <label>证件类型：</label>
					  <input id="selectcardtypename" type="hidden" name="cardTypeName" value=""/>
					  <select id="selectcardtype" name="cardType" style="width:100px;">
			 			<option value="" selected="selected">--请选择--</option>
			 			<c:if test="${cardTypeList != null}">
			 				<c:forEach items="${cardTypeList}" var="cardType">
			 					<option value="${cardType.valueId}">${cardType.valueName}</option>
			 				</c:forEach>
			 			</c:if>
			 		 </select>
			 		 <span style="color:red;font-weight: bold;">*</span>
					</li>
					<li>
					  <label>证件号码：</label><input type="text" id="a_idcard" name="idCard" onkeyup="value=value.replace(/[^\w\.\/]/ig,'')"/>
					  <span style="color:red;font-weight: bold;">*</span>
					</li>
					<li>
					  <label>生日：</label>
					  <input class="Wdate" id="a_birthday" size="15" name="birthday" readonly="readonly"  type="text" onClick="WdatePicker();"/>
					  <!--<input type="text" class="input-xlarge datepicker" id="a_birthday" name="birthday" value="" readonly="readonly"/> -->
					</li>
					<li>
					  <label>收货国家：</label><input type="text" name="country" value="中国"/>
					</li>
					<li>
					  <label>联系电话：</label><input type="text" id="a_mobile" name="mobile" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
					  <span style="color:red;font-weight: bold;">*</span>
					</li>
					<li>
					  <label>Email：</label><input type="text" id="a_email" name="email"/>
					</li>
					<li>
					  <label>邮政编码：</label><input type="text" id="a_postCode" name="postCode" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
					</li>
					<li>
					  <label>开户行：</label><input type="text" id="a_bankname" name="bankName"/>
					  <span style="color:red;font-weight: bold;">*</span>
					</li>
					<li>
					  <label>开户卡号：</label><input type="text" id="a_bankaccount" name="bankAccount" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
					  <span style="color:red;font-weight: bold;">*</span>
					</li>
					<li>
					  <label>开户人：</label><input type="text" id="a_accountholder" name="accountHolder"/>
					  <span style="color:red;font-weight: bold;">*</span>
					</li>
					<li>
					  <label>推荐人：</label><input type="text" name="referCode" value="${user.loginCode}" readonly="readonly"/>
					</li>
					<li>
					  <label>注册时间：</label>
					   <input type="text" id="a_cdate"  value="" readonly="readonly"/>
					   </li>
					<li>
					  <label>是否启用：</label>
		 			  <select name="isStart" style="width:100px;">
		 				<option value="1" selected="selected">启用</option>
		 				<option value="2">不启用</option>
		 			  </select> <span style="color:red;font-weight: bold;">*</span>
					</li>
					<li class="lastli">
					  <label>收货地址：</label><textarea id="a_useraddress" name="userAddress"></textarea>
					</li>
					
				</ul>
				<div class="clear"></div>
				<ul class="downul">
					<li>
					<label>上传身份证图片：</label>
						<input type="hidden" id="a_fileInputIDPath" name="idCardPicPath" value=""/>
						<input id="a_fileInputID" name="a_fileInputID" type="file"/>
						<input type="button" id="a_uploadbtnID" value="上传"/>
						<p><span style="color:red;font-weight: bold;">*注：1、正反面.2、大小不得超过50k.3、图片格式：jpg、png、jpeg、pneg</span></p>
						<div id="a_idPic"></div>
					 </li>
				</ul>
				<ul class="downul">
					<li>
					<label>上传银行卡图片：</label>
						<input type="hidden" id="a_fileInputBankPath" name="bankPicPath" value=""/>
						<input id="a_fileInputBank" name="a_fileInputBank" type="file"/>
						<input type="button" id="a_uploadbtnBank" value="上传"/>
						<p><span style="color:red;font-weight: bold;">*注：1、大小不得超过50k.2、图片格式：jpg、png、jpeg、pneg</span></p>
						<div id="a_bankPic"></div>
					 </li>
				</ul>
			</div>
			
			<div class="modal-footer">
				<a href="#" class="btn addusercancel" data-dismiss="modal">取消</a>
				<input type="submit"  class="btn btn-primary" value="保存" />
			</div>
		</form>
	 </div>

	 <div class="modal fade" id="modifyAdminDiv">
		<form action="backend/modifyadmin.html"  enctype="multipart/form-data" method="post" onsubmit="return modifyUserFunction();">
	    <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">×</button>
				<h3>修改管理员信息</h3>
			</div>
			<div class="modal-body">
				 <ul id="modify_formtip"></ul> 
				 <input id="m_id" type="hidden" name="id"/>
			 <ul class="topul"> 
					 <li>
					  <label>角色：</label>
					  <input id="m_rolename" type="hidden" name="m_roleName" value=""/>
					  <select id="m_roleId" name="roleId" style="width:100px;">
					  </select>
					  <span style="color:red;font-weight: bold;">*</span>
					</li> 
					 <li>
					  <label>姓名：</label><input type="text" id="m_name" name="m_name" />
					  <span style="color:red;font-weight: bold;">*</span>
					</li>
					<li>
					  <label>性别：</label>
		 			  <select id="m_sex" name="sex" style="width:100px;">
					  </select>
					</li> 
				</ul> 
			</div>
			
			<div class="modal-footer">
				 <a href="#" class="btn modifyusercancel" data-dismiss="modal">取消</a>
				<input type="submit"  class="btn btn-primary" value="保存" />
			</div>
			
	 </form>
	 </div>
	
	 
	 <div class="modal hide fade" id="viewUserDiv">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">×</button>
				<h3>查看用户信息</h3>
			</div>
			<div class="modal-body">
				<input id="v_id" type="hidden" value=""/>
				<ul class="topul">
					<li>
					  <label>角色：</label>
					  <input id="v_rolename" type="text" value=""/>
					</li>
					<li>
					  <label>会员类型：</label>
					  <input id="v_usertypename" type="text" value=""/>
					</li>
					<li>
					  <label>用户名：</label><input type="text" id="v_logincode" value="" />
					</li>
					<li>
					  <label>姓名：</label><input type="text" id="v_username" value="" />
					</li> 
					<li>
					  <label>性别：</label>
					  <input type="text" id="v_sex" value="" />
					</li> 
					<li>
					  <label>证件类型：</label>
					  <input id="v_cardtypename" type="text" value=""/>
					</li>
					<li>
					  <label>证件号码：</label><input type="text" id="v_idcard" value="" />
					</li>
					<li>
					  <label>生日：</label>
					   <input type="text" id="v_birthday" value=""/>
					</li>
					<li>
					  <label>收货国家：</label><input type="text" id="v_country" value=""/>
					</li>
					<li>
					  <label>联系电话：</label><input type="text" id="v_mobile" value=""/>
					</li>
					<li>
					  <label>Email：</label><input type="text" id="v_email" value=""/>
					</li>
					<li>
					  <label>邮政编码：</label><input type="text" id="v_postcode" value=""/>
					</li>
					<li>
					  <label>开户行：</label><input type="text" id="v_bankname" value=""/>
					</li>
					<li>
					  <label>开户卡号：</label><input type="text" id="v_bankaccount" value=""/>
					</li>
					<li>
					  <label>开户人：</label><input type="text" id="v_accountholder" value=""/>
					</li>
					<li>
					  <label>推荐人：</label><input type="text" id="v_refercode" value=""/>
					</li>
					<li>
					  <label>注册时间：</label>
					  <input type="text" id="v_createtime" value=""/>
					</li>
					<li>
					  <label>是否启用：</label>
					  <select id="v_isstart" style="width:100px;" disabled="disabled">
					  </select>
					</li>
					<li class="lastli">
					  <label>收货地址：</label>
					  <textarea id="v_useraddress" name="userAddress"></textarea>
					</li>
					
				</ul>
				<div class="clear"></div>
				<ul class="downul">
					<li>
					<label>上传身份证图片
					(正反面)：</label>
						<input type="hidden" id="v_fileInputIDPath" value=""/>
						<div id="v_idPic"></div>
					 </li>
				</ul>
				<ul class="downul">
					<li>
					<label>上传银行卡图片：</label>
						<input type="hidden" id="v_fileInputBankPath" value=""/>
						<div id="v_bankPic"></div>
					 </li>
				</ul>
			</div>
			
			<div class="modal-footer">
				<a href="#" class="btn viewusercancel" data-dismiss="modal">关闭</a>
			</div>
	 </div>
	 
<%@include file="/WEB-INF/pages/common/foot.jsp"%>
<script type="text/javascript">
  /*   var cartTypeListJson =	[<c:forEach  items="${cardTypeList}" var="cardType"> 
							{"valueId":"${cardType.valueId}","valueName":"${cardType.valueName}"},
							</c:forEach>{"valueId":"over","valueName":"over"}];
    var roleListJson =	[<c:forEach  items="${roleList}" var="role"> 
						{"id":"${role.id}","roleName":"${role.roleName}"},
						</c:forEach>{"id":"over","roleName":"over"}]; */
</script>
<script type="text/javascript" src="/statics/localjs/userlist.js"></script> 
