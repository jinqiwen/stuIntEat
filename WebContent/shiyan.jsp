<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.wxapi.WxApiCall.WxApiCall"%>  
<%@page import="com.wxapi.model.RequestModel"%>  
<%@page import="java.util.HashMap"%>  
<%@page import="java.util.Map"%>  
<%@page import="java.lang.String"%>  
<html>
<head>
<title>短信发送实例</title>
</head>
<script src="${pageContext.request.contextPath}/statics/js2/jquery.min.js"></script>
<script type="text/javascript">
 <%
//验证码创建注册发送 
   String m=request.getParameter("mobile");
   String yannum="";
   if(m!=null){
   String mobile = new String((request.getParameter("mobile")).getBytes("ISO-8859-1"),"UTF-8").trim();
      if(mobile!=null&&!"".equals(mobile)){
			RequestModel model = new RequestModel();
			model.setGwUrl("https://way.jd.com/kaixintong/kaixintong");
			model.setAppkey("79802f31c8162602ab91b91a4cfe644e");
			Map queryMap = new HashMap();
			queryMap.put("mobile",mobile); //访问参数
			yannum=new String();
			for(int i=0;i<6;i++){
	        int  d1 = (int)(Math.random()*10);
	        yannum+=d1+"";
			}
			queryMap.put("content","【凯信通】您的验证码是："+yannum); //访问参数
			session.setAttribute("content", yannum);
			model.setQueryParams(queryMap);
			WxApiCall call = new WxApiCall();
			call.setModel(model);
			call.request();
      }
 }
%> 
$(document).ready(function(){
	$('#send').click(function(){
		 var mobile=$('#mobile').val(); 
		 var yannum=$('#yannum').val();
	});
	
		/* var mobile=$('#mobile').val(); */
		<%-- var yannum="<%= yannum%>";
		var mobile="<%= m%>"; --%>
	    
	/* var mobile=$('#mobile').val(); */
	/* var yannum=$('#yannum').val(); */
	/*  $.ajax({
    	url: 'insertYanNum.html',
		type: 'GET',
		data:{mobile:mobile,yannum:yannum},
		dataType: 'text',
    	success:function(result){
    		if(result!=null && result=="success"){
    			alert("发送成功！");
    			
    		}else{
    			alert("发送失败！");
    			
    		}
    		
    		
    	},
       error: function(XMLHttpRequest, textStatus, errorThrown) {	
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(textStatus);
			return false;
			}	
    });  */
 
/* }); */

$('#sendFinal').click(function(){
	<% String yuan=(String)session.getAttribute("content"); %>
	var yannum1 =$("#yannum").val();
	var y="<%=yuan%>";
	
	if(yannum1==y){
		alert("验证码正确");
	}else{
		alert("验证码错误");
	}
	
	/* $.ajax({
    	url: 'selYanNum.html',
		type: 'GET',
		data:{mobile:mobile,yannum:yan},
		dataType: 'html',
		timeout: 1000,
    	success:function(result){
    		if(result!=null && result=="success"){
    			alert("登录成功！");
    		}else{
    			alert("登录失败！");
    		}
    		
    		
    	},
    	error:function(){
    		alert("登录出现异常！");
    	}		
    }); */
});
});
</script>

<body>
<form action="" method="post" > 
手机号：<input id="mobile" type="text" name="mobile"><br>
验证码：<input id="yannum" type="text" name="yannum"><input id="send" type="submit" name="send" value="发送验证码"><br>
<input type="submit" id="sendFinal" type="text" name="trueyannum" value="提交">
 </form> 
</body>
</html>



 
 
 
 
  
       
 