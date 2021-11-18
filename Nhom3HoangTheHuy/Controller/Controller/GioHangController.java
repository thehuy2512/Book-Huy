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
import bo.GioHangbo;



/**
 * Servlet implementation class GioHangController
 */
@WebServlet("/GioHangController")
public class GioHangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GioHangController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8") ;
		response.setCharacterEncoding("utf-8");
		
		
		   HttpSession session = request.getSession();
//		   loaibo lbo = new loaibo();
//		   ArrayList<loaibean>	dsloai =lbo.getloai();
//		   request.setAttribute("dsloai", dsloai);
		   KhachHangbean kh = (KhachHangbean)session.getAttribute("kh");
			String masach = request.getParameter("ms");
			String tensach = request.getParameter("ts");
			String tacgia = request.getParameter("tg");
			String tamanh = request.getParameter("anh");
			String tamgia = request.getParameter("gia");
			// nên viết thêm xữ lý kiểm tra đăng nhập chưa chưa dn thì ko cho in giỏ ra
			if (kh!=null) {
			GioHangbo gh = new GioHangbo();
			if (session.getAttribute("gh")== null){
					session.setAttribute("gh", gh);
			}
			if(masach!=null){	
				if(session.getAttribute("gh")==null){
						gh= new GioHangbo();
						session.setAttribute("gh", gh);
				}
				
				gh = (GioHangbo) session.getAttribute("gh");
				gh.Them(masach, tensach, tacgia, tamanh,Long.parseLong(tamgia), (int)1);
				
				
				
				session.setAttribute("gh", gh);
				//RequestDispatcher rd = request.getRequestDispatcher("htGioHang.jsp");
				//rd.forward(request, response);
				response.sendRedirect("HtGioHangController");
			}
			}
			else {
				session.setAttribute("tb", "6");
				response.sendRedirect("HtGioHangController");
			}
			
			//response.sendRedirect("htGioHang.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
