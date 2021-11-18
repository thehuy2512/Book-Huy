package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import bean.DatHangbean;
import bean.KhachHangbean;
import bo.DatHangbo;


/**
 * Servlet implementation class LichSuMuaHangController
 */
@WebServlet("/LichSuMuaHangController")
public class LichSuMuaHangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LichSuMuaHangController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
			
		HttpSession session = request.getSession();
		KhachHangbean kh = (KhachHangbean)session.getAttribute("kh");
		ArrayList<DatHangbean> hoadon = new ArrayList<DatHangbean>();
		if(kh==null)
		{
			 
			// thong bao xac nhan tb "6" chưa dang nhâp
			session.setAttribute("tb", "6");
			request.setAttribute("tb", "6");
			
			RequestDispatcher rd = request.getRequestDispatcher("LichSuMuaHang.jsp");
			rd.forward(request, response);
		}
		else {
			//lay hàng hien co  trong gh chen vao db
			//thong bao xac nhận đặt mua gởi vào tb "7" đã đặt mua
			DatHangbo dhbo = new DatHangbo();
			
		
			try {
					hoadon = dhbo.getDatHang(Long.parseLong(kh.getMakh()));	
					request.setAttribute("hoadon", hoadon);
				
					RequestDispatcher rd = request.getRequestDispatcher("LichSuMuaHang.jsp");
					rd.forward(request, response);
				}catch (Exception e) {
					e.printStackTrace();
					
				}
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
