package bo;


import java.util.ArrayList;

import bean.DatHangbean;
import dao.DatHangdao;
public class DatHangbo {
	DatHangdao dhdao = new DatHangdao();
	public ArrayList<DatHangbean> getDatHang(long MaKH) throws Exception{
		return dhdao.getDatHang(MaKH);
	}
	public long themHoaDon(long MaKH,boolean damua) throws Exception{
		return dhdao.themHoaDon(MaKH, damua);
	}
}
