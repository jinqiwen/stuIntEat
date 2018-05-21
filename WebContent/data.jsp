<%@ page language="java" import="org.stuIntelEat.controller.DataCityUtil" pageEncoding="utf-8"%>

<%
	request.setCharacterEncoding("utf-8");
	String data = DataCityUtil.getIMsg();
	out.print(data);
	
%>