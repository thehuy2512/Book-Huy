package bean;

public class ChiTietDatHangbean {
	private Long MaChiTietHD;
	private String MaSach;
	private int SoLuongMua;
	private long MaHoaDon;
	private boolean DaMua;
	public ChiTietDatHangbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ChiTietDatHangbean(Long maChiTietHD, String maSach, int soLuongMua, Long maHoaDon, boolean daMua) {
		super();
		this.MaChiTietHD = maChiTietHD;
		this.MaSach = maSach;
		this.SoLuongMua = soLuongMua;
		this.MaHoaDon = maHoaDon;
		this.DaMua = daMua;
	}
	public Long getMaChiTietHD() {
		return MaChiTietHD;
	}
	public void setMaChiTietHD(Long maChiTietHD) {
		this.MaChiTietHD = maChiTietHD;
	}
	public String getMaSach() {
		return MaSach;
	}
	public void setMaSach(String maSach) {
		this.MaSach = maSach;
	}
	public long getSoLuongMua() {
		return SoLuongMua;
	}
	public void setSoLuongMua(int soLuongMua) {
		this.SoLuongMua = soLuongMua;
	}
	public Long getMaHoaDon() {
		return MaHoaDon;
	}
	public void setMaHoaDon(Long maHoaDon) {
		this.MaHoaDon = maHoaDon;
	}
	public boolean isDaMua() {
		return DaMua;
	}
	public void setDaMua(boolean daMua) {
		DaMua = daMua;
	}
	
}
