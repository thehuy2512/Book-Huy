package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.ViewSachBean;

import bo.ViewSachbo;


/**
 * Servlet implementation class ViewSachController
 */
@WebServlet("/ViewSachController")
public class ViewSachController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewSachController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
		request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
	    
	   
	    
	    ViewSachbo sbo = new ViewSachbo();
	    ArrayList<ViewSachBean> dssach =new ArrayList<ViewSachBean>();
	    dssach = sbo.getSach();
	    request.setAttribute("dssach", dssach);
		
		RequestDispatcher rd= request.getRequestDispatcher("adminsach.jsp");
		rd.forward(request, response);
		}catch (Exception e){
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
