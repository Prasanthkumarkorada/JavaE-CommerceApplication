package com.tadigital.servlet;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import java.io.PrintWriter;
import java.io.StringWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;


public class ForgotPasswordControllerServletTest extends Mockito{
	  @Mock
	  HttpSession ses;
	@Mock
	 HttpServletRequest request;
	 @Mock
	 HttpServletResponse response;
	 @Mock
	 RequestDispatcher rd;
	 @Before
	 public void setUp() throws Exception {
	  MockitoAnnotations.initMocks(this);
	 }

//     @Test
//     public void testForgotPassword() throws Exception {
//          when(request.getParameter("email")).thenReturn("test@gmail.com");
//          when(request.getParameter("newpassword")).thenReturn("123");
//          when(request.getRequestDispatcher("SignInForm.jsp")).thenReturn(rd);            
//          StringWriter stringWriter = new StringWriter();
//          PrintWriter writer = new PrintWriter(stringWriter);
//          when(response.getWriter()).thenReturn(writer);
//          new ForgotPasswordControllerServlet().doPost(request, response);
      
//          verify(rd).forward(request, response);
         
//          String result = stringWriter.getBuffer().toString().trim();
//          assertEquals("Password Updated", result);
       
      
    }
   
}

