$('.adduser').click(function(e){
	$("#add_formtip").html('');
	e.preventDefault();
	$('#addUserDiv').modal('show');
	$("#uniform-a_fileInputID span:first").html('无文件');
	$("#uniform-a_fileInputBank span:first").html('无文件');

});

/*$('.viewusercancel').click(function(e){
	$("#v_idPic").html('');
	$("#v_bankPic").html('');
	$("#v_isstart").html('');
});*/
$('.modifyusercancel').click(function(e){
	$("#modify_formtip").html('');
	$("#m_name").val('');
	/*$("#selectrole").val('');*/
/*	$("#selectusertype").val('');
	$("#selectusertype").html('<option value=\"\" selected=\"selected\">--请选择--</option>');*/
	$("#m_department").val('');
	$("#m_position").val('');
	$("#m_sex").val('');
	$("#m_role").val('');
	$("#m_froom").val('');
	$("#m_school").val('');
});
$('.addadmincancel').click(function(e){
	$("#add_formtip").html('');
	$("#a_name").val('');
	$("#a_password").val('');
	/*$("#selectrole").val('');*/
/*	$("#selectusertype").val('');
	$("#selectusertype").html('<option value=\"\" selected=\"selected\">--请选择--</option>');*/
	$("#a_loginCode").val('');
	$("#a_department").val('');
	$("#a_position").val('');
	$("#selectcardtype").val('');
	$("#a_sex").val('');
	$("#a_role").val('');
	$("#a_company").val('');
	$("#a_telephone").val('');
	$("#a_froom").val('');
	$("#a_school").val('');
});

$('.modifyadmin').click(function(e){
	var m_id = $(this).attr('id');
	$.ajax({
		url: 'getadmin.html',
		type: 'POST',
		data:{id:m_id},
		dataType: 'html',
		timeout: 1000,
		error: function(XMLHttpRequest, textStatus, errorThrown) {			
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(textStatus);
			},
		success: function(result){
			if("failed" == result){
				alert("操作超时！");
			}else if("nodata" == result){
				alert("没有数据！");
			}else{
				
				m = eval('(' + result + ')');
				$("#m_id").val(m.id);
				$("#m_name").val(m.name);
				if(m.sex==1){
					$("#m_sex").val("男");
				}else{
					$("#m_sex").val("女");
				}
				$("#m_department").val(m.department);
				$("#m_froom").val(m.froom);
				$("#m_position").val(m.position);
				$("#m_school").val(m.school);
				$("#m_crateTime").val(m.crateTime);
				$("#m_telephone").val(m.telephone);
				if(m.roleId==1){
					$("#m_role").val("总公司总管理员");
				}
				else if(m.roleId==2){
					$("#m_role").val("分公司总管理员");
				}
				else if(m.roleId==3){
					$("#m_role").val("食堂总管理员");
				}else{
					$("#m_role").val("食堂副管理员");
				}
			$('#modifyAdminDiv').modal('show');
			
			}
		
		}
		});
});
$('.viewadmin').click(function(e){
	var m_id = $(this).attr('id');
	$.ajax({
		url: 'getadmin.html',
		type: 'POST',
		data:{id:m_id},
		dataType: 'html',
		timeout: 1000,
		error: function(XMLHttpRequest, textStatus, errorThrown) {
			
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(textStatus);
			},
		success: function(result){
			if("failed" == result){
				alert("操作超时！");
			}else if("nodata" == result){
				alert("没有数据！");
			}else{
				
				m = eval('(' + result + ')');
				$("#v_id").val(m.id);
				$("#v_name").val(m.name);
				if(m.sex==1){
					$("#v_sex").val("男");
				}else{
					$("#v_sex").val("女");
				}
				$("#v_department").val(m.department);
				$("#v_company").val(m.company);
				$("#v_froom").val(m.froom);
				$("#v_position").val(m.position);
				$("#v_school").val(m.school);
				$("#v_createTime").val(m.createTime);
				$("#v_telephone").val(m.telephone);
				if(m.roleId==1){
					$("#v_role").val("总公司总管理员");
				}
				else if(m.roleId==2){
					$("#v_role").val("分公司总管理员");
				}
				else if(m.roleId==3){
					$("#v_role").val("食堂总管理员");
				}else{
					$("#v_role").val("食堂副管理员");
				}
			$('#viewAdminDiv').modal('show');
			
			}
		
		}
		});
});

