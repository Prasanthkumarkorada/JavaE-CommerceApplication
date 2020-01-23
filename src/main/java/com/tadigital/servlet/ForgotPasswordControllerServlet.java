package com.tadigital.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tadigital.entity.Customer;
import com.tadigital.service.CustomerService;

@WebServlet("/forgotpassword")
public class ForgotPasswordControllerServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("ForgotPassword.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String newpassword = req.getParameter("newpassword");
		String staySignedIn = req.getParameter("f3");
		
		Customer customer = new Customer();
		customer.setEmail(email);
		customer.setPassword(newpassword);
	
		CustomerService customerService = new CustomerService();
		boolean status=customerService.updatePassword(email,newpassword);
		
		//HttpSession ses = req.getSession();
		
		if(status) {
			 //ses.setAttribute("CHANGEPASSWORD", "SUCCESS");
			
			//ses.setAttribute("CUSTOMERDATA", customer);
			
			if(staySignedIn != null) {
				Cookie cookie = customerService.createCookieForStaySignedIn(email);
				resp.addCookie(cookie);
			}
			PrintWriter pout= resp.getWriter();
			pout.write("Password Updated");
			RequestDispatcher rd = req.getRequestDispatcher("SignInForm.jsp");
			rd.forward(req, resp);
		} else {
			//ses.setAttribute("CHANGEPASSWORD", "FAILURE");
			RequestDispatcher rd = req.getRequestDispatcher("ForgotPassword.jsp");
			rd.forward(req, resp);
		}
	}
}