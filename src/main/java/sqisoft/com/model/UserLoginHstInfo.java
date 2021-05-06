package sqisoft.com.model;

/**
 * @Class Name : UserLoginHstInfo.java
 * @Description : 사용자 로그인 히스토리 정보
 * @Modification Information
 *
 * @author ywan
 * @since 2021. 03.23
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
public class UserLoginHstInfo {
	/*사용자 아이디*/
	private String usrId;
	/*로그인일시*/
	private String lginDt;
	/*로그아웃일시*/
	private String lgotDt;
	/*접속IP*/
	private String connIp;
	/*세션 아이디*/
	private String sessnId;
	/*인증토큰*/
	private String authTokn;
	/*OTP 인증번호*/
	private String otpAthnNo;
	/*수정자*/
	private String updtr;
	/*수정일시*/
	private String updtDt;
	
	public String getUsrId() {
		return usrId;
	}
	public void setUsrId(String usrId) {
		this.usrId = usrId;
	}
	public String getLginDt() {
		return lginDt;
	}
	public void setLginDt(String lginDt) {
		this.lginDt = lginDt;
	}
	public String getLgotDt() {
		return lgotDt;
	}
	public void setLgotDt(String lgotDt) {
		this.lgotDt = lgotDt;
	}
	public String getConnIp() {
		return connIp;
	}
	public void setConnIp(String connIp) {
		this.connIp = connIp;
	}
	public String getSessnId() {
		return sessnId;
	}
	public void setSessnId(String sessnId) {
		this.sessnId = sessnId;
	}
	public String getAuthTokn() {
		return authTokn;
	}
	public void setAuthTokn(String authTokn) {
		this.authTokn = authTokn;
	}
	public String getOtpAthnNo() {
		return otpAthnNo;
	}
	public void setOtpAthnNo(String otpAthnNo) {
		this.otpAthnNo = otpAthnNo;
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
