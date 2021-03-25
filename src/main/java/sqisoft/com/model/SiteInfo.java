package sqisoft.com.model;

import java.io.Serializable;

public class SiteInfo implements Serializable{
	
	private static final long serialVersionUID = -4794059351050208934L;
	
	/*사이트고유번호*/
	private int siteSeq;
	/*고객사고유번호*/
	private int custSeq;
	/*사이트명*/
	private String siteNm;
	/*위도*/
	private int lat;
	/*경도*/
	private int lng;
	/*우편번호*/
	private String zipCd;
	/*주소*/
	private String addr;
	/*주소부가*/
	private String addrAdt;
	/*지구명*/
	private String dstNm;
	/*지구코드*/
	private String dstCd;
	/*비고*/
	private String rmrk;
	
	private boolean checked;
	
	public int getSiteSeq() {
		return siteSeq;
	}
	public void setSiteSeq(int siteSeq) {
		this.siteSeq = siteSeq;
	}
	public int getCustSeq() {
		return custSeq;
	}
	public void setCustSeq(int custSeq) {
		this.custSeq = custSeq;
	}
	public String getSiteNm() {
		return siteNm;
	}
	public void setSiteNm(String siteNm) {
		this.siteNm = siteNm;
	}
	public int getLat() {
		return lat;
	}
	public void setLat(int lat) {
		this.lat = lat;
	}
	public int getLng() {
		return lng;
	}
	public void setLng(int lng) {
		this.lng = lng;
	}
	public String getZipCd() {
		return zipCd;
	}
	public void setZipCd(String zipCd) {
		this.zipCd = zipCd;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getAddrAdt() {
		return addrAdt;
	}
	public void setAddrAdt(String addrAdt) {
		this.addrAdt = addrAdt;
	}
	public String getDstNm() {
		return dstNm;
	}
	public void setDstNm(String dstNm) {
		this.dstNm = dstNm;
	}
	public String getDstCd() {
		return dstCd;
	}
	public void setDstCd(String dstCd) {
		this.dstCd = dstCd;
	}
	public String getRmrk() {
		return rmrk;
	}
	public void setRmrk(String rmrk) {
		this.rmrk = rmrk;
	}
	public boolean isChecked() {
		return checked;
	}
	public void setChecked(boolean checked) {
		this.checked = checked;
	}
	
}
