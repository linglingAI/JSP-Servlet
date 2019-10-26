<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<% int port=request.getLocalPort(); %>
<title>端口<%=port %></title>
</head>
<body>
<h1>测试nginx,端口为：<%=port %></h1>
</body>
</html>