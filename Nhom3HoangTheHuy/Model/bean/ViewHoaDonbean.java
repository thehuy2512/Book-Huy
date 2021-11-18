package bean;

import java.sql.Date;

public class ViewHoaDonbean {
	private Long makh;
	private String hoten;
	private Date NgayMua;
	private Long MaHoaDon;
	private Long TSL;
	private Long TGia;
	private Long TThanhTien;
	private boolean damua;
	public ViewHoaDonbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ViewHoaDonbean(Long makh, String hoten, Date ngayMua, Long maHoaDon, Long tSL, Long tGia, Long tThanhTien,
			boolean damua) {
		super();
		this.makh = makh;
		this.hoten = hoten;
		this.NgayMua = ngayMua;
		this.MaHoaDon = maHoaDon;
		this.TSL = tSL;
		this.TGia = tGia;
		this.TThanhTien = tThanhTien;
		this.damua = damua;
	}
	public Long getMakh() {
		return makh;
	}
	public void setMakh(Long makh) {
		this.makh = makh;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public Date getNgayMua() {
		return NgayMua;
	}
	public void setNgayMua(Date ngayMua) {
		this.NgayMua = ngayMua;
	}
	public Long getMaHoaDon() {
		return MaHoaDon;
	}
	public void setMaHoaDon(Long maHoaDon) {
		this.MaHoaDon = maHoaDon;
	}
	public Long getTSL() {
		return TSL;
	}
	public void setTSL(Long tSL) {
		this.TSL = tSL;
	}
	public Long getTGia() {
		return TGia;
	}
	public void setTGia(Long tGia) {
		this.TGia = tGia;
	}
	public Long getTThanhTien() {
		return TThanhTien;
	}
	public void setTThanhTien(Long tThanhTien) {
		this.TThanhTien = tThanhTien;
	}
	public boolean isDamua() {
		return damua;
	}
	public void setDamua(boolean damua) {
		this.damua = damua;
	}
	
	
}
