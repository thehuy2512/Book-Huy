package bean;

import java.sql.Date;


public class DatHangbean {
	private Long MaHoaDon;
	private Long makh;
	private Date NgayMua;
	private boolean DaMua;
	public DatHangbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DatHangbean(Long maHoaDon, Long makh, Date ngayMua, boolean daMua) {
		super();
		this.MaHoaDon = maHoaDon;
		this.makh = makh;
		this.NgayMua = ngayMua;
		this.DaMua = daMua;
	}
	public Long getMaHoaDon() {
		return MaHoaDon;
	}
	public void setMaHoaDon(Long maHoaDon) {
		this.MaHoaDon = maHoaDon;
	}
	public Long getMakh() {
		return makh;
	}
	public void setMakh(Long makh) {
		this.makh = makh;
	}
	public Date getNgayMua() {
		return NgayMua;
	}
	public void setNgayMua(Date ngayMua) {
		this.NgayMua = ngayMua;
	}
	public boolean isDaMua() {
		return DaMua;
	}
	public void setDaMua(boolean daMua) {
		this.DaMua = daMua;
	}
	
}
