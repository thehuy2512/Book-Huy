package bean;

public class GioHangbean {
	private String masach;
	private String tensach;
	private String tacgia;
	private String anh;
	private Long gia;
	private int slmua;
	private Long thanhtien;

	public GioHangbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public GioHangbean(String masach, String tensach, String tacgia, String anh,Long gia, int slmua) {
		super();
		this.masach = masach;
		this.tensach = tensach;
		this.tacgia = tacgia;
		this.anh = anh;
		this.gia = gia;
		this.slmua = slmua;
		this.thanhtien = gia*slmua;
	}
	public String getMasach() {
		return masach;
	}
	public void setMasach(String masach) {
		this.masach = masach;
	}
	public String getTensach() {
		return tensach;
	}
	public void setTensach(String tensach) {
		this.tensach = tensach;
	}
	public String getTacgia() {
		return tacgia;
	}
	public void setTacgia(String tacgia) {
		this.tacgia = tacgia;
	}
	
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public Long getGia() {
		return gia;
	}
	public void setGia(Long gia) {
		this.gia = gia;
	}
	public int getSlmua() {
		return slmua;
	}
	public void setSlmua(int slmua) {
		this.slmua = slmua;
	}
	public Long getThanhtien() {
		return gia*slmua;
	}
	public void setThanhtien(Long thanhtien) {
		this.thanhtien = thanhtien;
	}
	
}
