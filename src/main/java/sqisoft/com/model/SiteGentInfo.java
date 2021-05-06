package sqisoft.com.model;
/**
 * @Class Name : GentInfo.java
 * @Description : 사이트 발전량 정보
 * @Modification Information
 *
 * @author ywan
 * @since 2021. 03.23
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
public class SiteGentInfo {
	/*사이트고유번호*/
	private int siteSeq;
	/*사이트명*/
	private String siteNm;
	/*금일 발전량*/
	private double tdayGentQnt;	
	/*당월 발전량*/
	private double monthGentQnt;		
	/*누적 발전량*/
	private double accumGentQnt;
	/*누적절감금액*/
	private double rducAmt;
	/*DC 전력*/
	private double dcPowr;
	/*DC 전압*/
	private double dcVolt;
	/*DC 전류*/
	private double dcCurr;
	/*AC 전력*/
	private double acPowr;
	/*AC 전압*/
	private double acVolt;
	/*AC 전류*/
	private double acCurr;
	/*외기온도*/
	private double outdrTempr;
	/*모듈온도*/
	private double modlTempr;
	/*경사일사량*/
	private double inclIrradQnt;
	/*수평일사량*/
	private double horzIrradQnt;
	/*수직일사량*/
	private double vertIrradQnt;
	/*설치용량*/
	private double instlCpct;
	
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
	public double getTdayGentQnt() {
		return tdayGentQnt;
	}
	public void setTdayGentQnt(double tdayGentQnt) {
		this.tdayGentQnt = tdayGentQnt;
	}
	public double getMonthGentQnt() {
		return monthGentQnt;
	}
	public void setMonthGentQnt(double monthGentQnt) {
		this.monthGentQnt = monthGentQnt;
	}
	public double getAccumGentQnt() {
		return accumGentQnt;
	}
	public void setAccumGentQnt(double accumGentQnt) {
		this.accumGentQnt = accumGentQnt;
	}
	public double getRducAmt() {
		return rducAmt;
	}
	public void setRducAmt(double rducAmt) {
		this.rducAmt = rducAmt;
	}
	public double getDcPowr() {
		return dcPowr;
	}
	public void setDcPowr(double dcPowr) {
		this.dcPowr = dcPowr;
	}
	public double getDcVolt() {
		return dcVolt;
	}
	public void setDcVolt(double dcVolt) {
		this.dcVolt = dcVolt;
	}
	public double getDcCurr() {
		return dcCurr;
	}
	public void setDcCurr(double dcCurr) {
		this.dcCurr = dcCurr;
	}
	public double getAcPowr() {
		return acPowr;
	}
	public void setAcPowr(double acPowr) {
		this.acPowr = acPowr;
	}
	public double getAcVolt() {
		return acVolt;
	}
	public void setAcVolt(double acVolt) {
		this.acVolt = acVolt;
	}
	public double getAcCurr() {
		return acCurr;
	}
	public void setAcCurr(double acCurr) {
		this.acCurr = acCurr;
	}
	public double getOutdrTempr() {
		return outdrTempr;
	}
	public void setOutdrTempr(double outdrTempr) {
		this.outdrTempr = outdrTempr;
	}
	public double getModlTempr() {
		return modlTempr;
	}
	public void setModlTempr(double modlTempr) {
		this.modlTempr = modlTempr;
	}
	public double getInclIrradQnt() {
		return inclIrradQnt;
	}
	public void setInclIrradQnt(double inclIrradQnt) {
		this.inclIrradQnt = inclIrradQnt;
	}
	public double getHorzIrradQnt() {
		return horzIrradQnt;
	}
	public void setHorzIrradQnt(double horzIrradQnt) {
		this.horzIrradQnt = horzIrradQnt;
	}
	public double getVertIrradQnt() {
		return vertIrradQnt;
	}
	public void setVertIrradQnt(double vertIrradQnt) {
		this.vertIrradQnt = vertIrradQnt;
	}
	public double getInstlCpct() {
		return instlCpct;
	}
	public void setInstlCpct(double instlCpct) {
		this.instlCpct = instlCpct;
	}
	
}
