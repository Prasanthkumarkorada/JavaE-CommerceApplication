package com.tadigital.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tadigital.entity.Customer;
import com.tadigital.service.CustomerService;

@WebServlet("/signout")
public class SignoutProcessControllerServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession ses = req.getSession();
//		
//		Customer customer = (Customer)ses.getAttribute("CUSTOMERDATA");
//		
//		CustomerService customerService = new CustomerService();
//		customerService.updateStaySignedInToNo(customer.getEmail());
//
//		if(ses.getAttribute("LOGINSTATUS").equals("SUCCESS")) {
//			System.out.println("99999999");
//		}
	//ses.invalidate();
		ses.setAttribute("LOGINSTATUS", "FAILURE");
		RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
		rd.forward(req, resp);
	}
}