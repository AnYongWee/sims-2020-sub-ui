package sqisoft.com.model;

import java.io.Serializable;

public class SiteInfo implements Serializable{
	
	private static final long serialVersionUID = -4794059351050208934L;
	
	/*사이트고유번호*/
	private int siteSeq;
	/*고객사고유번호*/
	private int custSeq;
	/*고객사명*/
	private String custNm;
	/*한전고객번호*/
	private String kepcoCustNo;
	/*ismart 비밀번호*/
	private String ismartPwd;
	/*사이트명*/
	private String siteNm;
	/*연동상태코드*/
	private String connStsCd;
	/*연동상태*/
	private String connSts;
	/*사업유형코드*/
	private String bizTypeCd;
	/*사업유형*/
	private String bizType;
	/*연동유형코드*/
	private String connTypeCd;
	/*연동유형*/
	private String connType;	
	/*위도*/
	private double lat;
	/*경도*/
	private double lng;
	/*우편번호*/
	private String zipCd;
	/*주소*/
	private String addr;
	/*주소부가*/
	private String addrAdt;	
	/*주소 시도*/
	private String addrSido;
	/*주소 시군구*/
	private String addrSigungu;
	/*주소 읍면*/
	private String addrEubmyun;
	/*주소 동*/
	private String addrDongri;
	/*지구명*/
	private String dstNm;
	/*지구코드*/
	private String dstCd;
	/*담당자 아이디*/
	private String cntPsnId;
	/*담당자*/
	private String cntPsnNm;
	/*담당자연락처*/
	private String cntPsnHpno; 
	/*전화번호*/
	private String tlNo;
	/*지역날씨코드*/
	private String wethRgnCd;
	/*일출지역명*/
	private String sunrisRgnNm;
	/*요금코드*/
	private String billCd;
	/*url*/
	private String url;
	/*삭제여부*/
	private String delYn;
	/*생성자*/
	private String cretr;
	/*수정자*/
	private String updtr;
	/*생성일시*/
	private String cretDt;
	/*수정일시*/
	private String updtDt;
	/*검교정만료일자*/
	private String inspExpDate;
	/*대기질관측소*/
	private String airQltyObsv;
	/*비고*/	
	private String rmrk;
	
	private byte[] img1;
	private byte[] img2;
	private byte[] img3;
	
	private String imgFileNm1;
	private String imgFileNm2;
	private String imgFileNm3;
	
	private String imgContentType1;
	private String imgContentType2;
	private String imgContentType3;
	
	/*인버터 발전량*/
	private double gentQnt;
	/*인버터 금일 누적 발전량*/
	private double tdayGentQnt;	
	/*인버터 총누적 발전량*/
	private double accumGentQnt;
	/*인버터 설치용량*/
	private double instlCpct;
	/*체크여부*/
	private boolean checked;
		
	/*당월 발전량*/
	private double monthGentQnt;
	/*당월 발전시간*/
	private double monthGentTime;
	/*전월대비 발전변동율*/
	private double monthChangeRate;
	/*예상수익*/
	private double totalGentProftAmt;
	
