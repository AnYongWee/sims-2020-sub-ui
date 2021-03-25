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
	/*주소 시도*/
	private String addrSido;
	/*주소 시군구*/
	private String addrSigungu;
	/*주소 읍면*/
	private String addrEubmyun;
	/*주소 동*/
	private String addrDongri;
	/*인버터 발전량*/
	private float gentQnt;
	/*인버터 누적 발전량*/
	private float accumGentQnt;
	/*인버터 설치용량*/
	private float instlCpct;
	/*담당자*/
	private String cntPsnNm;
	/*담당자연락처*/
	private String cntPsnHpno; 
	
	
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


	public String getAddrSido() {
		return addrSido;
	}


	public void setAddrSido(String addrSido) {
		this.addrSido = addrSido;
	}


	public String getAddrSigungu() {
		return addrSigungu;
	}


	public void setAddrSigungu(String addrSigungu) {
		this.addrSigungu = addrSigungu;
	}


	public String getAddrEubmyun() {
		return addrEubmyun;
	}


	public void setAddrEubmyun(String addrEubmyun) {
		this.addrEubmyun = addrEubmyun;
	}


	public String getAddrDongri() {
		return addrDongri;
	}


	public void setAddrDongri(String addrDongri) {
		this.addrDongri = addrDongri;
	}


	public float getGentQnt() {
		return gentQnt;
	}


	public void setGentQnt(float gentQnt) {
		this.gentQnt = gentQnt;
	}


	public float getAccumGentQnt() {
		return accumGentQnt;
	}


	public void setAccumGentQnt(float accumGentQnt) {
		this.accumGentQnt = accumGentQnt;
	}


	public float getInstlCpct() {
		return instlCpct;
	}


	public void setInstlCpct(float instlCpct) {
		this.instlCpct = instlCpct;
	}


	public String getCntPsnNm() {
		return cntPsnNm;
	}


	public void setCntPsnNm(String cntPsnNm) {
		this.cntPsnNm = cntPsnNm;
	}


	public String getCntPsnHpno() {
		return cntPsnHpno;
	}


	public void setCntPsnHpno(String cntPsnHpno) {
		this.cntPsnHpno = cntPsnHpno;
	}


	public boolean isChecked() {
		return checked;
	}


	public void setChecked(boolean checked) {
		this.checked = checked;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
}