$('.deladmin').click(function(e){
	//delete
	var d = $(this);
	var d_name = d.attr('name');
	var d_id = d.attr('id');
	if(confirm("您确定要删除【"+d_name+"】这个管理员吗？")){
		//delete
		$.post("deladmin.html",{'d_id':d_id},function(result){
			if("success" == result){
				alert("删除成功！");
				window.location.href="adminList.html";
			}else{
				alert("删除失败！");
			}
		},'html');
	}
});

$("#a_loginCode").blur(function(){
	var alc = $("#a_loginCode").val();
	if(alc != ""){
		$.post("logincodeisexit.html",{'loginCode':alc},function(result){
			if(result == "repeat"){
				$("#add_formtip").css("color","red");
				$("#add_formtip").html("<li>对不起，该管理员账号已存在。</li>");
				$("#add_formtip").attr("key","1");
				result = false;
			}else if(result == "failed"){
				alert("操作超时!");
			}else if(result == "only"){
				$("#add_formtip").css("color","green");
				$("#add_formtip").html("<li>该管理员账号可以正常使用。</li>");
				$("#add_formtip").attr("key","0");
			}
		},'html');
	}
});
//添加管理员信息验证
function addAdminFunction(){
	$("#add_formtip").html("");
	var result = true;
	if($("#a_name").val() == ""){
		$("#add_formtip").css("color","red");
		$("#add_formtip").append("<li>对不起，姓名不能为空。</li>");
		result = false;
	}
	if($.trim($("#a_loginCode").val()) == "" || $("#a_loginCode").val() == null){
		$("#add_formtip").css("color","red");
		$("#add_formtip").append("<li>对不起，账号不能为空。</li>");
		result = false;
	}
	
	if($.trim($("#a_password").val()) == "" || $("#a_password").val() == null){
		$("#add_formtip").css("color","red");
		$("#add_formtip").append("<li>对不起，密码不能为空。</li>");
		result = false;
	}
	if($("#a_position").val() == ""){
		$("#add_formtip").css("color","red");
		$("#add_formtip").append("<li>对不起，职位不能为空。</li>");
		result = false;
	}
	if($.trim($("#a_sex").val()) == "" || $("#a_sex").val() == null){
		$("#add_formtip").css("color","red");
		$("#add_formtip").append("<li>对不起，性别不能为空。</li>");
		result = false;
	}
	
	if($.trim($("#a_department").val()) == "" || $("#a_department").val() == null){
		$("#add_formtip").css("color","red");
		$("#add_formtip").append("<li>对不起，部门不能为空。</li>");
		result = false;
	}
	if($.trim($("#a_role").val()) == "" || $("#a_role").val() == null){
		$("#add_formtip").css("color","red");
		$("#add_formtip").append("<li>对不起，角色不能为空。</li>");
		result = false;
	}
	if($.trim($("#a_telephone").val()) == "" || $("#a_telephone").val() == null){
		$("#add_formtip").css("color","red");
		$("#add_formtip").append("<li>对不起，联系电话不能为空。</li>");
		result = false;
	}
	if(result == true) alert("添加成功 ^_^");
	return result;
}

