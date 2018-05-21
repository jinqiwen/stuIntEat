$("#loginBtn").click(function(){
   var admin=new Object();
   admin.loginCode =$.trim($("#loginCode").val());
   admin.password=$.trim($("#password").val());
   admin.isStart = 1;
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
    		alert("成功返回");
    		if(result!=null && result=="success"){
    			
    			window.location.href='main.html';
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
    		}else{
    			/*注意在js和jsp中的路径是不写"/"*/
    			window.location.href='main.html';
    		}
    	},
    	error:function(){
    		$("#formtip").css("color","red");
			$("#formtip").html("登录失败，请重试");
    	}		
    });
});


