package sqisoft.com.bed.model;

/**
 * @Class Name : BldMainInfo.java
 * @Description : 건축물 정보 클래스, 메인화면 건축물 정보 view 를 위해 생성
 * @Modification Information
 *
 * @author ywan
 * @since 2010. 11.04
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
public class BldMainInfo {
	/*건축물 아이디*/
	private String bldId;
	/*건출물 명*/
	private String bldNm;
	/*법인명*/
	private String corpNm;
	/*건축주 성명*/
	private String own;
	/*건물용도코드*/
	private String bldPurpsCd;
	/*건물용도*/
	private String bldPurpsVal;
	/*시설관리방식 코드*/
	private String facMgmtCd;
	/*시설관리방식*/
	private String facMgmtVal;
	/*소유 코드*/
	private String ownCd;
	/*소유*/
	private String ownVal;
	/*생성자아이디*/
	private String writManId;
	/*생성일시*/
	private String writDtm;
	/*생성자명*/
	private String regUserNm;
	/*총 레코드 수*/
	private int totalCnt;
	/*레코드 번호*/
	private int rowNumber;
	
	public String getBldId() {
		return bldId;
	}
	public void setBldId(String bldId) {
		this.bldId = bldId;
	}
	public String getBldNm() {
		return bldNm;
	}
	public void setBldNm(String bldNm) {
		this.bldNm = bldNm;
	}
	public String getCorpNm() {
		return corpNm;
	}
	public void setCorpNm(String corpNm) {
		this.corpNm = corpNm;
	}
	public String getOwn() {
		return own;
	}
	public void setOwn(String own) {
		this.own = own;
	}
	public String getBldPurpsCd() {
		return bldPurpsCd;
	}
	public void setBldPurpsCd(String bldPurpsCd) {
		this.bldPurpsCd = bldPurpsCd;
	}
	public String getBldPurpsVal() {
		return bldPurpsVal;
	}
	public void setBldPurpsVal(String bldPurpsVal) {
		this.bldPurpsVal = bldPurpsVal;
	}
	public String getFacMgmtCd() {
		return facMgmtCd;
	}
	public void setFacMgmtCd(String facMgmtCd) {
		this.facMgmtCd = facMgmtCd;
	}
	public String getFacMgmtVal() {
		return facMgmtVal;
	}
	public void setFacMgmtVal(String facMgmtVal) {
		this.facMgmtVal = facMgmtVal;
	}
	public String getOwnCd() {
		return ownCd;
	}
	public void setOwnCd(String ownCd) {
		this.ownCd = ownCd;
	}
	public String getOwnVal() {
		return ownVal;
	}
	public void setOwnVal(String ownVal) {
		this.ownVal = ownVal;
	}
	public String getWritManId() {
		return writManId;
	}
	public void setWritManId(String writManId) {
		this.writManId = writManId;
	}
	public String getWritDtm() {
		return writDtm;
	}
	public void setWritDtm(String writDtm) {
		this.writDtm = writDtm;
	}
	public String getRegUserNm() {
		return regUserNm;
	}
	public void setRegUserNm(String regUserNm) {
		this.regUserNm = regUserNm;
	}
	public int getTotalCnt() {
		return totalCnt;
	}
	public void setTotalCnt(int totalCnt) {
		this.totalCnt = totalCnt;
	}
	public int getRowNumber() {
		return rowNumber;
	}
	public void setRowNumber(int rowNumber) {
		this.rowNumber = rowNumber;
	}
}
