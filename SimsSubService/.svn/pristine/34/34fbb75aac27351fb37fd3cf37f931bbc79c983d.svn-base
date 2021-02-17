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
public class RecyInfo4 extends PageInfo{

    private String bldId;      
    
    private String coolHetgSctCd;
    private String heatMergRegeYn;
    private String heatPrdctAbil;
    private String heatPrdctEfic;
    private String gelecEfic;
    
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
    public String getCoolHetgSctCd() {
        return coolHetgSctCd;
    }
    public void setCoolHetgSctCd(String coolHetgSctCd) {
        this.coolHetgSctCd = coolHetgSctCd;
    }
    public String getHeatMergRegeYn() {
        return heatMergRegeYn;
    }
    public void setHeatMergRegeYn(String heatMergRegeYn) {
        this.heatMergRegeYn = heatMergRegeYn;
    }
    public String getHeatPrdctAbil() {
        return heatPrdctAbil;
    }
    public void setHeatPrdctAbil(String heatPrdctAbil) {
        this.heatPrdctAbil = heatPrdctAbil;
    }
    public String getHeatPrdctEfic() {
        return heatPrdctEfic;
    }
    public void setHeatPrdctEfic(String heatPrdctEfic) {
        this.heatPrdctEfic = heatPrdctEfic;
    }
    public String getGelecEfic() {
        return gelecEfic;
    }
    public void setGelecEfic(String gelecEfic) {
        this.gelecEfic = gelecEfic;
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
        sbError.append("[신재생][열병합발전 정보] 유효성 검증 오류\r\n");
        sbError.append("------------------------------------------------\r\n");
           
        if (coolHetgSctCd.length() > 2) {
            sbError.append("냉난방구분 값이 잘못 되었습니다.\r\n");
            result = false;
        }
        if (heatMergRegeYn.length() > 1) {
            sbError.append("열병합신재생 여부 값이 잘못 되었습니다.\r\n");
            result = false;
        }
        
        
        if (heatPrdctAbil.length() > 50) {
            sbError.append("열생산능력은 50자 이상 입력할 수 없습니다.\r\n");
            result = false;
        }
        
        if (heatPrdctEfic.length() > 50) {
            sbError.append("열생산효율은 50자 이상 입력할 수 없습니다.\r\n");
            result = false;
        }
        
        if (gelecEfic.length() > 50) {
            sbError.append("발전효율은 50자 이상 입력할 수 없습니다.\r\n");
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
          
          if (!StringUtil.isEmpty(coolHetgSctCd)) {
              notEmptyCnt++;
          }
         
          if (!StringUtil.isEmpty(heatMergRegeYn)) {
              notEmptyCnt++;
          }
          if (!StringUtil.isEmpty(heatPrdctAbil)) {
              notEmptyCnt++;
          }
         
          if (!StringUtil.isEmpty(heatPrdctEfic)) {
              notEmptyCnt++;
          }
          
          if (!StringUtil.isEmpty(gelecEfic)) {
              notEmptyCnt++;
          }
                   
          
          if (notEmptyCnt > 0) {
              return false;
          }else {
              return true;
          }
    }
    
}
