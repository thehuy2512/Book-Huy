package Controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.KhachHangbean;
import bo.KhachHangbo;

/**
 * Servlet implementation class KtDangKyController
 */
@WebServlet("/KtDangKyController")
public class KtDangKyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public KtDangKyController() {
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
		    
			KhachHangbean dsDn= null;
		    KhachHangbo khbo = new KhachHangbo();
		    HttpSession session = request.getSession();
		    
		    String hoten = request.getParameter("txtname");
			String diachi = request.getParameter("txtaddress");
			String username = request.getParameter("txtundk");
			String password = request.getParameter("txtpassdk");
			String confirmpassword = request.getParameter("txtconfirmpass");
					
			dsDn=khbo.ktdn(username, password);	 
			if(dsDn!=null) {
	  			
	  			session.setAttribute("tb", "2");
	  			request.setAttribute("tb", "2");
	  			// 2 la tai khoan ton tai
	  			RequestDispatcher rd = request.getRequestDispatcher("HtSachController");
				rd.forward(request, response);
		  		
	  		}else {
	  			if (!password.equals(confirmpassword)) {
	  				session.setAttribute("tb", "3");
		  			request.setAttribute("tb", "3");
		  			// 3 la mat khau khong khop
		  			RequestDispatcher rd = request.getRequestDispatcher("HtSachController");
					rd.forward(request, response);
	  			}
	  			else {
	  				 if(khbo.themuser(hoten,diachi,username, password)==true) {
	  					session.setAttribute("tb", "4");
			  			request.setAttribute("tb", "4"); 
			  			//4 dki thanh cong
			  			RequestDispatcher rd = request.getRequestDispatcher("HtSachController");
						rd.forward(request, response);
						
	  				 }
	  				 else {
	  					session.setAttribute("tb", "5");
			  			request.setAttribute("tb", "5");  
			  			//5 dki loi
			  			RequestDispatcher rd = request.getRequestDispatcher("HtSachController");
						rd.forward(request, response);
	  				 }
	  				
	  			}
	  		}
		}catch(Exception e) {
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
