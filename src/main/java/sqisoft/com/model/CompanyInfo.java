package sqisoft.com.model;

/**
 * @Class Name : CompanyInfo.java
 * @Description : 고객사 정보
 * @Modification Information
 *
 * @author ywan
 * @since 2021. 03.19
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
public class CompanyInfo {
	/*고객사 고유번호*/
	private int custSeq;
	/*고객사명*/
	private String custNm;
	/*사업자번호*/
	private String bizNo;
	/*고객유형코드*/
	private String custTypeCd;
	/*고객유형*/
	private String custType;
	/*전화번호*/
	private String telNo;
	/*팩스번호*/
	private String faxNo;
	/*담당자명*/
	private String cntPsnNm;
	/*담당자직급*/
	private String cntPsnPos;
	/*담당자연락처*/
	private String cntPsnHpno;
	/*담당자이메일*/
	private String cntPsnEml;
	
	/*설비용량*/
	private double totalCpct;	
	/*당월 발전량*/
	private double monthGentQnt;
	/*당월 발전시간*/
	private double monthGentTime;
	/*전월대비 발전변동율*/
	private double monthChangeRate;
	/*예상수익*/
	private double totalGentProftAmt;
	
	/*생성자*/
	private String cretr;
	/*생성일시*/
	private String cretDt;
	/*수정자*/
	private String updtr;
	/*수정일시*/
	private String updtDt;
	/*전체 레코드 수*/
	private int totalCnt;
	
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
	public String getBizNo() {
		return bizNo;
	}
	public void setBizNo(String bizNo) {
		this.bizNo = bizNo;
	}
	public String getCustTypeCd() {
		return custTypeCd;
	}
	public void setCustTypeCd(String custTypeCd) {
		this.custTypeCd = custTypeCd;
	}
	public String getCustType() {
		return custType;
	}
	public void setCustType(String custType) {
		this.custType = custType;
	}
	public String getTelNo() {
		return telNo;
	}
	public void setTelNo(String telNo) {
		this.telNo = telNo;
	}
	public String getFaxNo() {
		return faxNo;
	}
	public void setFaxNo(String faxNo) {
		this.faxNo = faxNo;
	}
	public String getCntPsnNm() {
		return cntPsnNm;
	}
	public void setCntPsnNm(String cntPsnNm) {
		this.cntPsnNm = cntPsnNm;
	}
	public String getCntPsnPos() {
		return cntPsnPos;
	}
	public void setCntPsnPos(String cntPsnPos) {
		this.cntPsnPos = cntPsnPos;
	}
	public String getCntPsnHpno() {
		return cntPsnHpno;
	}
	public void setCntPsnHpno(String cntPsnHpno) {
		this.cntPsnHpno = cntPsnHpno;
	}
	public String getCntPsnEml() {
		return cntPsnEml;
	}
	public void setCntPsnEml(String cntPsnEml) {
		this.cntPsnEml = cntPsnEml;
	}
	public String getCretr() {
		return cretr;
	}
	public void setCretr(String cretr) {
		this.cretr = cretr;
	}
	public String getCretDt() {
		return cretDt;
	}
	public void setCretDt(String cretDt) {
		this.cretDt = cretDt;
	}
	public String getUpdtr() {
		return updtr;
	}
	public void setUpdtr(String updtr) {
		this.updtr = updtr;
	}
	public String getUpdtDt() {
		return updtDt;
	}
	public void setUpdtDt(String updtDt) {
		this.updtDt = updtDt;
	}
	public int getTotalCnt() {
		return totalCnt;
	}
	public void setTotalCnt(int totalCnt) {
		this.totalCnt = totalCnt;
	}
	public double getTotalCpct() {
		return totalCpct;
	}
	public void setTotalCpct(double totalCpct) {
		this.totalCpct = totalCpct;
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
	
	
}
