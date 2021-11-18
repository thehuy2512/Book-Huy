package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.ViewHoaDonbean;
import bo.ViewHoaDonbo;

/**
 * Servlet implementation class updateViewHoaDonController
 */
@WebServlet("/updateViewHoaDonController")
public class updateViewHoaDonController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateViewHoaDonController() {
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
		    
		   String tammahd =request.getParameter("mahd");
		    ViewHoaDonbo hdbo =new ViewHoaDonbo();
		    
			boolean kt= hdbo.updateViewHoaDon(Long.parseLong(tammahd));
			boolean kt2 = hdbo.updateViewCTHoaDon(Long.parseLong(tammahd));
		   if (kt==true && kt2==true) {
		    	//ArrayList<ViewHoaDonbean> dshd = new ArrayList<ViewHoaDonbean>();
			   // dshd = hdbo.getViewHoaDon();
			   // request.setAttribute("dshd", dshd);
			    RequestDispatcher rd= request.getRequestDispatcher("ViewHoaDonController");
				rd.forward(request, response);
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
