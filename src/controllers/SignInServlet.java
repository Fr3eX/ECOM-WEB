package controllers;

import java.io.IOException;


import javax.persistence.EntityManagerFactory;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.implementations.DAOUserImp;
import dao.interfaces.DAOUser;
import metier.forms.SignInForm;
import modele.User;





/**
 * Servlet implementation class SignUpServlet
 */

@WebServlet("/SignIn")
public class SignInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private static final String FAILURE_VUE="/WEB-INF/signIn.jsp";
    private static final String HOME_VUE="/Home";
    
    private static final String FACTORY_A_SCOPE_ATTRIBUTE="FACTORY";
    
    
    private static final String FORM_R_SCOPE_ATTRIBUTE="FORM";
    private static final String USER_R_SCOPE_ATTRIBUTE="USER";
    private static final String USER_S_SCOPE_ATTRIBUTE="USER";
    
    private EntityManagerFactory factory;
    
    @Override
    	public void init() throws ServletException {
    		this.factory=(EntityManagerFactory)this.getServletContext().getAttribute(FACTORY_A_SCOPE_ATTRIBUTE);
    	}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		this.getServletContext().getRequestDispatcher(FAILURE_VUE).forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		
		if(session.getAttribute(USER_S_SCOPE_ATTRIBUTE) != null)
		{
			//IF THE USER ALREADY CONNECTED THEN REDIRECT TO HOME PAGE (REDIRECTION  AND NOT FORWARDING) ! 
			response.sendRedirect(request.getContextPath() + HOME_VUE);
			return;
		}
		
		DAOUser dao_user=new DAOUserImp(factory);
		SignInForm form=new SignInForm(dao_user);
		
		User user=form.SignIn(request);
		
		if(form.getErrors().isEmpty())
		{
				session.setAttribute(USER_S_SCOPE_ATTRIBUTE, user);
				response.sendRedirect(request.getContextPath() + HOME_VUE);
				return;
		}
		else
		{
			request.setAttribute(FORM_R_SCOPE_ATTRIBUTE, form);
			request.setAttribute(USER_R_SCOPE_ATTRIBUTE, user);
			
			/*
			 * Here we forward the reuqest
			 */
			
			this.getServletContext().getRequestDispatcher(FAILURE_VUE).forward(request, response);
		}
		
		
	}

}
