package dao;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.ChiTietDatHangbean;


public class ChiTietDatHangdao {
	public ArrayList<ChiTietDatHangbean> getChiTietDatHang(long MaHD) throws Exception{
		ArrayList<ChiTietDatHangbean> ds = new ArrayList<ChiTietDatHangbean>();
		String sql = "select * from ChiTietHoaDon where MaHoaDon=?";
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st = cn.cn.prepareStatement(sql);
		st.setLong(1,MaHD);		
		ResultSet rs = st.executeQuery();
		while(rs.next()) {				
			Long MaChiTietHD=rs.getLong(1);
			String MaSach = rs.getString(2);
			int SoLuongMua = rs.getInt(3);
			Long MaHoaDon= rs.getLong(4);
			boolean DaMua= rs.getBoolean(5);
			ds.add(new ChiTietDatHangbean(MaChiTietHD, MaSach, SoLuongMua, MaHoaDon, DaMua));
		}	
		rs.close();
		st.close();
		cn.cn.close();
		return ds;
	}
	public boolean themChiTietDatHang(String MaSach,int SoLuongMua,Long MaHoaDon,boolean DaMua) throws Exception{
		String sql="insert into ChiTietHoaDon(MaSach,SoLuongMua,MaHoaDon,damua) values(?,?,?,?)";
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st = cn.cn.prepareStatement(sql);
		st.setString(1,MaSach);	
		st.setInt(2,SoLuongMua);	
		st.setLong(3,MaHoaDon);	
		st.setBoolean(4, DaMua);
	
		return st.executeUpdate()>0;
	}
}
