package sqisoft.com.model;

/**
 * @Class Name : CodeInfo.java
 * @Description : 코드 정보 클래스
 * @Modification Information
 *
 * @author ywan
 * @since 2021. 03.19
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
public class CodeInfo {
	/*코드*/
	private String dtlCd;
	/*코드값*/
	private String dtlCdNm;
	/*코드값 설명*/
	private String dtlCdDesc;
	
	public String getDtlCd() {
		return dtlCd;
	}
	public void setDtlCd(String dtlCd) {
		this.dtlCd = dtlCd;
	}
	public String getDtlCdNm() {
		return dtlCdNm;
	}
	public void setDtlCdNm(String dtlCdNm) {
		this.dtlCdNm = dtlCdNm;
	}
	public String getDtlCdDesc() {
		return dtlCdDesc;
	}
	public void setDtlCdDesc(String dtlCdDesc) {
		this.dtlCdDesc = dtlCdDesc;
	}
}
