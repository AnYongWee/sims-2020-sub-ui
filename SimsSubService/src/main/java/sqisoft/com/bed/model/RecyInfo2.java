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
public class RecyInfo2 extends PageInfo{

    private String bldId;
    private String grhgFuelCd;
    private String grCoolHetgSctCd;
    private String heatPerfNotHetg;
    private String heatPerfNoCool;
    private String heathHeatPumpCapa;
    private String grudCpumpPower;
    
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
    public String getGrhgFuelCd() {
        return grhgFuelCd;
    }
    public void setGrhgFuelCd(String grhgFuelCd) {
        this.grhgFuelCd = grhgFuelCd;
    }
    public String getGrCoolHetgSctCd() {
        return grCoolHetgSctCd;
    }
    public void setGrCoolHetgSctCd(String grCoolHetgSctCd) {
        this.grCoolHetgSctCd = grCoolHetgSctCd;
    }
    public String getHeatPerfNotHetg() {
        return heatPerfNotHetg;
    }
    public void setHeatPerfNotHetg(String heatPerfNotHetg) {
        this.heatPerfNotHetg = heatPerfNotHetg;
    }
    public String getHeatPerfNoCool() {
        return heatPerfNoCool;
    }
    public void setHeatPerfNoCool(String heatPerfNoCool) {
        this.heatPerfNoCool = heatPerfNoCool;
    }
    public String getHeathHeatPumpCapa() {
        return heathHeatPumpCapa;
    }
    public void setHeathHeatPumpCapa(String heathHeatPumpCapa) {
        this.heathHeatPumpCapa = heathHeatPumpCapa;
    }
    public String getGrudCpumpPower() {
        return grudCpumpPower;
    }
    public void setGrudCpumpPower(String grudCpumpPower) {
        this.grudCpumpPower = grudCpumpPower;
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
        sbError.append("[신재생][지열정보] 유효성 검증 오류\r\n");
        sbError.append("------------------------------------------------\r\n");
           
        if (grhgFuelCd.length() > 2) {
            sbError.append("가동연료 값이 잘못 되었습니다.\r\n");
            result = false;
        }
        if (grCoolHetgSctCd.length() > 2) {
            sbError.append("냉난방 구분 값이 잘못 되었습니다.\r\n");
            result = false;
        }
       
        if (heatPerfNotHetg.length() > 50) {
            sbError.append("열성능비난방은 50자 이상 입력할 수 없습니다.\r\n");
            result = false;
        }
        
        if (heatPerfNoCool.length() > 50) {
            sbError.append("열성능비냉방은 50자 이상 입력할 수 없습니다.\r\n");
            result = false;
        }
        
        if (heathHeatPumpCapa.length() > 50) {
            sbError.append("지열히트펌프용량은 숫자 와 소수점만 입력할수 있습니다.\r\n");
            result = false;
        }
        
        if (grudCpumpPower.length() > 50) {
            sbError.append("지중순환펌프동력은 50자 이상 입력할 수 없습니다.\r\n");
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
          
          if (!StringUtil.isEmpty(grhgFuelCd)) {
              notEmptyCnt++;
          }
         
          if (!StringUtil.isEmpty(grCoolHetgSctCd)) {
              notEmptyCnt++;
          }
          if (!StringUtil.isEmpty(heatPerfNotHetg)) {
              notEmptyCnt++;
          }
         
          if (!StringUtil.isEmpty(heatPerfNoCool)) {
              notEmptyCnt++;
          }
          
          if (!StringUtil.isEmpty(heathHeatPumpCapa)) {
              notEmptyCnt++;
          }
          
          if (!StringUtil.isEmpty(grudCpumpPower)) {
              notEmptyCnt++;
          }
          
          if (notEmptyCnt > 0) {
              return false;
          }else {
              return true;
          }
    }
    
    
    
    
}
