package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.GioHangbo;

/**
 * Servlet implementation class SuaGioHangController
 */
@WebServlet("/SuaGioHangController")
public class SuaGioHangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SuaGioHangController() {
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
		
		String msSua = request.getParameter("buttonsua");
		String sl = request.getParameter("txtsoluong");
		String msXoa = request.getParameter("buttonxoa");
		GioHangbo gh = (GioHangbo)session.getAttribute("gh");
		if(msSua!=null && sl!="0"){
			gh.Sua(msSua, Integer.parseInt(sl));
		}
		if(msXoa!=null){
			gh.Xoa(msXoa);
			
		}
		
		
		session.setAttribute("gh", gh);
		response.sendRedirect("HtGioHangController");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
