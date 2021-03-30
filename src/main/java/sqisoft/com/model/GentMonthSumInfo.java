package sqisoft.com.model;

/**
 * @Class Name : GentDaySumInfo.java
 * @Description : 월별 발전량 집계 정보
 * @Modification Information
 *
 * @author ywan
 * @since 2021. 03.23
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
public class GentMonthSumInfo {
	/*일자*/
	private String tgtYm;
	/*발전량*/
	private float monGentQnt;
	/*최소발전량*/
	private float minMonGentQnt;
	/*최대발전량*/
	private float maxMonGentQnt;
	/*발전시간*/
	private float monGentTime;
	/*누적발전량*/
	private float accumGentQnt;
	/*표준발전량*/
	private float stdGentCnt;
	/*발전효율*/
	private float gentEffi;
	/*누적발전효율*/
	private float accumGentEffi;
	/*인버터발전효율*/
	private float invrtrEffi;
	/*시스템효율*/
	private float sysEffi;
	/*총발전수익금액*/
	private int totGentProftAmt;
	/*절감단가*/
	private int rducUcost;
	/*총절감액*/
	private int rducAmt;
	/*설비용량*/
	private float instlCpct;
	
	public String getTgtYm() {
		return tgtYm;
	}
	public void setTgtYm(String tgtYm) {
		this.tgtYm = tgtYm;
	}
	public float getMonGentQnt() {
		return monGentQnt;
	}
	public void setMonGentQnt(float monGentQnt) {
		this.monGentQnt = monGentQnt;
	}
	public float getMinMonGentQnt() {
		return minMonGentQnt;
	}
	public void setMinMonGentQnt(float minMonGentQnt) {
		this.minMonGentQnt = minMonGentQnt;
	}
	public float getMaxMonGentQnt() {
		return maxMonGentQnt;
	}
	public void setMaxMonGentQnt(float maxMonGentQnt) {
		this.maxMonGentQnt = maxMonGentQnt;
	}	
	public float getMonGentTime() {
		return monGentTime;
	}
	public void setMonGentTime(float monGentTime) {
		this.monGentTime = monGentTime;
	}
	public float getAccumGentQnt() {
		return accumGentQnt;
	}
	public void setAccumGentQnt(float accumGentQnt) {
		this.accumGentQnt = accumGentQnt;
	}
	public float getStdGentCnt() {
		return stdGentCnt;
	}
	public void setStdGentCnt(float stdGentCnt) {
		this.stdGentCnt = stdGentCnt;
	}
	public float getGentEffi() {
		return gentEffi;
	}
	public void setGentEffi(float gentEffi) {
		this.gentEffi = gentEffi;
	}
	public float getAccumGentEffi() {
		return accumGentEffi;
	}
	public void setAccumGentEffi(float accumGentEffi) {
		this.accumGentEffi = accumGentEffi;
	}
	public float getInvrtrEffi() {
		return invrtrEffi;
	}
	public void setInvrtrEffi(float invrtrEffi) {
		this.invrtrEffi = invrtrEffi;
	}
	public float getSysEffi() {
		return sysEffi;
	}
	public void setSysEffi(float sysEffi) {
		this.sysEffi = sysEffi;
	}
	public int getTotGentProftAmt() {
		return totGentProftAmt;
	}
	public void setTotGentProftAmt(int totGentProftAmt) {
		this.totGentProftAmt = totGentProftAmt;
	}
	public int getRducUcost() {
		return rducUcost;
	}
	public void setRducUcost(int rducUcost) {
		this.rducUcost = rducUcost;
	}
	public int getRducAmt() {
		return rducAmt;
	}
	public void setRducAmt(int rducAmt) {
		this.rducAmt = rducAmt;
	}
	public float getInstlCpct() {
		return instlCpct;
	}
	public void setInstlCpct(float instlCpct) {
		this.instlCpct = instlCpct;
	}
	
}
