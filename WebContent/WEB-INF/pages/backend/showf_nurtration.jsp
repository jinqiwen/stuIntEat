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
$('#show').click(function(){
	var b=$(this).val();
	$.ajax({
    	url: 'showFNurtration.html',
		type: 'POST',
		data:{s_id:b},
		dataType: 'html',
		timeout: 1000,
    	success:function(result){
    		if("failed" == result){
				alert("操作超时！");
			}else if("nodata" == result){
				alert("没有数据！");
			}else{
				alert(result);
			}
    	},
    	
    	error:function(XMLHttpRequest, textStatus, errorThrown) {
			
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(textStatus);
			}
    });

});

</script>

<body>

<input id="show" type="submit" name="showfood" value="1"><br>
<!-- <input id="yannum" type="text" name="yannum"><input id="send" type="submit" name="send" value="发送验证码"><br>
<input type="submit" id="sendFinal" type="text" name="trueyannum" value="提交"> -->

</body>
</html>



 
 
 
 
  
       
 