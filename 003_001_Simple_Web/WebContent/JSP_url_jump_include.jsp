<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>JSP_url_jump_include.jsp</title>
</head>
<body>
<%
	//forward
	String forwardStr=request.getParameter("forward");
	if(forwardStr!=null&&forwardStr.equals("1"))
	{
		request.getRequestDispatcher("/JSP_url_parameters_cookie.jsp").forward(request, response);
	}
	//redirect
	String redirectStr=request.getParameter("redirect");
	if(redirectStr!=null&&redirectStr.equals("1"))
	{
		response.sendRedirect("https://www.baidu.com");
	}
%>
<jsp:include page="/Hello.jsp" flush="true"/>
</body>
</html>