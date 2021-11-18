package dao;





import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.loaibean;

public class loaidao {
//	public ArrayList<loaibean> getloai(){
//		ArrayList<loaibean> ds= new ArrayList<loaibean>();
//	 	   ds.add(new loaibean("cntt", "Công nghệ thông tin"));
//	 	   ds.add(new loaibean("yte", "Y tế"));
//	 	   ds.add(new loaibean("sinh", "Sinh học"));
//	 	   ds.add(new loaibean("vatly", "Vật ký"));
//	 	   ds.add(new loaibean("dia", "Địa lý"));
//	 	   return ds;
//		
//	}
	public ArrayList<loaibean>getloai() throws Exception{
		ArrayList<loaibean> ds = new ArrayList<loaibean>();
		String sql ="select * from loai";
		//try {
			DungChung cn = new DungChung();
			cn.KetNoi();
			PreparedStatement st = cn.cn.prepareStatement(sql);
			
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				ds.add(new loaibean(rs.getString(1), rs.getString(2)));
			}
			rs.close();
			st.close();
			cn.cn.close();
		//} catch (Exception e) {
	//		e.printStackTrace();
	//	}
		return ds;
	}
}
