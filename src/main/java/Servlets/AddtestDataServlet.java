package Servlets;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.DB;
import DB.DatabaseHelper;
import Model.TestModel;

/**
 * Servlet implementation class ContactusServlet
 */
@WebServlet("/AddtestDataServlet")
public class AddtestDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddtestDataServlet() {
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

		String name=request.getParameter("name");
		String recm=request.getParameter("rec");;
		String msg=request.getParameter("des");
		
		//validating required fields
		if(name.equals(""))
		{
		String errorMessage="Name Cannot Be Blank";
		request.setAttribute("err", errorMessage);
		request.getRequestDispatcher("Contact.jsp").forward(request, response);
		}
		else if(recm.equals(""))
		{
			String errorMessage="Name Cannot Be Blank";
			request.setAttribute("err", errorMessage);
			request.getRequestDispatcher("Contact.jsp").forward(request, response);
		}
		else if(msg.equals(""))
		{
			String errorMessage="Name Cannot Be Blank";
			request.setAttribute("err", errorMessage);
			request.getRequestDispatcher("Contact.jsp").forward(request, response);
		}
		else
		{
			try 
			{   Connection con=DB.getConnection();
				TestModel test=new TestModel(name, recm, msg);
				DatabaseHelper helper;
				
				helper = new DatabaseHelper(con);
				if(helper.addtest(test))
				{
					String errorMessage = "Successfull";
					request.setAttribute("err", errorMessage);
				    request.getRequestDispatcher("Contact.jsp").forward(request, response); 	
				}
				else
				{
					String errorMessage = "Successfull";
					request.setAttribute("err", errorMessage);
				    request.getRequestDispatcher("Contact.jsp").forward(request, response); 	
				}
			}
			catch(Exception ex)
			{
				
			}
			
		}
		
		
		
	}

}
