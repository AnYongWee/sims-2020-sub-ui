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
 * 2. File    : GeneralInfo.java
 * 3. Comment : 
 * </pre>
 * @date : 5050. 11. 11. 오전 10:37:12
 * @version : 
 * @author : jh_chun
 * @history : 
 *	-----------------------------------------------------------------------
 *	변경일				작성자						변경내용  
 *	----------- ------------------- ---------------------------------------
 *	5050. 11. 11.		jh_chun				최초 작성 
 *	-----------------------------------------------------------------------
 * 
 */
public class GeneralInfo6 extends PageInfo{

    /* 공통 */
    private String writManId;
    private String writDtm;
    private String modfManId;
    private String modfDtm;
    private String guId;   
    
    private String bldId;
    private String occpCd;
    private String rcptYy1;    
    private String bfyyOne1;    
    private String bfyyTwo1;   
    private String bfyyThree1;
    
    
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
    
    public String getBfyyThree1() {
        return bfyyThree1;
    }
    public void setBfyyThree1(String bfyyThree1) {
        this.bfyyThree1 = bfyyThree1;
    }
    
    public String getGuId() {
        return guId;
    }
    public void setGuId(String guId) {
        this.guId = guId;
    }
    public String getOccpCd() {
        return occpCd;
    }
    public void setOccpCd(String occpCd) {
        this.occpCd = occpCd;
    }
    public String getRcptYy1() {
        return rcptYy1;
    }
    public void setRcptYy1(String rcptYy1) {
        this.rcptYy1 = rcptYy1;
    }
    public String getBfyyOne1() {
        return bfyyOne1;
    }
    public void setBfyyOne1(String bfyyOne1) {
        this.bfyyOne1 = bfyyOne1;
    }
    public String getBfyyTwo1() {
        return bfyyTwo1;
    }
    public void setBfyyTwo1(String bfyyTwo1) {
        this.bfyyTwo1 = bfyyTwo1;
    }
    public String getBldId() {
        return bldId;
    }
    public void setBldId(String bldId) {
        this.bldId = bldId;
    }
    
    
 private StringBuilder sbError = new StringBuilder();
    
    //유효성 오류 메세지 
    public String getErrorMessage() {
        return sbError.toString();
    }
    
    // 유효성 검증
    public boolean validate() {
        boolean result = true;
        
        sbError = new StringBuilder();
        sbError.append("[일반사항][재실정보] 유효성 검증 오류\r\n");
        sbError.append("------------------------------------------------\r\n");
        
        
        /*기준년도*/
        if (rcptYy1.length() > 4) {
            sbError.append("기준년도는 4자 이상 입력할수 없습니다.\r\n");
            result = false;
        }
        
        if (bfyyOne1.length() > 50) {
            sbError.append("상근 근로자 수는 50자 이상 입력할수 없습니다.\r\n");
            result = false;
        }
        
        if (bfyyTwo1.length() > 50) {
            sbError.append("상근 근로자 수는 50자 이상 입력할수 없습니다.\r\n");
            result = false;
        }
        
        if (bfyyThree1.length() > 50) {
            sbError.append("상근 근로자 수는 50자 이상 입력할수 없습니다.\r\n");
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
                
        if (!StringUtil.isEmpty(rcptYy1)) {
            notEmptyCnt++;
        }
        if (!StringUtil.isEmpty(bfyyOne1)) {
            notEmptyCnt++;
        }
        if (!StringUtil.isEmpty(bfyyTwo1)) {
            notEmptyCnt++;
        }
        if (!StringUtil.isEmpty(bfyyThree1)) {
            notEmptyCnt++;
        }
            
        if (notEmptyCnt > 0) {
            return false;
        }else {
            return true;
        }
    }   
    
}
