<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
测试get：把客户端url信息传给jsp<br>
<%
	String urlstr="";
	Enumeration<String> all=request.getParameterNames();
	String key=null;
	while(all.hasMoreElements())
	{
		key=all.nextElement();
		urlstr="|"+key+"="+request.getParameter(key);
	}
	
	//cookie
	Cookie[] cookies=request.getCookies();
	String cookieStr="";
	if(cookies==null||cookies.length==0)
	{
		cookieStr="目前没有cookies";
		Cookie cookie=new Cookie("cookie_key","1");
		Cookie cookie2=new Cookie("cookie_key2","2");
		response.addCookie(cookie);
		response.addCookie(cookie2);
	}
	else{
		for(Cookie cookie:cookies)
		{
			cookieStr=cookieStr+"|"+cookie.getName()+"|"+cookie.getValue();
		}
	}
%>
url信息：<%=urlstr %><br/>
cookie信息：<%=cookieStr %>
</body>
</html>