package Controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.DangNhapbean;
import bean.KhachHangbean;
import bo.DangNhapbo;
import bo.KhachHangbo;

/**
 * Servlet implementation class KtDangNhapController
 */
@WebServlet("/KtDangNhapController")
public class KtDangNhapController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public KtDangNhapController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
	    
	    KhachHangbean dsDn = null;
	    KhachHangbo khbo = new KhachHangbo();
	    DangNhapbean dsAdmin =null;
	    DangNhapbo dnbo =new DangNhapbo();
	    HttpSession session = request.getSession();
	    
		String username = request.getParameter("txtun");
		String password = request.getParameter("txtpass");
		
		dsDn=khbo.ktdn(username, password);
		dsAdmin = dnbo.ktdnAdmin(username, password);
			if(dsAdmin!=null) {
				if(session.getAttribute("admin1")==null)
				session.setAttribute("admin1", dsAdmin);
				request.setAttribute("admin1", dsAdmin);
				RequestDispatcher rd = request.getRequestDispatcher("HtSachController");
				rd.forward(request, response);
			}else {
				if(dsDn!=null) {
		  			if (session.getAttribute("kh")==null)
		  			session.setAttribute("kh", dsDn);
		  			request.setAttribute("kh", dsDn);
		  			session.setAttribute("tb", "đã đăng nhập");
		  			request.setAttribute("tb", "đã đăng nhập");
			  		//response.sendRedirect("HtSachController");
		  			RequestDispatcher rd = request.getRequestDispatcher("HtSachController");
					rd.forward(request, response);
			  		
		  			}else {
		  				session.setAttribute("tb", "1");
		  				request.setAttribute("tb", "1");
		  				// tb :1 dang nhap sai
		  				RequestDispatcher rd = request.getRequestDispatcher("HtSachController");
		  				rd.forward(request, response);
		  			}
			}		
		}catch (Exception e) {
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
