package sqisoft.com.model;

/**
 * @Class Name : InvrtrInfo.java
 * @Description : 인버터 정보
 * @Modification Information
 *
 * @author ywan
 * @since 2021. 03.23
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
public class InvrtrInfo {
	/*인버터 고유번호*/
	private int devSeq;
	/*사이트 고유번호*/
	private int siteSeq;
	/*사이트 명*/
	private String siteNm;
	/*인버터 명*/
	private String devNm;
	/*설비용량*/
	private float instlCpct;
	/*전일발전량*/
	private float beforeGentQnt;
	/*발전일시*/
	private String msrTod;
	/*발전량*/
	private float gentQnt;
	/*금일누적발전량*/
	private float tdayGentQnt;
	/*누적발전량*/
	private double accumGentQnt;
	/*DC전력*/
	private float dcPowr;
	/*DC전압*/
	private float dcVolt;
	/*DC전류*/
	private float dcCurr;
	/*AC전력*/
	private float acPowr;
	/*AC전압*/
	private float acVlot;
	/*AC전류*/
	private float acCurr;
	
	public int getDevSeq() {
		return devSeq;
	}
	public void setDevSeq(int devSeq) {
		this.devSeq = devSeq;
	}
	public int getSiteSeq() {
		return siteSeq;
	}
	public void setSiteSeq(int siteSeq) {
		this.siteSeq = siteSeq;
	}
	public String getSiteNm() {
		return siteNm;
	}
	public void setSiteNm(String siteNm) {
		this.siteNm = siteNm;
	}
	public String getDevNm() {
		return devNm;
	}
	public void setDevNm(String devNm) {
		this.devNm = devNm;
	}
	public float getInstlCpct() {
		return instlCpct;
	}
	public void setInstlCpct(float instlCpct) {
		this.instlCpct = instlCpct;
	}
	public float getBeforeGentQnt() {
		return beforeGentQnt;
	}
	public void setBeforeGentQnt(float beforeGentQnt) {
		this.beforeGentQnt = beforeGentQnt;
	}
	public String getMsrTod() {
		return msrTod;
	}
	public void setMsrTod(String msrTod) {
		this.msrTod = msrTod;
	}
	public float getGentQnt() {
		return gentQnt;
	}
	public void setGentQnt(float gentQnt) {
		this.gentQnt = gentQnt;
	}
	public float getTdayGentQnt() {
		return tdayGentQnt;
	}
	public void setTdayGentQnt(float tdayGentQnt) {
		this.tdayGentQnt = tdayGentQnt;
	}
	public double getAccumGentQnt() {
		return accumGentQnt;
	}
	public void setAccumGentQnt(double accumGentQnt) {
		this.accumGentQnt = accumGentQnt;
	}
	public float getDcPowr() {
		return dcPowr;
	}
	public void setDcPowr(float dcPowr) {
		this.dcPowr = dcPowr;
	}
	public float getDcVolt() {
		return dcVolt;
	}
	public void setDcVolt(float dcVolt) {
		this.dcVolt = dcVolt;
	}
	public float getDcCurr() {
		return dcCurr;
	}
	public void setDcCurr(float dcCurr) {
		this.dcCurr = dcCurr;
	}
	public float getAcPowr() {
		return acPowr;
	}
	public void setAcPowr(float acPowr) {
		this.acPowr = acPowr;
	}
	public float getAcVlot() {
		return acVlot;
	}
	public void setAcVlot(float acVlot) {
		this.acVlot = acVlot;
	}
	public float getAcCurr() {
		return acCurr;
	}
	public void setAcCurr(float acCurr) {
		this.acCurr = acCurr;
	}	
}
