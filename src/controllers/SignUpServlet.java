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
import metier.forms.SignUpForm;
import modele.User;

/**
 * Servlet implementation class SignUpServlet
 */
@WebServlet("/SignUp")
public class SignUpServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
    private static final String VUE="/WEB-INF/signUp.jsp";
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
		this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		
		if(session.getAttribute(USER_S_SCOPE_ATTRIBUTE) != null)
		{
			//REDIRECTION AND NOT FORWARDING ! 
			response.sendRedirect(request.getContextPath() + HOME_VUE);
			return;
		}
		
		DAOUser dao_user=new DAOUserImp(factory);
		SignUpForm form=new SignUpForm(dao_user);
		
		User user=form.signUp(request);
		
		request.setAttribute(FORM_R_SCOPE_ATTRIBUTE, form);
		request.setAttribute(USER_R_SCOPE_ATTRIBUTE, user);
		
		this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
	}

}