	/*전체 레코드 수*/
	private int totalCnt;
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
	public String getCustNm() {
		return custNm;
	}
	public void setCustNm(String custNm) {
		this.custNm = custNm;
	}
	public String getKepcoCustNo() {
		return kepcoCustNo;
	}
	public void setKepcoCustNo(String kepcoCustNo) {
		this.kepcoCustNo = kepcoCustNo;
	}
	public String getIsmartPwd() {
		return ismartPwd;
	}
	public void setIsmartPwd(String ismartPwd) {
		this.ismartPwd = ismartPwd;
	}
	public String getSiteNm() {
		return siteNm;
	}
	public void setSiteNm(String siteNm) {
		this.siteNm = siteNm;
	}
	public String getConnStsCd() {
		return connStsCd;
	}
	public void setConnStsCd(String connStsCd) {
		this.connStsCd = connStsCd;
	}
	public String getConnSts() {
		return connSts;
	}
	public void setConnSts(String connSts) {
		this.connSts = connSts;
	}
	public String getBizTypeCd() {
		return bizTypeCd;
	}
	public void setBizTypeCd(String bizTypeCd) {
		this.bizTypeCd = bizTypeCd;
	}
	public String getBizType() {
		return bizType;
	}
	public void setBizType(String bizType) {
		this.bizType = bizType;
	}
	public String getConnTypeCd() {
		return connTypeCd;
	}
	public void setConnTypeCd(String connTypeCd) {
		this.connTypeCd = connTypeCd;
	}
	public String getConnType() {
		return connType;
	}
	public void setConnType(String connType) {
		this.connType = connType;
	}
	public double getLat() {
		return lat;
	}
	public void setLat(double lat) {
		this.lat = lat;
	}
	public double getLng() {
		return lng;
	}
	public void setLng(double lng) {
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
	public String getCntPsnId() {
		return cntPsnId;
	}
	public void setCntPsnId(String cntPsnId) {
		this.cntPsnId = cntPsnId;
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
	public String getTlNo() {
		return tlNo;
	}
	public void setTlNo(String tlNo) {
		this.tlNo = tlNo;
	}
	public String getWethRgnCd() {
		return wethRgnCd;
	}
	public void setWethRgnCd(String wethRgnCd) {
		this.wethRgnCd = wethRgnCd;
	}
	public String getSunrisRgnNm() {
		return sunrisRgnNm;
	}
	public void setSunrisRgnNm(String sunrisRgnNm) {
		this.sunrisRgnNm = sunrisRgnNm;
	}
	public String getBillCd() {
		return billCd;
	}
	public void setBillCd(String billCd) {
		this.billCd = billCd;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getDelYn() {
		return delYn;
	}
	public void setDelYn(String delYn) {
		this.delYn = delYn;
	}
	public String getCretr() {
		return cretr;
	}
	public void setCretr(String cretr) {
		this.cretr = cretr;
	}
	public String getUpdtr() {
		return updtr;
	}
	public void setUpdtr(String updtr) {
		this.updtr = updtr;
	}
	public String getCretDt() {
		return cretDt;
	}
	public void setCretDt(String cretDt) {
		this.cretDt = cretDt;
	}
	public String getUpdtDt() {
		return updtDt;
	}
	public void setUpdtDt(String updtDt) {
		this.updtDt = updtDt;
	}
	public String getInspExpDate() {
		return inspExpDate;
	}
	public void setInspExpDate(String inspExpDate) {
		this.inspExpDate = inspExpDate;
	}
	public String getAirQltyObsv() {
		return airQltyObsv;
	}
	public void setAirQltyObsv(String airQltyObsv) {
		this.airQltyObsv = airQltyObsv;
	}
	public String getRmrk() {
		return rmrk;
	}
	public void setRmrk(String rmrk) {
		this.rmrk = rmrk;
	}
	public double getGentQnt() {
		return gentQnt;
	}
	public void setGentQnt(double gentQnt) {
		this.gentQnt = gentQnt;
	}
	public double getTdayGentQnt() {
		return tdayGentQnt;
	}
	public void setTdayGentQnt(double tdayGentQnt) {
		this.tdayGentQnt = tdayGentQnt;
	}
	public double getAccumGentQnt() {
		return accumGentQnt;
	}
	public void setAccumGentQnt(double accumGentQnt) {
		this.accumGentQnt = accumGentQnt;
	}
	public double getInstlCpct() {
		return instlCpct;
	}
	public void setInstlCpct(double instlCpct) {
		this.instlCpct = instlCpct;
	}
	public boolean isChecked() {
		return checked;
	}
	public void setChecked(boolean checked) {
		this.checked = checked;
	}
	public int getTotalCnt() {
		return totalCnt;
	}
	public void setTotalCnt(int totalCnt) {
		this.totalCnt = totalCnt;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public double getMonthGentQnt() {
		return monthGentQnt;
	}
	public void setMonthGentQnt(double monthGentQnt) {
		this.monthGentQnt = monthGentQnt;
	}
	public double getMonthGentTime() {
		return monthGentTime;
	}
	public void setMonthGentTime(double monthGentTime) {
		this.monthGentTime = monthGentTime;
	}
	public double getMonthChangeRate() {
		return monthChangeRate;
	}
	public void setMonthChangeRate(double monthChangeRate) {
		this.monthChangeRate = monthChangeRate;
	}
	public double getTotalGentProftAmt() {
		return totalGentProftAmt;
	}
	public void setTotalGentProftAmt(double totalGentProftAmt) {
		this.totalGentProftAmt = totalGentProftAmt;
	}
	public byte[] getImg1() {
		return img1;
	}
	public void setImg1(byte[] img1) {
		this.img1 = img1;
	}
	public byte[] getImg2() {
		return img2;
	}
	public void setImg2(byte[] img2) {
		this.img2 = img2;
	}
	public byte[] getImg3() {
		return img3;
	}
	public void setImg3(byte[] img3) {
		this.img3 = img3;
	}
	public String getImgFileNm1() {
		return imgFileNm1;
	}
	public void setImgFileNm1(String imgFileNm1) {
		this.imgFileNm1 = imgFileNm1;
	}
	public String getImgFileNm2() {
		return imgFileNm2;
	}
	public void setImgFileNm2(String imgFileNm2) {
		this.imgFileNm2 = imgFileNm2;
	}
	public String getImgFileNm3() {
		return imgFileNm3;
	}
	public void setImgFileNm3(String imgFileNm3) {
		this.imgFileNm3 = imgFileNm3;
	}
	public String getImgContentType1() {
		return imgContentType1;
	}
	public void setImgContentType1(String imgContentType1) {
		this.imgContentType1 = imgContentType1;
	}
	public String getImgContentType2() {
		return imgContentType2;
	}
	public void setImgContentType2(String imgContentType2) {
		this.imgContentType2 = imgContentType2;
	}
	public String getImgContentType3() {
		return imgContentType3;
	}
	public void setImgContentType3(String imgContentType3) {
		this.imgContentType3 = imgContentType3;
	}
}
