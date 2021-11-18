package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MayTinhController
 */
@WebServlet("/MayTinhController")
public class MayTinhController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MayTinhController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.setAttribute("alo", "ha ha");
		String[] ds = { "Ngan", "Them", "Huy", "Thu"};
		request.setAttribute("dsht", ds);
		
		
		
		
		String tama = request.getParameter("txta");
		String tamb = request.getParameter("txtb");
		if(tama==null) {
			RequestDispatcher rd = request.getRequestDispatcher("MayTinh.jsp");
			rd.forward(request, response);
		}
		else {
			long kq= 0;
			if(request.getParameter("butcong")!=null) {
				kq=Long.parseLong(tama) + Long.parseLong(tamb);
				request.setAttribute("kq",kq);
				RequestDispatcher rd = request.getRequestDispatcher("MayTinh.jsp");
				rd.forward(request, response);
			}
			else if (request.getParameter("buttru") != null) {
				kq = Long.parseLong(tama) - Long.parseLong(tamb);
				request.setAttribute("kq", kq);
				RequestDispatcher rd = request.getRequestDispatcher("MayTinh.jsp");
				rd.forward(request, response);
			} else if (request.getParameter("butnhan") != null) {
				kq = Long.parseLong(tama) * Long.parseLong(tamb);
				request.setAttribute("kq", kq);
				RequestDispatcher rd = request.getRequestDispatcher("MayTinh.jsp");
				rd.forward(request, response);
			} else if (request.getParameter("butchia") != null) {
				kq = Long.parseLong(tama) / Long.parseLong(tamb);
				request.setAttribute("kq", kq);
				RequestDispatcher rd = request.getRequestDispatcher("MayTinh.jsp");
				rd.forward(request, response);
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
