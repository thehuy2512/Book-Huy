package Controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import bean.loaibean;
import bo.ViewSachbo;
import bo.loaibo;

/**
 * Servlet implementation class tam123
 */
@WebServlet("/tam123")
public class tam123 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public tam123() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
	    
		// DiskFileItemFactory factory = new DiskFileItemFactory();
		 DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
		 ServletFileUpload upload = new ServletFileUpload(fileItemFactory);
		 ViewSachbo sbo = new ViewSachbo();
		// String dirUrl1 = request.getServletContext().getRealPath("") +  File.separator + "files";
		// response.getWriter().println(dirUrl1);
		 
		try {
			String masach="";
			String tensach="";
			long soluong=0;
			long gia=0;
			String maloai="";
			String sotap="";
			String anh="";
			
			String tacgia="";
			List<FileItem> fileItems = upload.parseRequest(request);//Lấy về các đối tượng gửi lên
			//duyệt qua các đối tượng gửi lên từ client gồm file và các control
			for (FileItem fileItem : fileItems) {
			 if (!fileItem.isFormField()) {//Nếu ko phải các control=>upfile lên
				// xử lý file
				//String nameimg = fileItem.getName();
				 anh = fileItem.getName();
				if (!anh.equals("")) {
			           //Lấy đường dẫn hiện tại, chủ ý xử lý trên dirUrl để có đường dẫn đúng
					String dirUrl = request.getServletContext().getRealPath("") + "image_sach";
					File dir = new File(dirUrl);
					if (!dir.exists()) {//nếu ko có thư mục thì tạo ra
						dir.mkdir();
					}
				           String fileImg = dirUrl + File.separator + anh;
				           File file = new File(fileImg);//tạo file
				            try {
				               fileItem.write(file);//lưu file
				              System.out.println("UPLOAD THÀNH CÔNG...!");
				              System.out.println("Đường dẫn lưu file là: "+dirUrl);
				 } catch (Exception e) {
				    e.printStackTrace();
				}
			}
		 }
			else//Neu la control
			{
				//fileItem.getFieldName();
				if(fileItem.getFieldName().equals("txtmasach"))
					masach = fileItem.getString();
				if(fileItem.getFieldName().equals("txttensach"))
					tensach = fileItem.getString(request.getCharacterEncoding());
				if(fileItem.getFieldName().equals("txtsoluongsach"))
					soluong = Long.parseLong(fileItem.getString());
				if(fileItem.getFieldName().equals("txtgiasach"))
					gia = Long.parseLong(fileItem.getString());
				if(fileItem.getFieldName().equals("txtmaloaisach"))
					maloai = fileItem.getString();
				if(fileItem.getFieldName().equals("txtsotapsach"))
					sotap = fileItem.getString();
				if(fileItem.getFieldName().equals("txttacgiasach"))
					tacgia = fileItem.getString(request.getCharacterEncoding());
					
			}
		}
		anh = "image_sach/"+anh;
		System.out.println(masach);
		System.out.println(tensach);
		System.out.println(soluong);
		System.out.println(gia);
		System.out.println(maloai);
		System.out.println(sotap);
		System.out.println(tacgia);
		System.out.println(anh);
		sbo.themSach(masach, tensach, soluong, gia, maloai, sotap, anh, tacgia);
		//boolean kt=sbo.themSach(masach, tensach, soluong, gia, maloai, sotap, anh, tacgia);
		//if(kt==true)
		//	System.out.println("Đã thêm");
		//else
		//	System.out.println("Chưa thêm");
		response.sendRedirect("ViewSachController");
		
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			
			loaibo lbo = new loaibo();
			//ArrayList<loaibean> ds = new ArrayList<loaibean>();
			try {
				request.setAttribute("dsloai", lbo.getloai());
				RequestDispatcher rd= request.getRequestDispatcher("adminthemsach.jsp");
				rd.forward(request, response);
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
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
