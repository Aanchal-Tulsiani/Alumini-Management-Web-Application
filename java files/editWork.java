
import isd.WorkEx;
import java.io.IOException;
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
 * Servlet implementation class editWork
 */
@WebServlet("/editWork")
public class editWork extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editWork() {
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
		int workId=Integer.parseInt(String.valueOf(session.getAttribute("Wid")));
		WorkEx w=new WorkEx();
		w.setAttr(workId);
		
		String company=request.getParameter("company");
		if(!company.equals(""))
		{
			w.updateCompany(company);		
		}
		
		String job=request.getParameter("job");
		if(!job.equals(""))
		{
			w.updateTitle(job);		
		}
		
		String domain=request.getParameter("domain");
		if(!domain.equals(""))
		{
			w.updateDomain(domain);		
		}
		
		String location=request.getParameter("location");
		if(!location.equals(""))
		{
			w.updateLocation(location);		
		}
		
		String S_date=request.getParameter("s_date");
		if(!S_date.equals(""))
		{
			w.updateSDate(S_date);		
		}
		
		String E_date=request.getParameter("e_date");
		if(!E_date.equals(""))
		{
			w.updateEDate(E_date);		
		}
		
		response.sendRedirect("workex.jsp");
	}

}
