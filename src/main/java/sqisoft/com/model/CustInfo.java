package sqisoft.com.model;

/**
 * @Class Name : CustInfo.java
 * @Description : 고객사 정보 클래스
 * @Modification Information
 *
 * @author ywan
 * @since 2021. 03.19
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
public class CustInfo {
	/*사이트고유번호*/
	private Long custSeq;	
	private String custNm;
	private String bizNo;
	private String custTypeCd;
	private String tlNo;
	private String fxNo;
	private String cntPsnNm;
	private String custPsnHpNo;
	private String cntPsnEml;
	private String delYn;
	private String cretr;
	private String updtr;
	private String updtDt;
	
	public Long getCustSeq() {
		return custSeq;
	}
	public void setCustSeq(Long custSeq) {
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
	public String getTlNo() {
		return tlNo;
	}
	public void setTlNo(String tlNo) {
		this.tlNo = tlNo;
	}
	public String getFxNo() {
		return fxNo;
	}
	public void setFxNo(String fxNo) {
		this.fxNo = fxNo;
	}
	public String getCntPsnNm() {
		return cntPsnNm;
	}
	public void setCntPsnNm(String cntPsnNm) {
		this.cntPsnNm = cntPsnNm;
	}
	public String getCustPsnHpNo() {
		return custPsnHpNo;
	}
	public void setCustPsnHpNo(String custPsnHpNo) {
		this.custPsnHpNo = custPsnHpNo;
	}
	public String getCntPsnEml() {
		return cntPsnEml;
	}
	public void setCntPsnEml(String cntPsnEml) {
		this.cntPsnEml = cntPsnEml;
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
	public String getUpdtDt() {
		return updtDt;
	}
	public void setUpdtDt(String updtDt) {
		this.updtDt = updtDt;
	}
}
