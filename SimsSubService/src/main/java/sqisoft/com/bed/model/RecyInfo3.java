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
public class RecyInfo3 extends PageInfo{

    private String bldId;
    private String solaSysCd;
    private String conhTypeCd;
    private String solaAzimCd;
    private String rthrmTankInstPlcCd;
    private String area;
    private String conhEfic;
    private String solaPumpPower;
    private String wthtTankCuvo;
    private String hetgTankCuvo;
    
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
    public String getSolaSysCd() {
        return solaSysCd;
    }
    public void setSolaSysCd(String solaSysCd) {
        this.solaSysCd = solaSysCd;
    }
    public String getConhTypeCd() {
        return conhTypeCd;
    }
    public void setConhTypeCd(String conhTypeCd) {
        this.conhTypeCd = conhTypeCd;
    }
    public String getSolaAzimCd() {
        return solaAzimCd;
    }
    public void setSolaAzimCd(String solaAzimCd) {
        this.solaAzimCd = solaAzimCd;
    }
    public String getRthrmTankInstPlcCd() {
        return rthrmTankInstPlcCd;
    }
    public void setRthrmTankInstPlcCd(String rthrmTankInstPlcCd) {
        this.rthrmTankInstPlcCd = rthrmTankInstPlcCd;
    }
    public String getArea() {
        return area;
    }
    public void setArea(String area) {
        this.area = area;
    }
    public String getConhEfic() {
        return conhEfic;
    }
    public void setConhEfic(String conhEfic) {
        this.conhEfic = conhEfic;
    }
    public String getSolaPumpPower() {
        return solaPumpPower;
    }
    public void setSolaPumpPower(String solaPumpPower) {
        this.solaPumpPower = solaPumpPower;
    }
    public String getWthtTankCuvo() {
        return wthtTankCuvo;
    }
    public void setWthtTankCuvo(String wthtTankCuvo) {
        this.wthtTankCuvo = wthtTankCuvo;
    }
    public String getHetgTankCuvo() {
        return hetgTankCuvo;
    }
    public void setHetgTankCuvo(String hetgTankCuvo) {
        this.hetgTankCuvo = hetgTankCuvo;
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
        sbError.append("[신재생][태양열정보] 유효성 검증 오류\r\n");
        sbError.append("------------------------------------------------\r\n");
           
        if (solaSysCd.length() > 2) {
            sbError.append("시스템 구분 값이 잘못 되었습니다.\r\n");
            result = false;
        }
        if (conhTypeCd.length() > 2) {
            sbError.append("집열기 유형 값이 잘못 되었습니다.\r\n");
            result = false;
        }
        if (solaAzimCd.length() > 2) {
            sbError.append("방위 값이 잘못 되었습니다.\r\n");
            result = false;
        }
       
        if (rthrmTankInstPlcCd.length() > 2) {
            sbError.append("축열탱크설치 장소 값이 잘못 되었습니다.\r\n");
            result = false;
        }
        
        if (area.length() > 50) {
            sbError.append("면적은 50자 이상 입력할 수 없습니다.\r\n");
            result = false;
        }
        
        if (conhEfic.length() > 50) {
            sbError.append("집열효율은 50자 이상 입력할 수 없습니다.\r\n");
            result = false;
        }
        
        if (solaPumpPower.length() > 50) {
            sbError.append("솔라펌프동력은 50자 이상 입력할 수 없습니다.\r\n");
            result = false;
        }
        if (wthtTankCuvo.length() > 50) {
            sbError.append("급탕탱크체적은 50자 이상 입력할 수 없습니다.\r\n");
            result = false;
        }
        if (hetgTankCuvo.length() > 50) {
            sbError.append("난방탱크체적은 50자 이상 입력할 수 없습니다.\r\n");
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
          
          if (!StringUtil.isEmpty(solaSysCd)) {
              notEmptyCnt++;
          }
         
          if (!StringUtil.isEmpty(conhTypeCd)) {
              notEmptyCnt++;
          }
          if (!StringUtil.isEmpty(solaAzimCd)) {
              notEmptyCnt++;
          }
         
          if (!StringUtil.isEmpty(rthrmTankInstPlcCd)) {
              notEmptyCnt++;
          }
          
          if (!StringUtil.isEmpty(area)) {
              notEmptyCnt++;
          }
          
          if (!StringUtil.isEmpty(conhEfic)) {
              notEmptyCnt++;
          }
          
          if (!StringUtil.isEmpty(solaPumpPower)) {
              notEmptyCnt++;
          }
          if (!StringUtil.isEmpty(wthtTankCuvo)) {
              notEmptyCnt++;
          }
          if (!StringUtil.isEmpty(hetgTankCuvo)) {
              notEmptyCnt++;
          }
          
          if (notEmptyCnt > 0) {
              return false;
          }else {
              return true;
          }
    }
    
}
