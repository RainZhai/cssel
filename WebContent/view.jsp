<%@page import="com.webmachine.css.Css"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="csstags" prefix="s"%> 
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />  
</head>

<body>
<%
Css css = new Css();
java.util.Map<String, String> cssmap = css.getCssResource();
request.setAttribute("cssmap",cssmap);
%>
  <div class="${cssmap['menus']}">
	hello
  </div>
  <h1 class="<s:cssunit cssunit="logo"/>">hello</h1>
</body>
</html>