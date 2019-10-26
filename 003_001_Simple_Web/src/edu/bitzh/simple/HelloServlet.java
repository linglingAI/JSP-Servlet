package edu.bitzh.simple;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/HelloServlet")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String urlstr="";
		Enumeration<String> all=request.getParameterNames();
		String key=null;
		while(all.hasMoreElements())
		{
			key=all.nextElement();
			urlstr=urlstr+"|"+key+"|"+request.getParameter(key);
		}
		//cookie
		
		Cookie[] cookies=request.getCookies();
		String cookiestr="";
		if(cookies==null||cookies.length==0)
		{
			cookiestr="no cookie";
			Cookie cookie=new Cookie("cookie_key", "1");
			response.addCookie(cookie);
		}
		else {
			for(Cookie cookie:cookies)
			{
				cookiestr=cookiestr+"|"+cookie.getName()+"|"+cookie.getValue();
			}
		}
		
		response.getWriter().append("url:"+urlstr).append(request.getContextPath()).append("cookie:"+cookiestr);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
