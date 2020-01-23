package com.tadigital.service;

import java.util.Calendar;

import javax.servlet.http.Cookie;

import com.tadigital.dao.CustomerDao;
import com.tadigital.entity.Customer;

public class CustomerService {
	CustomerDao customerDao = new CustomerDao();
	
	public String getCurrentDate() {
		Calendar cal = Calendar.getInstance();
		
		int dd = cal.get(Calendar.DATE);
		int mm = cal.get(Calendar.MONTH);
		mm++;
		int yyyy = cal.get(Calendar.YEAR);
		
		return dd + "-" + mm + "-" + yyyy;
	}
	
	public boolean loginCustomer(Customer customer) {
		boolean status = customerDao.selectCustomerByEmailAndPassword(customer);
		
		return status;
	}
	
	public boolean loginStaySignInCustomer(Customer customer) {
		boolean status = customerDao.selectCustomerByEmailAndStaySignedIn(customer);
		
		return status;
	}
	
	public Cookie createCookieForStaySignedIn(String email) {
		Cookie cookie = new Cookie("TRAININGPROJECT_ARVIND", email + "-yes");
		cookie.setMaxAge(60 * 60 * 24 * 30);
		
		customerDao.updateStaySignedInStatus(email, "yes");
		
		return cookie;
	}
	
	public Cookie createCookieToRemoveStaySignedIn(String email) {
		Cookie cookie = new Cookie("TRAININGPROJECT_ARVIND", "");
		cookie.setMaxAge(0);
		
		updateStaySignedInToNo(email);
		
		return cookie;
	}
	
	public void updateStaySignedInToNo(String email) {
		customerDao.updateStaySignedInStatus(email, "no");
	}
	
	public boolean updatePassword(String email, String newpassword) {
		return customerDao.updatePassword(email, newpassword);
	}
	
	public boolean registerCustomer(Customer customer) {
		boolean status = customerDao.insertCustomer(customer);
		
		return status;
	}
}