package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.forms.ContactUsForm;

/**
 * Servlet implementation class ContactUsServlet
 */
@WebServlet("/ContactUs")
public class ContactUsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String C_US_VUE="/WEB-INF/contactUs.jsp";   
	private static final String FORM_R_ATTRIBUTE="FORM";
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		this.getServletContext().getRequestDispatcher(C_US_VUE).forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ContactUsForm form=new ContactUsForm();
		
		form.formProcess(request);
		
		request.setAttribute(FORM_R_ATTRIBUTE, form);
		
	
		this.getServletContext().getRequestDispatcher(C_US_VUE).forward(request, response);
	}
	

}
