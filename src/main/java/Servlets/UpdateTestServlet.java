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
@WebServlet("/UpdateTestServlet")
public class UpdateTestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateTestServlet() {
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
			int Test_ID=Integer.parseInt(request.getParameter("id"));
			String tn=request.getParameter("tn");
			String trec=request.getParameter("trec");
			String tdes=request.getParameter("tdes");
			PreparedStatement ps;
			   String sql="update test set T_Name='"+tn+"',T_Rec='"+trec+"',T_Des='"+tdes+"' where Test_ID="+Test_ID+" ";
			   ps=con.prepareStatement(sql);
			   ps.executeUpdate();
			   request.setAttribute("id", null);
			   request.getRequestDispatcher("testdetail.jsp?id=0").forward(request, response); 
    
		}
		catch(Exception ex)
		{
			
		}
	}

}
