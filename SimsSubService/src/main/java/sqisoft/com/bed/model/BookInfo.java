package sqisoft.com.bed.model;

/**
 * @Class Name : BookInfo.java
 * @Description : 현장도서 정보 클래스
 * @Modification Information
 *
 * @author ywan
 * @since 2010. 11.04
 * @version 1.0
 * @see 
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
public class BookInfo {
	/*건축물ID*/
	private String bldId;
	/*현장도서 구분코드*/
	private String divCd;
	/*현장도서 구분명*/
	private String divNm;
	/*현장도서 구분 설명*/
	private String divExpl;
	/*건축물ID*/
	private String bookOwnYn;
	/*확인정보*/
	private String confirmInfo;
	/*참고자료*/
	private String referData;
	/*작성자ID*/
	private String writManId;
	/*작성일*/
	private String writDtm;
	/*수정자ID*/
	private String modfManId;
	/*수정일*/
	private String modfDtm;
	public String getBldId() {
		return bldId;
	}
	public void setBldId(String bldId) {
		this.bldId = bldId;
	}
	public String getDivCd() {
		return divCd;
	}
	public void setDivCd(String divCd) {
		this.divCd = divCd;
	}
	public String getDivNm() {
		return divNm;
	}
	public void setDivNm(String divNm) {
		this.divNm = divNm;
	}
	public String getDivExpl() {
		return divExpl;
	}
	public void setDivExpl(String divExpl) {
		this.divExpl = divExpl;
	}
	public String getBookOwnYn() {
		return bookOwnYn;
	}
	public void setBookOwnYn(String bookOwnYn) {
		this.bookOwnYn = bookOwnYn;
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
	public String getModfManId() {
		return modfManId;
	}
	public void setModfManId(String modfManId) {
		this.modfManId = modfManId;
	}
	public String getModfDtm() {
		return modfDtm;
	}
	public void setModfDtm(String modfDtm) {
		this.modfDtm = modfDtm;
	}
	public String getConfirmInfo() {
		return confirmInfo;
	}
	public void setConfirmInfo(String confirmInfo) {
		this.confirmInfo = confirmInfo;
	}
	public String getReferData() {
		return referData;
	}
	public void setReferData(String referData) {
		this.referData = referData;
	}
	
}
