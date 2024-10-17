package Servlets;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.DB;
import DB.DatabaseHelper;
import Model.ViewPatientModel;

/**
 * Servlet implementation class ViewPatientServlet
 */
@WebServlet("/ViewPatientServlet")
public class ViewPatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewPatientServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
	       
        Connection con;
        String mid = request.getParameter("M_id");
        
        try {
        con = DB.getConnection();
        DatabaseHelper user=new DatabaseHelper(con);
        List<ViewPatientModel> pade = DatabaseHelper.validate_n(mid);
        request.setAttribute("pade", pade);
        }
        catch(Exception e) {
        	e.printStackTrace();
        }
        
        RequestDispatcher dis = request.getRequestDispatcher("viewpatient.jsp");
        dis.forward(request, response); 
	  }
	
}
