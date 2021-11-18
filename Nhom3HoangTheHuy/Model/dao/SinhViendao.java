package dao;

import java.util.ArrayList;
import bean.SinhVienbean;

public class SinhViendao {
	public ArrayList<SinhVienbean> getsv(){
	ArrayList<SinhVienbean> ds= new ArrayList<SinhVienbean>();
	 ds.add(new SinhVienbean("sv1", "Nguyễn Thanh Nam 1", "Huế", 7.5, "cntt"));
	 ds.add(new SinhVienbean("sv2", "Nguyễn Thanh Nam 2", "Huế", 7.5, "cntt"));
	 ds.add(new SinhVienbean("sv3", "Nguyễn Thanh Nam 4", "Huế", 7.5, "toan"));
	 ds.add(new SinhVienbean("sv4", "Nguyễn Thanh Nam 5", "Huế", 7.5, "cntt"));
	 ds.add(new SinhVienbean("sv5", "Nguyễn Thanh Nam 6", "Huế", 7.5, "ly"));
	 	return ds;
	}
}
