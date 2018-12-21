
import isd.Alumini;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import isd.Alumini;

/**
 * Servlet implementation class addEdu
 */
@WebServlet("/addEdu")
public class addEdu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addEdu() {
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
			
	        String degree=request.getParameter("degree");
			String university=request.getParameter("university");
			String s_date=request.getParameter("s_date");
			String e_date=request.getParameter("e_date");
			int c=0;
			
			if(degree.equals("") || university.equals("") || s_date.equals(""))
			{
				String utilOutput = "Please fill in all the details";
	    		request.setAttribute("utilOutput", utilOutput);
	    		request.getRequestDispatcher("addEduForm.jsp").forward(request, response);
			}
			else{
				c=a.addHighEdu(aname, degree, university, s_date, e_date);
			}	
			
			if(c>0)
				response.sendRedirect("higheredu.jsp");
			else
			{
				String utilOutput = "Problem at backend : Please fill in relevant details";
	    		request.setAttribute("utilOutput", utilOutput);
	    		request.getRequestDispatcher("addEduForm.jsp").forward(request, response);
				
			}
	}

}
