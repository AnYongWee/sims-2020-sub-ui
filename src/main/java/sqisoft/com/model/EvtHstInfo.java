package sqisoft.com.model;

/**
 * @Class Name : EvtHstInfo.java
 * @Description : 경보이력 정보 클래스
 * @Modification Information
 *
 * @author ywan
 * @since 2021. 03.19
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
public class EvtHstInfo {
	/*이벤트고유번호*/
	private String evtSeq;
	/*발생시간*/
	private String occuTod;
	/*사이트명*/
	private String siteNm;
	/*장비명*/
	private String devNm;
	/*이벤트코드*/
	private String evtCd;
	/*이벤트명*/
	private String evtNm;
	/*이벤트내용*/
	private String evtDesc;
	/*이벤트상태코드*/
	private String evtStsCd;
	/*이벤트상태*/
	private String evtStsVal;
	/*이벤트등급코드*/
	private String evtGdCd;
	/*이벤트등급*/
	private String evtGdVal;
	/*처리여부*/
	private String clrYn;
	/*처리시간*/
	private String crlTod;
	/*전체 레코드 수*/
	private int totalCnt;
	public String getEvtSeq() {
		return evtSeq;
	}
	public void setEvtSeq(String evtSeq) {
		this.evtSeq = evtSeq;
	}
	public String getOccuTod() {
		return occuTod;
	}
	public void setOccuTod(String occuTod) {
		this.occuTod = occuTod;
	}
	public String getSiteNm() {
		return siteNm;
	}
	public void setSiteNm(String siteNm) {
		this.siteNm = siteNm;
	}
	public String getDevNm() {
		return devNm;
	}
	public void setDevNm(String devNm) {
		this.devNm = devNm;
	}
	public String getEvtCd() {
		return evtCd;
	}
	public void setEvtCd(String evtCd) {
		this.evtCd = evtCd;
	}
	public String getEvtNm() {
		return evtNm;
	}
	public void setEvtNm(String evtNm) {
		this.evtNm = evtNm;
	}
	public String getEvtDesc() {
		return evtDesc;
	}
	public void setEvtDesc(String evtDesc) {
		this.evtDesc = evtDesc;
	}
	public String getEvtStsCd() {
		return evtStsCd;
	}
	public void setEvtStsCd(String evtStsCd) {
		this.evtStsCd = evtStsCd;
	}
	public String getEvtStsVal() {
		return evtStsVal;
	}
	public void setEvtStsVal(String evtStsVal) {
		this.evtStsVal = evtStsVal;
	}
	public String getEvtGdCd() {
		return evtGdCd;
	}
	public void setEvtGdCd(String evtGdCd) {
		this.evtGdCd = evtGdCd;
	}
	public String getEvtGdVal() {
		return evtGdVal;
	}
	public void setEvtGdVal(String evtGdVal) {
		this.evtGdVal = evtGdVal;
	}
	public String getClrYn() {
		return clrYn;
	}
	public void setClrYn(String clrYn) {
		this.clrYn = clrYn;
	}
	public String getCrlTod() {
		return crlTod;
	}
	public void setCrlTod(String crlTod) {
		this.crlTod = crlTod;
	}
	public int getTotalCnt() {
		return totalCnt;
	}
	public void setTotalCnt(int totalCnt) {
		this.totalCnt = totalCnt;
	}
}
