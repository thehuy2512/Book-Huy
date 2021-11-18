package bo;

import java.util.ArrayList;

import bean.ChiTietDatHangbean;
import dao.ChiTietDatHangdao;
public class ChiTietDatHangbo {
	ChiTietDatHangdao ctdhdao = new ChiTietDatHangdao();
	public ArrayList<ChiTietDatHangbean> getChiTietDatHang(long MaHD) throws Exception{
		return ctdhdao.getChiTietDatHang(MaHD);
	}
	public boolean themChiTietDatHang(String MaSach,int SoLuongMua,Long MaHoaDon,boolean DaMua) throws Exception{
		return ctdhdao.themChiTietDatHang(MaSach, SoLuongMua, MaHoaDon, DaMua);
	}
}
