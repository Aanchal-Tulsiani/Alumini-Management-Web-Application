import isd.Alumini;

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
 * Servlet implementation class Personal
 */
@WebServlet("/Personal")
public class Personal extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Personal() {
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
		String name = String.valueOf(session.getAttribute("Name"));
		
		Alumini a=new Alumini();
		a.setAttr(name);
		
		String old_pass=request.getParameter("o_password");
		if(!old_pass.equals("") && a.getpswd().equals(old_pass))
		{
			String new_pass=request.getParameter("n_password");
			String con_pass=request.getParameter("c_password");
			if(new_pass.equals(con_pass))
			{
				a.updatePass(new_pass);
			}
			else {
				String utilOutput = "Confirm password doesn't match";
		    	request.setAttribute("utilOutput", utilOutput);
		    	request.getRequestDispatcher("personalForm.jsp").forward(request, response);
			}
		}
		if(!old_pass.equals("") && !a.getpswd().equals(old_pass))
		{
				String utilOutput = "Old password doesn't match";
		    	request.setAttribute("utilOutput", utilOutput);
		    	request.getRequestDispatcher("personalForm.jsp").forward(request, response);	
		}
		
		String new_yog=request.getParameter("yog");
		if(!new_yog.equals(""))
		{
			a.updateYoG(Integer.parseInt(new_yog));
		}
		
		String new_dob=request.getParameter("dob");
		if(!new_dob.equals(""))
		{
			a.updateDoB(new_dob);	
		}
		
		String email=request.getParameter("mailId");
		if(!email.equals(""))
		{
			a.updateEmail(email);		
		}
		
		String cn=request.getParameter("contacts");
		if(!cn.equals(""))
		{
			a.updateContact(cn);		
		}
		
		String add=request.getParameter("address");
		if(!add.equals(""))
		{
			a.updateAdd(add);		
		}
		
		String chapter=request.getParameter("chapter");
		if(!chapter.equals(""))
		{
			int h=a.updateChapter(chapter);	
			if(h==1)
			{
				String utilOutput = "No such chapter exists";
		    	request.setAttribute("utilOutput", utilOutput);
		    	request.getRequestDispatcher("personalForm.jsp").forward(request, response);
			}
		}
		
		String new_name=request.getParameter("uname");
		if(!new_name.equals(""))
		{
			a.updateUName(new_name);		
		}
		
		response.sendRedirect("profile.jsp");
	}

}
