package bo;



import java.util.ArrayList;

import bean.KhachHangbean;
import dao.KhachHangdao;

public class KhachHangbo {
	KhachHangdao khdao = new KhachHangdao();
	public ArrayList<KhachHangbean> tatcakhachhang() throws Exception{
		return khdao.tatcakhachhang();
	}
	public KhachHangbean ktdn(String tendn,String matkhau) throws Exception{
;	
		return khdao.ktdn(tendn, matkhau);
	}
	public boolean themuser(String hoten,String diachi, String tendn,String matkhau)  throws Exception {
		return khdao.themuser(hoten,diachi,tendn,matkhau);
	}
	public boolean updateUser(String hoten, String diachi, String tendn,String matkhau)  throws Exception {
		return khdao.updateUser(hoten, diachi, tendn, matkhau);
	}
	public boolean deleteUser(String tendn)  throws Exception {
		return khdao.deleteUser(tendn);
	}
}
