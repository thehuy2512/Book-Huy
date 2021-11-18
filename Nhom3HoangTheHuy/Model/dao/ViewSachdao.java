package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.ViewSachBean;

public class ViewSachdao {
	public ArrayList<ViewSachBean> getSach() throws Exception{
		ArrayList<ViewSachBean> ds = new ArrayList<ViewSachBean>();
		String sql="select * from sach";
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st = cn.cn.prepareStatement(sql);
		ResultSet rs = st.executeQuery();
		while(rs.next()) {
			ds.add(new ViewSachBean(rs.getString(1), rs.getString(2), rs.getLong(3), rs.getLong(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getDate(8), rs.getString(9)));
		}
		rs.close();
		st.close();
		cn.cn.close();
		return ds;
	}
	public ViewSachBean getSachTheoMa(String masach) throws Exception{
		//ArrayList<ViewSachBean> ds = new ArrayList<ViewSachBean>();
		String sql="select * from sach where masach=?";
		
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st = cn.cn.prepareStatement(sql);
		st.setString(1, masach);
		ResultSet rs = st.executeQuery();
		if (rs.next()==false) {
			rs.close();
			st.close();
			cn.cn.close();
			return null;
		}else {
		ViewSachBean sbean = new ViewSachBean(rs.getString(1),rs.getString(2), rs.getLong(3), rs.getLong(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getDate(8), rs.getString(9));
		
		rs.close();
		st.close();
		cn.cn.close();
		
		return sbean;
		}
	}
	public boolean xoaSach(String masach) throws Exception{
		String sql="delete sach where masach=?";
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st = cn.cn.prepareStatement(sql);
		st.setString(1,masach);
		return st.executeUpdate()>0;
	}
	public boolean themSach(String masach,String tensach,long soluong,long gia,String maloai,String sotap,String anh,String tacgia) throws Exception{
		String sql="insert into sach(masach,tensach,soluong,gia,maloai,sotap,anh,tacgia) values(?,?,?,?,?,?,?,?)";
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st = cn.cn.prepareStatement(sql);
		st.setString(1,masach);
		st.setString(2, tensach);
		st.setLong(3, soluong);
		st.setLong(4, gia);
		st.setString(5, maloai);
		st.setString(6, sotap);
		st.setString(7, anh);
		st.setString(8, tacgia);
		return st.executeUpdate()>0;
	}
	public boolean suaSach(String masach,String tensach,long soluong,long gia, String maloai,String sotap,String anh, String tacgia) throws Exception{
		String sql="update sach set tensach=?,soluong=?,gia=?,maloai=?,sotap=?,anh=?,tacgia=? where masach=?";
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st = cn.cn.prepareStatement(sql);
		
		st.setString(1, tensach);
		st.setLong(2, soluong);
		st.setLong(3, gia);
		st.setString(4, maloai);
		st.setString(5, sotap);
		st.setString(6, anh);
		st.setString(7, tacgia);
		st.setString(8, masach);
		return st.executeUpdate()>0;
	}
	
}
