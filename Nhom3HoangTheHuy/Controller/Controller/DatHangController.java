package Controller;

import java.io.IOException;



import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import bean.GioHangbean;
import bean.KhachHangbean;
import bo.ChiTietDatHangbo;
import bo.DatHangbo;
import bo.GioHangbo;

/**
 * Servlet implementation class DatHangController
 */
@WebServlet("/DatHangController")
public class DatHangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DatHangController() {
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
	GioHangbo gh = (GioHangbo)session.getAttribute("gh");
	if(kh==null)
	{
		 
		// thong bao xac nhan tb "6" chưa dang nhâp
		session.setAttribute("tb", "6");
		request.setAttribute("tb", "6");
		
		RequestDispatcher rd = request.getRequestDispatcher("htGioHang.jsp");
		rd.forward(request, response);
	}
	else {
		//lay hàng hien co  trong gh chen vao db
		//thong bao xac nhận đặt mua gởi vào tb "7" đã đặt mua
		DatHangbo dhbo = new DatHangbo();
		ChiTietDatHangbo ctdhbo = new ChiTietDatHangbo();
	
		try {
				long idHD = dhbo.themHoaDon(Long.parseLong(kh.getMakh()), false);
				for(GioHangbean g:gh.ds) {
					ctdhbo.themChiTietDatHang(g.getMasach(), g.getSlmua(), idHD, false);				
				}
				session.setAttribute("gh", null);
				request.setAttribute("gh", null);
				session.setAttribute("tb", "7");
				request.setAttribute("tb", "7");
				RequestDispatcher rd = request.getRequestDispatcher("htGioHang.jsp");
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
