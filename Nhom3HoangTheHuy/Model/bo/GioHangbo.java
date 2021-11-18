package bo;

import java.util.ArrayList;

import bean.GioHangbean;


public class GioHangbo {
	public ArrayList<GioHangbean> ds = new ArrayList<GioHangbean>();
	public 	void Them(String masach, String tensach, String tacgia, String anh, Long gia, int sl) {
		for(GioHangbean g:ds)
			if(g.getMasach().equals(masach)) {
				g.setSlmua(g.getSlmua()+sl);
				return;
			}
		ds.add(new GioHangbean(masach, tensach, tacgia, anh, gia, sl));
	}
	public void Sua(String masach, int sl) {
		for(GioHangbean g:ds)
		{
			if(g.getMasach().equals(masach)) {
				g.setSlmua(sl);
				return;
			}
		}
	}
	public void Xoa(String masach) {
		for(GioHangbean g: ds)
			if(g.getMasach().equals(masach)) {
				ds.remove(g);
				break;
			}
		
	}
	public long Tongsach() {
		long tongsach =0;
		for(GioHangbean o:ds) {
			tongsach+=o.getSlmua();
		}
		return tongsach;
	}
	public long Tongtien(){
		long tongtien=0;
		for(GioHangbean o:ds) {
			tongtien+=o.getThanhtien();
		}
		return tongtien;
	}
	public void Xoaall() {
		ds.removeAll(ds);
	}
	public long soluongmathang() {
		int sl = (int) 0;
		for (GioHangbean o : ds) {
			sl = sl + 1;
		}
		return sl;
	}
}
