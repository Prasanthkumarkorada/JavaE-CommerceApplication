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

@WebServlet("/myaccount")
public class MyaccountControllerServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("MyaccountDetails.jsp");
		rd.forward(req, resp);
	}
	
	/*@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("f1");
		String email = req.getParameter("f2");
		String password = req.getParameter("f3");
		String gender = req.getParameter("f4");
		String mobilenumber = req.getParameter("f5");
		
		Customer customer = new Customer();
		customer.setName(name);
		customer.setEmail(email);
		customer.setPassword(password);
		customer.setGender(gender);	
		customer.setMobilenumber(mobilenumber);
		
		CustomerService customerService = new CustomerService();
		boolean status = customerService.registerCustomer(customer);
		
		HttpSession ses = req.getSession();
		
		if(status) {
			ses.setAttribute("REGISTRATIONSTATUS", "SUCCESS");
			
			RequestDispatcher rd = req.getRequestDispatcher("RegistrationSuccess.jsp");
			rd.forward(req, resp);
		} else {
			ses.setAttribute("REGISTRATIONSTATUS", "FAILURE");
			
			RequestDispatcher rd = req.getRequestDispatcher("RegistrationFailure.jsp");
			rd.forward(req, resp);
		}
	}*/
}