package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.DangNhapbean;

public class DangNhapdao {
	public DangNhapbean ktdnAdmin(String sotaikhoan,String matkhau) throws Exception{
		String sql ="select * from DangNhap where TenDangNhap=? and MatKhau=? and Quyen=?";
		
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st = cn.cn.prepareStatement(sql);
		st.setString(1,sotaikhoan);
		st.setString(2, matkhau);
		st.setBoolean(3, true);
		ResultSet rs = st.executeQuery();

		if (rs.next()==false) {
			rs.close();
			st.close();
			cn.cn.close();
			return null;
		}
			
		else {
		
			DangNhapbean dnbean = new DangNhapbean(sotaikhoan, matkhau, true);
			
			rs.close();
			st.close();
			cn.cn.close();
			return dnbean;
			
		}
	}
	//
}
