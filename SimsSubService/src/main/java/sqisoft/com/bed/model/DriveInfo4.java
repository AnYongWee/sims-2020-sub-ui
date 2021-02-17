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
public class DriveInfo4 extends PageInfo{

    private String bldId;
    private String drveCd;    
    private String stupTemp4;
    private String drveDays4;
    private String drveTimes4;
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
    public String getStupTemp4() {
        return stupTemp4;
    }
    public void setStupTemp4(String stupTemp4) {
        this.stupTemp4 = stupTemp4;
    }
    public String getDrveDays4() {
        return drveDays4;
    }
    public void setDrveDays4(String drveDays4) {
        this.drveDays4 = drveDays4;
    }
    public String getDrveTimes4() {
        return drveTimes4;
    }
    public void setDrveTimes4(String drveTimes4) {
        this.drveTimes4 = drveTimes4;
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
        sbError.append("[운전정보][공조 난방급기] 유효성 검증 오류\r\n");
        sbError.append("------------------------------------------------\r\n");
           
                
        if (stupTemp4.length() > 50) {
            sbError.append("설정온도는 50자 이상 입력할수 없습니다.\r\n");
            result = false;
        }
        
        if (drveDays4.length() > 50) {
            sbError.append("가동일수는 50자 이상 입력할수 없습니다.\r\n");
            result = false;
        }
        
        if (drveTimes4.length() > 50) {
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
          
          if (!StringUtil.isEmpty(stupTemp4)) {
              notEmptyCnt++;
          }
         
          if (!StringUtil.isEmpty(drveDays4)) {
              notEmptyCnt++;
          }
          if (!StringUtil.isEmpty(drveTimes4)) {
              notEmptyCnt++;
          }
         
         
          
          if (notEmptyCnt > 0) {
              return false;
          }else {
              return true;
          }
    }
    
    
    
    
    
}
