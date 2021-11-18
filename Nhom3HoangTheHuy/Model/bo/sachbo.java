package bo;

import java.util.ArrayList;

import bean.sachbean;
import dao.sachdao;

public class sachbo {
	sachdao sdao = new sachdao();
	public ArrayList<sachbean> getsach() throws Exception {
		return sdao.getsach();
	}
	public ArrayList<sachbean> getsachtheoma(String ms) throws Exception{
		return sdao.getsachtheoma(ms);
	}
	public Long DemSach(String maloai) throws Exception {
		ArrayList<sachbean> ds= getsach();
		Long d=(long)0;
		for(sachbean s:ds)
			if(s.getMaloai().equals(maloai))
				   d++;
		   return d;	
	}
	public ArrayList<sachbean> TimLoai(String maloai) throws Exception {
		ArrayList<sachbean> ds= getsach();
		ArrayList<sachbean> tam= new ArrayList<sachbean>();
		for(sachbean s:ds)
			if(s.getMaloai().equals(maloai))
				   tam.add(s);
		   return tam;	
	}
	public ArrayList<sachbean> Tim(String key) throws Exception {
		ArrayList<sachbean> ds= getsach();
		ArrayList<sachbean> tam= new ArrayList<sachbean>();
		for(sachbean s:ds)
			if(s.getTensach().trim().toLowerCase().contains(key.trim().toLowerCase())||
					   s.getTacgia().trim().toLowerCase().contains(key.trim().toLowerCase()))
				   tam.add(s);
		   return tam;	
	}
}
