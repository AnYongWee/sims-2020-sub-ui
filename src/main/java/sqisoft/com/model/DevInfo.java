package sqisoft.com.model;

/**
 * @Class Name : DevInfo.java
 * @Description : 장비 정보 클래스
 * @Modification Information
 *
 * @author ywan
 * @since 2021. 03.19
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
public class DevInfo {
	/*장비일련번호*/
	private int devSeq;
	/*서비스코드*/
	private String svcCd;
	/*사이트일련번호*/
	private int siteSeq;
	/*설치면적*/
	private int instlArea;
	/*설치개수*/
	private int instlCnt;
	/*설치일자*/
	private String instlTod;
	/*설치장소*/
	private String instlPlac;
	/*모델고유번호*/
	private int modelSeq;
	/*상위장비일련번호*/
	private int upDevSeq;
	/*장비명*/
	private String devNm;
	/*사이트명*/
	private String siteNm;
	
	public int getDevSeq() {
		return devSeq;
	}
	public void setDevSeq(int devSeq) {
		this.devSeq = devSeq;
	}
	public String getSvcCd() {
		return svcCd;
	}
	public void setSvcCd(String svcCd) {
		this.svcCd = svcCd;
	}
	public int getSiteSeq() {
		return siteSeq;
	}
	public void setSiteSeq(int siteSeq) {
		this.siteSeq = siteSeq;
	}
	public int getInstlArea() {
		return instlArea;
	}
	public void setInstlArea(int instlArea) {
		this.instlArea = instlArea;
	}
	public int getInstlCnt() {
		return instlCnt;
	}
	public void setInstlCnt(int instlCnt) {
		this.instlCnt = instlCnt;
	}
	public String getInstlTod() {
		return instlTod;
	}
	public void setInstlTod(String instlTod) {
		this.instlTod = instlTod;
	}
	public String getInstlPlac() {
		return instlPlac;
	}
	public void setInstlPlac(String instlPlac) {
		this.instlPlac = instlPlac;
	}
	public int getModelSeq() {
		return modelSeq;
	}
	public void setModelSeq(int modelSeq) {
		this.modelSeq = modelSeq;
	}
	public int getUpDevSeq() {
		return upDevSeq;
	}
	public void setUpDevSeq(int upDevSeq) {
		this.upDevSeq = upDevSeq;
	}
	public String getDevNm() {
		return devNm;
	}
	public void setDevNm(String devNm) {
		this.devNm = devNm;
	}
	public String getSiteNm() {
		return siteNm;
	}
	public void setSiteNm(String siteNm) {
		this.siteNm = siteNm;
	}
	
}
