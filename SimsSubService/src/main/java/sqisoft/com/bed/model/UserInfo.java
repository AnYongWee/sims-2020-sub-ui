package sqisoft.com.bed.model;

/**
 * @Class Name : UserInfo.java
 * @Description : 사용자 정보 클래스
 * @Modification Information
 *
 * @author ywan
 * @since 2010. 11.04
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
public class UserInfo extends PageInfo{
	
	/** 고유아이디 */
	private String uniqueId;
	/** 아이디 */
	private String userId;
	/** 사용자명 */
	private String userNm;
	/** 패스워드 */
	private String userPwd;
	/** 패스워드 확인 */
	private String userPwdConfim;
	/** 휴대폰 연락처 */
	private String mbTleNo;
	/** 전화번호 */
	private String telNo;
	/** 팩스 */
	private String faxNum;
	/** 이메일 */
	private String emailAddr;
	/** 상태코드 */
	private String userStatCode;
	/** 생성일시 */
	private String sbscrbDt;
	/** 생성자 아이디 */
	private String enteId;
	
	public String getUniqueId() {
		return uniqueId;
	}
	public void setUniqueId(String uniqueId) {
		this.uniqueId = uniqueId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserNm() {
		return userNm;
	}
	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getMbTleNo() {
		return mbTleNo;
	}
	public void setMbTleNo(String mbTleNo) {
		this.mbTleNo = mbTleNo;
	}
	public String getTelNo() {
		return telNo;
	}
	public void setTelNo(String telNo) {
		this.telNo = telNo;
	}
	public String getFaxNum() {
		return faxNum;
	}
	public void setFaxNum(String faxNum) {
		this.faxNum = faxNum;
	}
	public String getEmailAddr() {
		return emailAddr;
	}
	public void setEmailAddr(String emailAddr) {
		this.emailAddr = emailAddr;
	}
	public String getUserStatCode() {
		return userStatCode;
	}
	public void setUserStatCode(String userStatCode) {
		this.userStatCode = userStatCode;
	}
	public String getSbscrbDt() {
		return sbscrbDt;
	}
	public void setSbscrbDt(String sbscrbDt) {
		this.sbscrbDt = sbscrbDt;
	}
	public String getUserPwdConfim() {
		return userPwdConfim;
	}
	public void setUserPwdConfim(String userPwdConfim) {
		this.userPwdConfim = userPwdConfim;
	}
	public String getEnteId() {
		return enteId;
	}
	public void setEnteId(String enteId) {
		this.enteId = enteId;
	}	
	
}
