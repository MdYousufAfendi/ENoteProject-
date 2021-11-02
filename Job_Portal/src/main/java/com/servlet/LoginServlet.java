package com.servlet;

import javax.jws.WebService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.User;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.Part;


@WebServlet("/login")
public class LoginServlet extends HttpServlet{
		
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
	
	try
		{
			
			//HttpServletRequest req1;
			String em=req.getParameter("email");
			String ps=req.getParameter("password");
			
			User u=new User();
			HttpSession session=req.getSession();
			
			if("admin@gmail.com".equals(em) && "admin@121".equals(ps))
			{
				session.setAttribute("userobj", u);
				u.setRole("admin");
				HttpServletResponse resp1;
				
				resp1.sendRedirect("admin.jsp");
			}
			else {
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
}
