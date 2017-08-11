package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.UtenteBean;
import bean.UtenteBeanDao;

/**
 * Servlet implementation class AjaxController
 */
@WebServlet("/AjaxController")
public class AjaxController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out = response.getWriter();
		
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String email = request.getParameter("email");
		String error = null;
		//UtenteBean bn = new UtenteBean();
		UtenteBeanDao dao = new UtenteBeanDao();
		
		System.out.println("sono dentro");
		System.out.println(email);
		
		
			UtenteBean bn1;
			try {
				bn1 = dao.doRetrieveByKey(email);
				
				if(email.equals(bn1.getEmail()))
				{
					error="<font color=red><b>"+email+"</b> is already in use</font>";
				}
				else{
				error="<font color=green><b>"+email+"</b> is avaliable";
		
			}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		System.out.println(error);
		request.setAttribute("error", error);
		request.getRequestDispatcher("Home.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

	}

}
