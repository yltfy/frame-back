<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tz" uri="/WEB-INF/tld/tz.tld"%>
<%
	String path = request.getContextPath();
	int port = request.getServerPort();
	String basePath = null;
	if(port==80){
		basePath = request.getScheme()+"://"+request.getServerName()+path;
		//http://localhost:80/musicblog
	}else{
		basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
		//basePath = http://localhost:8080/musicblog 对应工程的webRoot目录
	}
	pageContext.setAttribute("basePath", basePath);
	pageContext.setAttribute("adminPath", basePath+"/admin");

%>