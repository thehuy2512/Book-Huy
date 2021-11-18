package dao;


import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import bean.DatHangbean;

public class DatHangdao {
	public ArrayList<DatHangbean> getDatHang(long MaKH) throws Exception{
		ArrayList<DatHangbean> ds = new ArrayList<DatHangbean>();
		String sql = "select * from hoadon where makh=?";
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st = cn.cn.prepareStatement(sql);
		st.setLong(1,MaKH);		
		ResultSet rs = st.executeQuery();
		while(rs.next()) {				
			Long maHoaDon = rs.getLong(1);
			Long makh = rs.getLong(2);
			Date ngayMua = rs.getDate(3);
			boolean daMua = rs.getBoolean(4);
			ds.add(new DatHangbean(maHoaDon, makh, ngayMua, daMua));
		}	
		rs.close();
		st.close();
		cn.cn.close();
		return ds;
	}
	public Long themHoaDon(long MaKH,boolean damua) throws Exception{
		String sql="insert into hoadon(makh,damua) values(?,?)";
		DungChung cn = new DungChung();
		cn.KetNoi();
		PreparedStatement st = cn.cn.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
		st.setLong(1,MaKH);	
		//st.setDate(2,NgayMua);	
		st.setBoolean(2,damua);	
		//ResultSet rs = st.executeQuery();
			
		//rs.close();
		int affectedRows = st.executeUpdate();
		if (affectedRows ==0)
			return (long)-1;// -1 la ko co kq
		try (ResultSet generatedKeys = st.getGeneratedKeys()) {
			if(generatedKeys.next()) {
				return generatedKeys.getLong(1); // chi co 1 kq
			}
			else return (long)-2; // -2 la chi co 1 kh
		}
		
	}
 }
