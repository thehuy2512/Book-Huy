package bo;

import java.util.ArrayList;

import bean.ViewHoaDonbean;
import dao.ViewHoaDondao;

public class ViewHoaDonbo {
	ViewHoaDondao hddao =new ViewHoaDondao();
	public ArrayList<ViewHoaDonbean> getViewHoaDon() throws Exception{
		return hddao.getViewHoaDon();
	}
	public boolean updateViewHoaDon(Long Mahd) throws Exception{
		return hddao.updateViewHoaDon(Mahd);
	}
	public boolean updateViewCTHoaDon(Long Mahd) throws Exception{
		return hddao.updateViewCTHoaDon(Mahd);
	}
}
