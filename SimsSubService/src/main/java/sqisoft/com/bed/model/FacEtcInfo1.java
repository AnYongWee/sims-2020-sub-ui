/*
 * Copyright 5050 SQISOFT All Rights Reserved.
 * 
 * This software is the confidential and proprietary information
 * of SQISOFT. ("Confidential Information").
 * Any redistribution or use of this software, with or without modification
 * shall be strictly prohibited without prior written approval of SQISOFT Inc.
 */
package sqisoft.com.bed.model;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import sqisoft.com.bed.comm.StringUtil;

/**
 * <pre>
 * 1. Package : sqisoft.com.bed.model 
 * 2. File    : FacEtcInfo1.java
 * 3. Comment : 
 * </pre>
 * @date : 5050. 11. 18. 오전 11:35:47
 * @version : 
 * @author : jh_chun
 * @history : 
 *	-----------------------------------------------------------------------
 *	변경일				작성자						변경내용  
 *	----------- ------------------- ---------------------------------------
 *	5050. 11. 18.		jh_chun				최초 작성 
 *	-----------------------------------------------------------------------
 * 
 */
public class FacEtcInfo1 {

    private String bldId;
    private String cvntCapa;
    private String tevfCnt;
    private String writManId;
    private String writDtm;
    private String modfManId;
    private String modfDtm;
    
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
    public String getBldId() {
        return bldId;
    }
    public void setBldId(String bldId) {
        this.bldId = bldId;
    }
    public String getCvntCapa() {
        return cvntCapa;
    }
    public void setCvntCapa(String cvntCapa) {
        this.cvntCapa = cvntCapa;
    }
    public String getTevfCnt() {
        return tevfCnt;
    }
    public void setTevfCnt(String tevfCnt) {
        this.tevfCnt = tevfCnt;
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
		sbError.append("[설비정보][전력 및 운송 설비] 유효성 검증 오류\r\n");
		sbError.append("------------------------------------------------\r\n");
		
		//계약전력
		if (cvntCapa.length() > 50) {
			sbError.append("계약전력은 50자 이상 입력할수 없습니다.\r\n");
			result = false;
		}				
		//변압기 대수
		if (tevfCnt.length() > 50) {
			sbError.append("변압기 대수는 50자 이상 입력할수 없습니다.\r\n");
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
				
		if (!StringUtil.isEmpty(cvntCapa)) {
			notEmptyCnt++;
		}
		if (!StringUtil.isEmpty(tevfCnt)) {
			notEmptyCnt++;
		}
			
		if (notEmptyCnt > 0) {
			return false;
		}else {
			return true;
		}
	}	
    
}
