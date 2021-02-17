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
 * 2. File    : RecyInfo1.java
 * 3. Comment : 
 * </pre>
 * @date : 5050. 11. 16. 오전 11:10:51
 * @version : 
 * @author : jh_chun
 * @history : 
 *	-----------------------------------------------------------------------
 *	변경일				작성자						변경내용  
 *	----------- ------------------- ---------------------------------------
 *	5050. 11. 16.		jh_chun				최초 작성 
 *	-----------------------------------------------------------------------
 * 
 */
public class RecyInfo1 extends PageInfo{

    private String bldId;
    private String modulSlopeCd;
    private String modulAzimCd;
    private String modulCd;
    private String modulTpCd;
    private String modulArea;
    private String modulCapa;
    private String modulEfic;
    
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
    public String getModulSlopeCd() {
        return modulSlopeCd;
    }
    public void setModulSlopeCd(String modulSlopeCd) {
        this.modulSlopeCd = modulSlopeCd;
    }
    public String getModulAzimCd() {
        return modulAzimCd;
    }
    public void setModulAzimCd(String modulAzimCd) {
        this.modulAzimCd = modulAzimCd;
    }
    public String getModulCd() {
        return modulCd;
    }
    public void setModulCd(String modulCd) {
        this.modulCd = modulCd;
    }
    public String getModulTpCd() {
        return modulTpCd;
    }
    public void setModulTpCd(String modulTpCd) {
        this.modulTpCd = modulTpCd;
    }
    public String getModulArea() {
        return modulArea;
    }
    public void setModulArea(String modulArea) {
        this.modulArea = modulArea;
    }
    public String getModulCapa() {
        return modulCapa;
    }
    public void setModulCapa(String modulCapa) {
        this.modulCapa = modulCapa;
    }
    public String getModulEfic() {
        return modulEfic;
    }
    public void setModulEfic(String modulEfic) {
        this.modulEfic = modulEfic;
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
        sbError.append("[신재생][태양광정보] 유효성 검증 오류\r\n");
        sbError.append("------------------------------------------------\r\n");
           
        if (modulSlopeCd.length() > 2) {
            sbError.append("모듈 기울기 값이 잘못 되었습니다.\r\n");
            result = false;
        }
        if (modulAzimCd.length() > 2) {
            sbError.append("모듈 방위 값이 잘못 되었습니다.\r\n");
            result = false;
        }
        if (modulCd.length() > 2) {
            sbError.append("모듈 종류 값이 잘못 되었습니다.\r\n");
            result = false;
        }
       
        if (modulTpCd.length() > 2) {
            sbError.append("모듈 타입 값이 잘못 되었습니다.\r\n");
            result = false;
        }
        
        if (modulArea.length() > 50) {
            sbError.append("모듈면적은 50자 이상 입력할 수 없습니다.\r\n");
            result = false;
        }
        
        if (modulCapa.length() > 50) {
            sbError.append("용량은 50자 이상 입력할 수 없습니다.\r\n");
            result = false;
        }
        
        if (modulEfic.length() > 50) {
            sbError.append("모듈효율은 50자 이상 입력할 수 없습니다.\r\n");
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
          
          if (!StringUtil.isEmpty(modulSlopeCd)) {
              notEmptyCnt++;
          }
         
          if (!StringUtil.isEmpty(modulAzimCd)) {
              notEmptyCnt++;
          }
          if (!StringUtil.isEmpty(modulCd)) {
              notEmptyCnt++;
          }
         
          if (!StringUtil.isEmpty(modulTpCd)) {
              notEmptyCnt++;
          }
          
          if (!StringUtil.isEmpty(modulArea)) {
              notEmptyCnt++;
          }
          
          if (!StringUtil.isEmpty(modulCapa)) {
              notEmptyCnt++;
          }
          
          if (!StringUtil.isEmpty(modulEfic)) {
              notEmptyCnt++;
          }
          
          if (notEmptyCnt > 0) {
              return false;
          }else {
              return true;
          }
    }
    
}
