package bean;

public class KhachHangbean {
	private String makh;
	private String hoten;
	private String diachi;
	private String tendn;
	private String matkhau;
	public KhachHangbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public KhachHangbean(String makh, String hoten, String diachi, String tendn, String matkhau) {
		super();
		this.makh = makh;
		this.hoten = hoten;
		this.diachi = diachi;
		this.tendn = tendn;
		this.matkhau = matkhau;
	}
	public String getMakh() {
		return makh;
	}
	public void setMakh(String makh) {
		this.makh = makh;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	
	public String getTendn() {
		return tendn;
	}
	public void setTendn(String tendn) {
		this.tendn = tendn;
	}
	public String getMatkhau() {
		return matkhau;
	}
	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}
	
}
