import isd.HighEdu;
import isd.WorkEx;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class editEdu
 */
@WebServlet("/editEdu")
public class editEdu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editEdu() {
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
		int EduId=Integer.parseInt(String.valueOf(session.getAttribute("Hid")));
		HighEdu h=new HighEdu();
		h.setAttr(EduId);
		
		String degree=request.getParameter("degree");
		if(!degree.equals(""))
		{
			h.updateDegree(degree);		
		}
		
		String university=request.getParameter("university");
		if(!university.equals(""))
		{
			h.updateUniversity(university);		
		}
		
		
		
		String S_date=request.getParameter("s_date");
		if(!S_date.equals(""))
		{
			h.updateS_Date(S_date);		
		}
		
		String E_date=request.getParameter("e_date");
		if(!E_date.equals(""))
		{
			h.updateE_Date(E_date);		
		}
		
		response.sendRedirect("higheredu.jsp");
	
	}

}
