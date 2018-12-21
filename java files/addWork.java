
import isd.Alumini;
import java.io.IOException;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class addWork
 */
@WebServlet("/addWork")
public class addWork extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addWork() {
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
		
		HttpSession session=request.getSession();
		String aname=String.valueOf(session.getAttribute("aname"));
		Alumini a=new Alumini();
		a.setAttr(aname);
			
	        String company=request.getParameter("company");
			String job_title=request.getParameter("job");
			String domain=request.getParameter("domain");
			String location=request.getParameter("location");
			String s_date=request.getParameter("s_date");
			String e_date=request.getParameter("e_date");
			int c=0;
			
			if(company.equals("") || domain.equals("") || location.equals("") || job_title.equals("") || s_date.equals(""))
			{
				String utilOutput = "Please fill in all the details";
	    		request.setAttribute("utilOutput", utilOutput);
	    		request.getRequestDispatcher("addWorkForm.jsp").forward(request, response);
			}
			else{
				c=a.addWorkExp(aname, job_title, location, domain, company, s_date, e_date);
			}	
			
			if(c>0)
				response.sendRedirect("workex.jsp");
			else
			{
				String utilOutput = "Problem at backend : Please fill in relevant details";
	    		request.setAttribute("utilOutput", utilOutput);
	    		request.getRequestDispatcher("addWorkForm.jsp").forward(request, response);
				
			}
			
		}

	}


