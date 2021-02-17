package sqisoft.com.bed.model;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import sqisoft.com.bed.comm.StringUtil;

/**
 * @Class Name : FacLightInfo.java
 * @Description : 조명설비 정보 클래스
 * @Modification Information
 *
 * @author ywan
 * @since 5010. 11.04
 * @version 1.0
 * @see 
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
public class FacLightInfo {
	/*건물아이디*/
	private String bldId;
	/*조명설비 구분코드*/
	private String lampCd;
	/*조명설비 구분명*/
	private String lampNm;
	/*번호*/
	private String no;
	/*종류*/
	private String lampKindCd;
	/*조명전력*/
	private String lampElcp;
	/*기기대수*/
	private String eqpCnt;
	/*조명비율*/
	private String lampRate;
	/*작성자ID*/
	private String writManId;
	/*작성일*/
	private String writDtm;
	/*수정자ID*/
	private String modfManId;
	/*수정일*/
	private String modfDtm;
	
	private int rowNumbe;
	
	public String getBldId() {
		return bldId;
	}
	public void setBldId(String bldId) {
		this.bldId = bldId;
	}	
	public String getLampNm() {
		return lampNm;
	}
	public void setLampNm(String lampNm) {
		this.lampNm = lampNm;
	}
	public String getLampCd() {
		return lampCd;
	}
	public void setLampCd(String lampCd) {
		this.lampCd = lampCd;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getLampKindCd() {
		return lampKindCd;
	}
	public void setLampKindCd(String lampKindCd) {
		this.lampKindCd = lampKindCd;
	}
	public String getLampElcp() {
		return lampElcp;
	}
	public void setLampElcp(String lampElcp) {
		this.lampElcp = lampElcp;
	}
	public String getEqpCnt() {
		return eqpCnt;
	}
	public void setEqpCnt(String eqpCnt) {
		this.eqpCnt = eqpCnt;
	}
	public String getLampRate() {
		return lampRate;
	}
	public void setLampRate(String lampRate) {
		this.lampRate = lampRate;
	}
	public String getWritManId() {
		return writManId;
	}
	public void setWritManId(String writManId) {
		this.writManId = writManId;
	}	
	public String getWritDtm() {
		return writDtm;
	}
	public void setWritDtm(String writDtm) {
		this.writDtm = writDtm;
	}
	public String getModfManId() {
		return modfManId;
	}
	public void setModfManId(String modfManId) {
		this.modfManId = modfManId;
	}
	public String getModfDtm() {
		return modfDtm;
	}
	public void setModfDtm(String modfDtm) {
		this.modfDtm = modfDtm;
	}
	public int getRowNumbe() {
		return rowNumbe;
	}
	public void setRowNumbe(int rowNumbe) {
		this.rowNumbe = rowNumbe;
	}
	
	private StringBuilder sbError = new StringBuilder();
	
	//유효성 오류 메세지 
	public String getErrorMessage() {
		return sbError.toString();
	}
	
	//유효성 검증
	public boolean validate() {
		boolean result = true;
		
		sbError = new StringBuilder();
		sbError.append("[설비정보][조명설비] 유효성 검증 오류\r\n");
		sbError.append("------------------------------------------------\r\n");
		
		/*조명설비 구분코드*/
		if (lampCd.length() > 2) {
			sbError.append("구분 값이 잘못 되었습니다.\r\n");
			result = false;
		}		
		/*종류*/
		if (lampKindCd.length() > 2) {
			sbError.append("종류 값이 잘못 되었습니다.\r\n");
			result = false;
		}
		/*조명전력*/
		if (lampElcp.length() > 50) {
			sbError.append("조명전력은 50자 이상 입력할수 없습니다.\r\n");
			result = false;
		}				
		/*기기대수*/
		if (eqpCnt.length() > 50) {
			sbError.append("기기대수는 50자 이상 입력할수 없습니다.\r\n");
			result = false;
		}		
		/*조명비율*/
		if (lampRate.length() > 50) {
			sbError.append("조명비율은 50자 이상 입력할수 없습니다.\r\n");
			result = false;
		}
		
		return result;
	}
	
	//모든 파라메터 Json Style 문자열 반환
	public String toStringJson() {
        return ToStringBuilder.reflectionToString(this, ToStringStyle.JSON_STYLE);
    }  
	
	//객체 빈값 여부
	public boolean isEmpty() {
			
		int notEmptyCnt = 0;
				
		if (!StringUtil.isEmpty(lampKindCd)) {
			notEmptyCnt++;
		}
		if (!StringUtil.isEmpty(lampElcp)) {
			notEmptyCnt++;
		}
		if (!StringUtil.isEmpty(eqpCnt)) {
			notEmptyCnt++;
		}
		if (!StringUtil.isEmpty(lampRate)) {
			notEmptyCnt++;
		}
			
		if (notEmptyCnt > 0) {
			return false;
		}else {
			return true;
		}
	}
}
