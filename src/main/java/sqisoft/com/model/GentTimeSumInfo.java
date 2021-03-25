package sqisoft.com.model;

/**
 * @Class Name : GentTimeSumInfo.java
 * @Description : 시간별 발전량 집계 정보
 * @Modification Information
 *
 * @author ywan
 * @since 2021. 03.23
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
public class GentTimeSumInfo {
	/*대상일자*/
	private String tgtDate;
	/*대상시간*/
	private String tgtTime;
	/*발전량*/
	private float gentQnt;
	/*최소 발전량*/
	private float minGentQnt;
	/*최대 발전량*/
	private float maxGentQnt;
	/*누적발전량*/
	private float accumGentQnt;
	/*표준발전량*/
	private float stdGentQnt;
	/*발전효율*/
	private float gentEffi;
	/*누적발전효율*/
	private float accumGentEffi;
	/*인버터효율*/
	private float invrtrEffi;
	/*시스템효율*/
	private float sysEffi;
	/*총발전수익금*/
	private int totGentProftAmt;
	/*절감단가*/
	private int rducUcost;
	/*총절감액*/
	private int rducAmt;
	public String getTgtDate() {
		return tgtDate;
	}
	public void setTgtDate(String tgtDate) {
		this.tgtDate = tgtDate;
	}
	public String getTgtTime() {
		return tgtTime;
	}
	public void setTgtTime(String tgtTime) {
		this.tgtTime = tgtTime;
	}
	public float getGentQnt() {
		return gentQnt;
	}
	public void setGentQnt(float gentQnt) {
		this.gentQnt = gentQnt;
	}
	public float getMinGentQnt() {
		return minGentQnt;
	}
	public void setMinGentQnt(float minGentQnt) {
		this.minGentQnt = minGentQnt;
	}
	public float getMaxGentQnt() {
		return maxGentQnt;
	}
	public void setMaxGentQnt(float maxGentQnt) {
		this.maxGentQnt = maxGentQnt;
	}
	public float getAccumGentQnt() {
		return accumGentQnt;
	}
	public void setAccumGentQnt(float accumGentQnt) {
		this.accumGentQnt = accumGentQnt;
	}
	public float getStdGentQnt() {
		return stdGentQnt;
	}
	public void setStdGentQnt(float stdGentQnt) {
		this.stdGentQnt = stdGentQnt;
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
}
