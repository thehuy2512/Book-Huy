package dao;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.KhachHangbean;


public class KhachHangdao {

	public ArrayList<KhachHangbean> tatcakhachhang() throws Exception{
		ArrayList<KhachHangbean> ds = new ArrayList<KhachHangbean>();
		String sql ="select * from KhachHang";
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st = cn.cn.prepareStatement(sql);
		ResultSet rs = st.executeQuery();
		while(rs.next()) {
			ds.add(new KhachHangbean(rs.getString(1),rs.getString(2), rs.getString(3), rs.getString(6),rs.getString(7)));
		}
		
		rs.close();
		st.close();
		cn.cn.close();
		return ds;
	}
	public KhachHangbean ktdn(String tendn,String matkhau)  throws Exception {	
		String sql ="select * from KhachHang where tendn=? and pass=?";
		
			DungChung cn = new DungChung();
			cn.KetNoi();
			PreparedStatement st = cn.cn.prepareStatement(sql);
			st.setString(1,tendn);
			st.setString(2, matkhau);
			ResultSet rs = st.executeQuery();

			if (rs.next()==false) {
				rs.close();
				st.close();
				cn.cn.close();
				return null;
			}
				
			else {
			
				KhachHangbean bean = new KhachHangbean(rs.getString(1),rs.getString(2), rs.getString(3), rs.getString(6),rs.getString(7));
				
				rs.close();
				st.close();
				cn.cn.close();
				return bean;
				
			}

	}
	public boolean themuser(String hoten, String diachi, String tendn,String matkhau)  throws Exception {
		
		
		
		
		String sql ="insert into KhachHang(hoten,diachi,tendn,pass) values(?,?,?,?)";
		
			DungChung cn = new DungChung();
			cn.KetNoi();
			PreparedStatement st = cn.cn.prepareStatement(sql);
			st.setString(1,hoten);
			st.setString(2,diachi);
			st.setString(3,tendn);
			st.setString(4, matkhau);
			//ResultSet rs = st.executeQuery();
			return st.executeUpdate()>0;
			
		
		
	}
	public boolean updateUser(String hoten, String diachi, String tendn,String matkhau)  throws Exception {
		
		
		
		
		String sql ="update KhachHang set hoten=?,diachi=?,tendn=?,matkhau=? where tendn=?";
		
			DungChung cn = new DungChung();
			cn.KetNoi();
			PreparedStatement st = cn.cn.prepareStatement(sql);
			st.setString(1,hoten);
			st.setString(2,diachi);
			st.setString(3,tendn);
			st.setString(4, matkhau);
			st.setString(5, tendn);
			//ResultSet rs = st.executeQuery();
			return st.executeUpdate()>0;
			
		
		
	}
	public boolean deleteUser(String tendn)  throws Exception {
		
		
		
		
		String sql ="delete from KhachHang where tendn=?";
		
			DungChung cn = new DungChung();
			cn.KetNoi();
			PreparedStatement st = cn.cn.prepareStatement(sql);
			st.setString(1,tendn);
			//ResultSet rs = st.executeQuery();
			return st.executeUpdate()>0;
			
		
		
	}
}
