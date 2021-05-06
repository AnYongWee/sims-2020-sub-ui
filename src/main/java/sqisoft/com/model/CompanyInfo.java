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
	
	private byte[] img1;
	private byte[] img2;
	private byte[] img3;
	
	private String imgFileNm1;
	private String imgFileNm2;
	private String imgFileNm3;
	
	private String imgContentType1;
	private String imgContentType2;
	private String imgContentType3;
	
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
}