//修改用户信息验证
function modifyAdminFunction(){
	alert("验证");
	$("#modify_formtip").html("");
	var role=$("#m_role").val();
	var sex=$("#m_sex").val();
	var result = true;
	if(role == ""){
		$("#modify_formtip").css("color","red");
		$("#modify_formtip").append("<li>对不起，角色不能为空。</li>");
		result = false;
	}else if((role!="总公司总管理员")&&(role!="分公司总管理员")&&(role!="食堂总管理员")&&(role!="食堂副管理员")){
		$("#modify_formtip").css("color","red");
		$("#modify_formtip").append("<li>对不起，请输入正确的角色。</li>");
		result = false;
	}
	if($.trim($("#m_name").val()) == "" || $("#m_name").val() == null){
		$("#modify_formtip").css("color","red");
		$("#modify_formtip").append("<li>对不起，管理员姓名不能为空。</li>");
		result = false;
	}
	if($.trim(sex) == "" || sex == null){
		$("#modify_formtip").css("color","red");
		$("#modify_formtip").append("<li>对不起，性别不能为空。</li>");
		result = false;
	}else if((sex!="男")&&(sex!="女")){
		$("#modify_formtip").css("color","red");
		$("#modify_formtip").append("<li>对不起，管理员姓名不正确。</li>");
		result = false;
	}
	if($("#m_telephone").val() == ""){
		$("#modify_formtip").css("color","red");
		$("#modify_formtip").append("<li>对不起，联系电话不能为空。</li>");
		result = false;
	}
	
	if(result == true){ 
		alert("修改成功 ^_^");
	
	}
	return result;
}
function TajaxFileUpload(flag,t1,t2,t3,t4)
{   
	if($("#"+t1+"").val() == '' || $("#"+t1+"").val() == null){
		alert("请选择上传文件！");
	}else{
		$.ajaxFileUpload
	    ({ 
	           url:'/backend/upload.html', //处理上传文件的服务端
	           secureuri:false,
	           fileElementId:t1,
	           dataType: 'json',
	           success: function(data) { 
	        	   data = data.replace(/(^\s*)|(\s*$)/g, "");
	        	   if(data == "1"){
	        		   alert("上传图片大小不得超过50K！");
	        		   $("#uniform-"+t1+" span:first").html('无文件');
	        		   $("input[name='"+t1+"']").change(function(){
	        			   var fn = $("input[name='"+t1+"']").val(); 
	        			   if($.browser.msie){
	        				   fn = fn.substring(fn.lastIndexOf("\\")+1);
	        			   }
	        			   $("#uniform-"+t1+" span:first").html(fn);
	        		   });
	        	   }else if(data == "2"){
	        		   alert("上传图片格式不正确！");
	        		   $("#uniform-"+t1+" span:first").html('无文件');
	        		   $("input[name='"+t1+"']").change(function(){
	        			   var fn = $("input[name='"+t1+"']").val(); 
	        			   if($.browser.msie){
	        				   fn = fn.substring(fn.lastIndexOf("\\")+1);
	        			   }
	        			   $("#uniform-"+t1+" span:first").html(fn);
	        		   });
	        	   } else{
	//        		   $("#"+t3+"").append("<p><span onclick=\"document.getElementById('"+t3+"').removeChild(this.parentElement);$('#"+t2+"').show();\">x</span><img src=\""+data+"?m="+Math.random()+"\" /></p>");
	//        		   $("#"+t2+"").hide();
	//        		   $("#"+t4+"").val(data);
	        		   $("#"+t3+"").append("<p><span onclick=\"delpic('"+flag+"','"+t3+"','"+t2+"',this,'"+data+"','"+t4+"','"+t1+"');\">x</span><img src=\""+data+"?m="+Math.random()+"\" /></p>");
	        		   $("#"+t2+"").hide();
	        		   $("#"+t4+"").val(data);
	        		   $("input[name='"+t1+"']").change(function(){
	        			   var fn = $("input[name='"+t1+"']").val(); 
	        			   if($.browser.msie){
	        				   fn = fn.substring(fn.lastIndexOf("\\")+1);
	        			   }
	        			   $("#uniform-"+t1+" span:first").html(fn);
	        		   });
	        	   }
	           },  
	           error: function() {  
	              alert("上传失败！");
	           } 
	        });
	}
}

