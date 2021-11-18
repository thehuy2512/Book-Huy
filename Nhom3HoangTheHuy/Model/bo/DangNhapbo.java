package bo;

import bean.DangNhapbean;
import dao.DangNhapdao;
public class DangNhapbo {
	DangNhapdao dndao = new DangNhapdao();
	public DangNhapbean ktdnAdmin(String sotaikhoan,String matkhau) throws Exception{
		return dndao.ktdnAdmin(sotaikhoan, matkhau);
	}
}
