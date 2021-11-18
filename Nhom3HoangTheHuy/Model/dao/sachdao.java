package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


import bean.sachbean;


public class sachdao {

	public ArrayList<sachbean> getsach() throws Exception {
		ArrayList<sachbean> ds = new ArrayList<sachbean>();
		String sql ="select * from sach";
	
			DungChung cn = new DungChung();
			cn.KetNoi();
			PreparedStatement st = cn.cn.prepareStatement(sql);
			
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				// 1masach, 2ten, 3sl , 4gia , 5ma loai, 6so tap, 7anh , 8ngay , 9tacgia
				ds.add(new sachbean(rs.getString(1),rs.getString(2),rs.getString(9),rs.getLong(3),rs.getLong(4),rs.getString(7),rs.getString(5)));
				
			}
			rs.close();
			st.close();
			cn.cn.close();
	
		return ds;
	}
	public ArrayList<sachbean> getsachtheoma(String ms) throws Exception{
		ArrayList<sachbean> ds = new ArrayList<sachbean>();
		String sql ="select * from sach where masach=?";

			DungChung cn = new DungChung();
			cn.KetNoi();
			
			PreparedStatement st = cn.cn.prepareStatement(sql);
			st.setString(1, ms);
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				// 1masach, 2ten, 3sl , 4gia , 5ma loai, 6so tap, 7anh , 8ngay , 9tacgia
				ds.add(new sachbean(rs.getString(1),rs.getString(2),rs.getString(9),rs.getLong(3),rs.getLong(4),rs.getString(7),rs.getString(5)));
				
			}
			rs.close();
			st.close();
			cn.cn.close();
	
		return ds;
	}
}
