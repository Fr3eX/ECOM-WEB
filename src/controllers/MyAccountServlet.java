package controllers;

import java.io.IOException;

import javax.persistence.EntityManagerFactory;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.implementations.DAOUserImp;
import dao.interfaces.DAOUser;
import metier.forms.EditAccountForm;
import modele.User;

/**
 * Servlet implementation class MyAccoutServlet
 */

public class MyAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private static final String FACTORY_A_SCOPE_ATTRIBUTE="FACTORY";
    
	private static final String USER_S_SCOPE_ATTRIBUTE="USER";
    
    private static final String FORM_R_SCOPE_ATTRIBUTE="FORM";
    private static final String USER_R_SCOPE_ATTRIBUTE="USER";
    
    
	private static final String MYACCOUNT_VUE="/WEB-INF/profile.jsp";   
    private static final String SIGNIN_VUE="/SignIn";
    private static final String PATH="path";
    
	private EntityManagerFactory factory;
	
	@Override
		public void init() throws ServletException {
			// TODO Auto-generated method stub
			this.factory=(EntityManagerFactory)this.getServletContext().getAttribute(FACTORY_A_SCOPE_ATTRIBUTE);
		}
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		
		if(session.getAttribute(USER_S_SCOPE_ATTRIBUTE) == null)
		{
			response.sendRedirect(request.getContextPath() + SIGNIN_VUE );
			return ; 
		}
		
		this.getServletContext().getRequestDispatcher(MYACCOUNT_VUE).forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		
		if(session.getAttribute(USER_S_SCOPE_ATTRIBUTE) == null)
		{
			response.sendRedirect(request.getContextPath() + SIGNIN_VUE );
			return ; 
		}
		
		
		String path=this.getServletConfig().getInitParameter(PATH);
		DAOUser dao_user=new DAOUserImp(factory);
		
		EditAccountForm form=new EditAccountForm(dao_user);
		User user=form.editProfile(request, path);
		
		request.setAttribute(FORM_R_SCOPE_ATTRIBUTE, form);
		request.setAttribute(USER_R_SCOPE_ATTRIBUTE, user);
		
		this.getServletContext().getRequestDispatcher(MYACCOUNT_VUE).forward(request, response);
	}

}
