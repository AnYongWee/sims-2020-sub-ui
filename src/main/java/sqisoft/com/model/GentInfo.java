package sqisoft.com.model;

/**
 * @Class Name : GentInfo.java
 * @Description : 발전 정보
 * @Modification Information
 *
 * @author ywan
 * @since 2021. 03.23
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
public class GentInfo {

	/*설비용량*/
	private double totalCpct;
	/*금일발전량*/
	private double dayGentQnt;
	/*전일발전량*/
	private double afDayGentQnt;
	/*누적발전량*/
	private double accumGentQnt;
	/*금일 발전량*/
	private double nowGentQnt;
	/*당월 발전량*/
	private double monthGentQnt;		
	/*당월 발전시간*/
	private double monthGentTime;
	/*전월대비 발전변동율*/
	private double monthChangeRate;
	/*예상수익*/
	private double totalGentProftAmt;
	public double getTotalCpct() {
		return totalCpct;
	}
	public void setTotalCpct(double totalCpct) {
		this.totalCpct = totalCpct;
	}
	public double getDayGentQnt() {
		return dayGentQnt;
	}
	public void setDayGentQnt(double dayGentQnt) {
		this.dayGentQnt = dayGentQnt;
	}
	public double getAfDayGentQnt() {
		return afDayGentQnt;
	}
	public void setAfDayGentQnt(double afDayGentQnt) {
		this.afDayGentQnt = afDayGentQnt;
	}
	public double getAccumGentQnt() {
		return accumGentQnt;
	}
	public void setAccumGentQnt(double accumGentQnt) {
		this.accumGentQnt = accumGentQnt;
	}
	public double getNowGentQnt() {
		return nowGentQnt;
	}
	public void setNowGentQnt(double nowGentQnt) {
		this.nowGentQnt = nowGentQnt;
	}
	public double getMonthGentQnt() {
		return monthGentQnt;
	}
	public void setMonthGentQnt(double monthGentQnt) {
		this.monthGentQnt = monthGentQnt;
	}
	public double getMonthGentTime() {
		return monthGentTime;
	}
	public void setMonthGentTime(double monthGentTime) {
		this.monthGentTime = monthGentTime;
	}
	public double getMonthChangeRate() {
		return monthChangeRate;
	}
	public void setMonthChangeRate(double monthChangeRate) {
		this.monthChangeRate = monthChangeRate;
	}
	public double getTotalGentProftAmt() {
		return totalGentProftAmt;
	}
	public void setTotalGentProftAmt(double totalGentProftAmt) {
		this.totalGentProftAmt = totalGentProftAmt;
	}
}
