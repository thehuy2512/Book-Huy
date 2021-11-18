package bo;

import java.util.ArrayList;

import bean.ViewSachBean;
import dao.ViewSachdao;

public class ViewSachbo {
	ViewSachdao sdao = new ViewSachdao();
	public ArrayList<ViewSachBean> getSach() throws Exception{
		return sdao.getSach();
	}
	public ViewSachBean getSachTheoMa(String masach) throws Exception{
		return sdao.getSachTheoMa(masach);
	}
	public boolean xoaSach(String masach) throws Exception{
		return sdao.xoaSach(masach);
	}
	public boolean themSach(String masach,String tensach,long soluong,long gia,String maloai,String sotap,String anh,String tacgia) throws Exception{
		return sdao.themSach(masach, tensach, soluong, gia, maloai, sotap, anh, tacgia);
	}
	public boolean suaSach(String masach,String tensach,long soluong,long gia, String maloai,String sotap,String anh, String tacgia) throws Exception{
		return sdao.suaSach(masach, tensach, soluong, gia, maloai, sotap, anh, tacgia);
	}
}
