
$("#loginBtn").click(function(){
   var admin=new Object();
   admin.loginCode =$.trim($("#loginCode").val());
   admin.password=$.trim($("#password").val());
    if(admin.password==null || admin.password==""){
    	$("#password").focus();
    	$("#formtip").css("color","red");
    	$("#formtip").html("密码不能为空!");
    }
    if(admin.loginCode==null || admin.loginCode==""){
    	$("#loginCode").focus();
    	$("#formtip").css("color","red");
    	$("#formtip").html("用户名不能为空!");
    }else{
		$("#formtip").html("");
    }
    $.ajax({
    	url: 'dologin.html',
		type: 'GET',
		data:{admin:JSON.stringify(admin)},
		dataType: 'html',
		timeout: 1000,
    	success:function(result){
    		if(result!=null && result=="success1"){
    			window.location.href='main1.html';
    		}
    		if(result!=null && result=="success2"){
    			window.location.href='main2.html';
    		}
    		if(result!=null && result=="failPwd"){
    			$("#formtip").css("color","red");
    			$("#formtip").html("密码错误");
    		}
    		if(result!=null && result=="failName"){
    			$("#formtip").css("color","red");
    			$("#formtip").html("用户名错误");
    		}if(result!=null && result=="failed"){
    			$("#formtip").css("color","red");
    			$("#formtip").html("登录错误");
    		}if(result!=null && result=="nodata"){
    			$("#formtip").css("color","red");
    			$("#formtip").html("无数据操作");
    		}
    	},
          error: function(XMLHttpRequest, textStatus, errorThrown) {
			
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(textStatus);
			}	
    });

});

