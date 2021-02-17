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
 * 2. File    : DriveInfo1.java
 * 3. Comment : 
 * </pre>
 * @date : 5050. 11. 17. 오후 1:02:24
 * @version : 
 * @author : jh_chun
 * @history : 
 *	-----------------------------------------------------------------------
 *	변경일				작성자						변경내용  
 *	----------- ------------------- ---------------------------------------
 *	5050. 11. 17.		jh_chun				최초 작성 
 *	-----------------------------------------------------------------------
 * 
 */
public class DriveInfo3 extends PageInfo{

    private String bldId;
    private String drveCd;    
    private String stupTemp3;
    private String drveDays3;
    private String drveTimes3;
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
    public String getDrveCd() {
        return drveCd;
    }
    public void setDrveCd(String drveCd) {
        this.drveCd = drveCd;
    }
    public String getStupTemp3() {
        return stupTemp3;
    }
    public void setStupTemp3(String stupTemp3) {
        this.stupTemp3 = stupTemp3;
    }
    public String getDrveDays3() {
        return drveDays3;
    }
    public void setDrveDays3(String drveDays3) {
        this.drveDays3 = drveDays3;
    }
    public String getDrveTimes3() {
        return drveTimes3;
    }
    public void setDrveTimes3(String drveTimes3) {
        this.drveTimes3 = drveTimes3;
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
        sbError.append("[운전정보][공조 냉방급기] 유효성 검증 오류\r\n");
        sbError.append("------------------------------------------------\r\n");
           
                
        if (stupTemp3.length() > 50) {
            sbError.append("설정온도는 50자 이상 입력할수 없습니다.\r\n");
            result = false;
        }
        
        if (drveDays3.length() > 50) {
            sbError.append("가동일수는 50자 이상 입력할수 없습니다.\r\n");
            result = false;
        }
        
        if (drveTimes3.length() > 50) {
            sbError.append("가동시간은 50자 이상 입력할수 없습니다.\r\n");
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
          
          if (!StringUtil.isEmpty(stupTemp3)) {
              notEmptyCnt++;
          }
         
          if (!StringUtil.isEmpty(drveDays3)) {
              notEmptyCnt++;
          }
          if (!StringUtil.isEmpty(drveTimes3)) {
              notEmptyCnt++;
          }
         
         
          
          if (notEmptyCnt > 0) {
              return false;
          }else {
              return true;
          }
    }
    
    
    
    
    
}
