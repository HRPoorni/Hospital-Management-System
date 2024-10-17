package Servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.DB;
import DB.DatabaseHelper;
import Model.UserModel;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		response.setContentType("text/html;charset=UTF-8");
       
        Connection con;
        String uname = request.getParameter("username");
        String pass = request.getParameter("password");
        
        try {
        String cat="";
        con = DB.getConnection();
        DatabaseHelper user=new DatabaseHelper(con);
        if(user.checkuser(uname, pass))
	        {
	        	String sql="select  * from users where email=? and password=?";
	        	PreparedStatement ps=(PreparedStatement) con.prepareStatement(sql);
	        	ps.setString(1, uname);
		         ps.setString(2, pass);
		         ResultSet rs=ps.executeQuery();
		         
		         List <UserModel> uDetails = DatabaseHelper.validate(uname, pass);
		         request.setAttribute("uDetails", uDetails);
		         
		         while(rs.next())
					   {
						 cat=rs.getString("cat");   
					   }
					   if(cat.equals("doctor"))
					   {
						   RequestDispatcher dis = request.getRequestDispatcher("doctor.jsp");
					       dis.forward(request, response);  
					   }
					   else if(cat.equals("patient"))
					   {
						   RequestDispatcher dis = request.getRequestDispatcher("patient.jsp");
					       dis.forward(request, response);
					   }
					   else if(cat.equals("nurse"))
					   {
						   RequestDispatcher dis = request.getRequestDispatcher("nurse.jsp");
					       dis.forward(request, response);
					   }
					   else {
						   RequestDispatcher dis = request.getRequestDispatcher("Admin.jsp");
					        dis.forward(request, response); 
					   }
	        	}
        else {
        	String errorMessage = "Username or Password is Wrong";
		    request.setAttribute("RegError", errorMessage);
		    request.getRequestDispatcher("Login.jsp").forward(request, response);
		    }
        }
	        catch (Exception e) {
	        	e.printStackTrace();
	        }
		
        }	    
       
}
