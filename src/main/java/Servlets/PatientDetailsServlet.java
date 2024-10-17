package Servlets;

import java.io.IOException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




import DB.DB;

/**
 * Servlet implementation class AddpostServlet
 */
@WebServlet("/PatientDetailsServlet")
@MultipartConfig(maxFileSize = 16177215)
public class PatientDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PatientDetailsServlet() {
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
		
		
					
		 String message="";			
		try
		{
		 
			String i=request.getParameter("ppid");
			String det=request.getParameter("det");
		
			int ppid=Integer.parseInt(i);
		
			Connection con=DB.getConnection();
			PreparedStatement pst;
			
				
				String sql="INSERT INTO `patientdet`(`P_ID`, `P_details`)"
						+ " VALUES "
						+ "(?,?)";
				pst=con.prepareStatement(sql);
				pst.setInt(1,ppid);
				pst.setString(2,det);
				
				 int row=pst.executeUpdate();
				
 if(row>0)
 {
	 System.out.println("Success");
	 message="Seccessfully Added";
	 request.setAttribute("msg", message);
	    request.getRequestDispatcher("PatientDetails.jsp").forward(request, response);
 }
 else
 {
	 System.out.println("Query");
	 message="Error";
	 request.setAttribute("msg", message);
	    request.getRequestDispatcher("viewpatient.jsp").forward(request, response);
	 	 
 }
			}

		
		catch(Exception ex)
		{
			System.out.println(ex);
			message="Error";
			request.setAttribute("msg", message);
		    request.getRequestDispatcher("viewpatient.jsp").forward(request, response);
		
		}
		
	}

}