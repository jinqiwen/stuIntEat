<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.wxapi.WxApiCall.WxApiCall"%>  
<%@page import="com.wxapi.model.RequestModel"%>  
<%@page import="java.util.HashMap"%>  
<%@page import="java.util.Map"%>  
<%@page import="java.lang.String"%> 
 <%
//验证码创建注册发送
   String mobile = new String((request.getParameter("mobile")).getBytes("ISO-8859-1"),"UTF-8");
   String yannum="";
      if(mobile!=null&&!"".equals(mobile)){
			RequestModel model = new RequestModel();
			model.setGwUrl("https://way.jd.com/kaixintong/kaixintong");
			model.setAppkey("36109ad9ed3dc300f5ac8d9d75004747");
			Map queryMap = new HashMap();
			queryMap.put("mobile",mobile); //访问参数
			yannum=new String();
			for(int i=0;i<6;i++){
	        int  d1 = (int)(Math.random()*10);
	        yannum+=d1+"";
			}
			queryMap.put("content","【凯信通】您的验证码是："+yannum); //访问参数
		 	yannum=(String)queryMap.get("content"); 


			model.setQueryParams(queryMap);
			WxApiCall call = new WxApiCall();
			call.setModel(model);
			call.request();
      }
%> 
 