package Servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.DB;

/**
 * Servlet implementation class UpdateusersServlet
 */
@WebServlet("/UpdatePatientDetailsServlet")
public class UpdatePatientDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatePatientDetailsServlet() {
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
		try {
			Connection con;
			con=DB.getConnection();
			int Det_ID=Integer.parseInt(request.getParameter("id"));
			String pid=request.getParameter("pid");
			String pde=request.getParameter("pde");
			PreparedStatement ps;
			   String sql="update patientdet set P_ID='"+pid+"',P_details='"+pde+"' where Det_ID="+Det_ID+" ";
			   ps=con.prepareStatement(sql);
			   ps.executeUpdate();
			   request.setAttribute("id", null);
			   request.getRequestDispatcher("PatientDetails.jsp?id=0").forward(request, response); 
    
		}
		catch(Exception ex)
		{
			
		}
	}

}
