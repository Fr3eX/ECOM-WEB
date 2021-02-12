package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MyAccoutServlet
 */
@WebServlet("/MyAccount")
public class MyAccoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static final String MyAccount_VUE="/WEB-INF/profile.jsp";   
    private static final String SignIn_VUE="/SignIn";
    private static final String USER_S_SCOPE_ATTRIBUTE="USER";
	
    
    @Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		
		doGet(arg0, arg1);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		
		if(session.getAttribute(USER_S_SCOPE_ATTRIBUTE) == null)
		{
			response.sendRedirect(request.getContextPath() + SignIn_VUE );
			return ; 
		}
		
		this.getServletContext().getRequestDispatcher(MyAccount_VUE).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
