package sqisoft.com.model;

import java.io.Serializable;

public class UsrInfo implements Serializable{
	
	private static final long serialVersionUID = -4220900990213896933L;
	
	/*사용자 아이디*/
	private String usrId;
	/*고객사 고유번호*/
	private int custSeq;
	/*사용자명*/
	private String usrNm;
	/*사용자구분코드*/
	private String usrDivCd;
	/*그룹고유번호*/
	private int grpSeq;
	/*패스워드*/
	private String pwd;
	/*인증토큰*/
	private String authToken;
	/*휴대폰번호*/
	private String hpNo;
	/*이메일*/
	private String email;
	/*카카오아이디*/
	private String kakaoId;
	/*SMS여부*/
	private String smsYn;
	/*카카오여부*/
	private String kakaoYn;
	/*사용자상태코드*/
	private String usrStscD;
	/*비고*/
	private String rmrk;
	/*삭제여부*/
	private String delYn;
	/*생성자*/
	private String cretr;
	/*생성일시*/
	private String cretDt;
	/*수정자*/
	private String updtr;
	/*수정일시*/
	private String updtDt;
	/*카카오 인증번호*/
	private String kakaoAuthNo;
	
	public String getUsrId() {
		return usrId;
	}
	public void setUsrId(String usrId) {
		this.usrId = usrId;
	}
	public int getCustSeq() {
		return custSeq;
	}
	public void setCustSeq(int custSeq) {
		this.custSeq = custSeq;
	}
	public String getUsrNm() {
		return usrNm;
	}
	public void setUsrNm(String usrNm) {
		this.usrNm = usrNm;
	}
	public String getUsrDivCd() {
		return usrDivCd;
	}
	public void setUsrDivCd(String usrDivCd) {
		this.usrDivCd = usrDivCd;
	}
	public int getGrpSeq() {
		return grpSeq;
	}
	public void setGrpSeq(int grpSeq) {
		this.grpSeq = grpSeq;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getAuthToken() {
		return authToken;
	}
	public void setAuthToken(String authToken) {
		this.authToken = authToken;
	}
	public String getHpNo() {
		return hpNo;
	}
	public void setHpNo(String hpNo) {
		this.hpNo = hpNo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getKakaoId() {
		return kakaoId;
	}
	public void setKakaoId(String kakaoId) {
		this.kakaoId = kakaoId;
	}
	public String getSmsYn() {
		return smsYn;
	}
	public void setSmsYn(String smsYn) {
		this.smsYn = smsYn;
	}
	public String getKakaoYn() {
		return kakaoYn;
	}
	public void setKakaoYn(String kakaoYn) {
		this.kakaoYn = kakaoYn;
	}
	public String getUsrStscD() {
		return usrStscD;
	}
	public void setUsrStscD(String usrStscD) {
		this.usrStscD = usrStscD;
	}
	public String getRmrk() {
		return rmrk;
	}
	public void setRmrk(String rmrk) {
		this.rmrk = rmrk;
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
	public String getKakaoAuthNo() {
		return kakaoAuthNo;
	}
	public void setKakaoAuthNo(String kakaoAuthNo) {
		this.kakaoAuthNo = kakaoAuthNo;
	}
}
