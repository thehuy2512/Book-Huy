package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.ViewHoaDonbean;


public class ViewHoaDondao {
	public ArrayList<ViewHoaDonbean> getViewHoaDon() throws Exception{
		ArrayList<ViewHoaDonbean> ds = new ArrayList<ViewHoaDonbean>();
		String sql="select * from ViewHoaDon";
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st = cn.cn.prepareStatement(sql);
		ResultSet rs = st.executeQuery();
		while(rs.next()) {
			ds.add(new ViewHoaDonbean(rs.getLong(1),rs.getString(2),rs.getDate(3),rs.getLong(4),rs.getLong(5),rs.getLong(6),rs.getLong(7),rs.getBoolean(8)));
		}
		rs.close();
		st.close();
		cn.cn.close();
		return ds;
	}
	public boolean updateViewHoaDon(Long Mahd) throws Exception{
		String sql="update hoadon set damua=1 where MaHoaDon=?";
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st = cn.cn.prepareStatement(sql);
		st.setLong(1,Mahd);
		return st.executeUpdate()>0;
	}
	public boolean updateViewCTHoaDon(Long Mahd) throws Exception{
		String sql="update ChiTietHoaDon set damua=1 where MaHoaDon=?";
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st = cn.cn.prepareStatement(sql);
		st.setLong(1,Mahd);
		return st.executeUpdate()>0;
	}
}
