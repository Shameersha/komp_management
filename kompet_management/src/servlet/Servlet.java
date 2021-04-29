package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.reg;

import dao.Daoreg;



/**
 * Servlet implementation class Servlet
 */
@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet() {
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
		doGet(request, response);
		String action=request.getParameter("action");
		if(action.equals("register")){  
			String id=request.getParameter("id");
			String password=request.getParameter("password");
			reg obj=new reg();
			obj.setId(id);
			obj.setPassword(password);
			Daoreg ob1=new Daoreg();
			String ok=ob1.login(obj);
			
			
			if(ok.equals("success")){
				request.getRequestDispatcher("reg3.jsp").forward(request,response);
			}
			
			
			}
		if(action.equals("join")){
			String batch=request.getParameter("rad");
			reg obj=new reg();
			obj.setBatch(batch);
			
			Daoreg ob1=new Daoreg();
			ArrayList<reg> list=ob1.join(obj);
			HttpSession session=request.getSession();
			session.setAttribute("userlist",list);
			request.getRequestDispatcher("studview.jsp").forward(request,response);
						
			
		}
		if(action.equals("interview")){
			String cname=request.getParameter("name");
			String position=request.getParameter("position");
			String stream=request.getParameter("stream");
			String year=request.getParameter("year");
			String exper=request.getParameter("experience");
			String backlogs=request.getParameter("backlogs");
			reg ob=new reg();
			ob.setName(cname);
			ob.setPosition(position);
			ob.setStream(stream);
			ob.setYear(year);
			ob.setExperience(exper);
			ob.setBacklogs(backlogs);
			Daoreg ob2=new Daoreg();
			String ok=ob2.register(ob);
			if(ok.equals("success")){
				request.getRequestDispatcher("yes.jsp").forward(request,response);	
			}
			
		}
		
		
		
	}

}
