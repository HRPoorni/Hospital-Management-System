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
@WebServlet("/AddtestServlet")
@MultipartConfig(maxFileSize = 16177215)
public class AddtestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddtestServlet() {
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
		 
			String name=request.getParameter("P_N");
			String add=request.getParameter("P_A");
			String a=request.getParameter("T_ID");
			String b=request.getParameter("C_N");
			String q=request.getParameter("Age");
			String i=request.getParameter("P_ID");
			String da=request.getParameter("date");
		
			int tid=Integer.parseInt(a);
			int cont=Integer.parseInt(b);
			int age=Integer.parseInt(q);
			int pid=Integer.parseInt(i);
			
			 
			//System.out.println(q);
			//System.out.println(name);
		
			Connection con=DB.getConnection();
			PreparedStatement pst;
			
				
				String sql="INSERT INTO `testapp`( `P_Name`, `P_Address`, `Test_ID`, `Con_Num`,`P_Age`,`P_ID`,`date` )"
						+ " VALUES "
						+ "(?,?,?,?,?,?,?)";
				 pst=con.prepareStatement(sql);
				pst.setString(1, name);
				pst.setString(2, add);
				pst.setInt(3, tid);
				pst.setInt(4, cont);
				pst.setInt(5, age);
				pst.setInt(6, pid);
				pst.setString(7, da);
				
				 int row=pst.executeUpdate();
				
 if(row>0)
 {
	 System.out.println("Success");
	 message="Seccessfully Added";
	 request.setAttribute("msg", message);
	    request.getRequestDispatcher("Payment.jsp").forward(request, response);
 }
 else
 {
	 System.out.println("Query");
	 message="Error";
	 request.setAttribute("msg", message);
	    request.getRequestDispatcher("Home.jsp").forward(request, response);
	 	 
 }
			}

		
		catch(Exception ex)
		{
			System.out.println(ex);
			message="Error";
			request.setAttribute("msg", message);
		    request.getRequestDispatcher("Home.jsp").forward(request, response);
		
		}
		
	}

}