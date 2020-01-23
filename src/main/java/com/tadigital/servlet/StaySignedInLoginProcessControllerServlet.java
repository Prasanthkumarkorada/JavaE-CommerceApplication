package com.tadigital.servlet;

import java.io.IOException;

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

@WebServlet("/staysignedinlogin")
public class StaySignedInLoginProcessControllerServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession ses = req.getSession();
		
		String cValue = (String)ses.getAttribute("COOKIEVALUE");
		
		String[] data = cValue.split("-");
		String email = data[0];
		String staySignedIn = data[1];
				
		Customer customer = new Customer();
		customer.setEmail(email);
		customer.setStaySignedIn(staySignedIn);
				
		CustomerService customerService = new CustomerService();
		boolean status = customerService.loginStaySignInCustomer(customer);
		
		if(status) {
			ses.setAttribute("LOGINSTATUS", "SUCCESS");
			
			ses.setAttribute("CUSTOMERDATA", customer);
			
			RequestDispatcher rd = req.getRequestDispatcher("LoginSuccess.jsp");
			rd.forward(req, resp);
		} else {
			Cookie cookie = customerService.createCookieToRemoveStaySignedIn(email);
			resp.addCookie(cookie);
			
			RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
			rd.forward(req, resp);
		}
	}
}