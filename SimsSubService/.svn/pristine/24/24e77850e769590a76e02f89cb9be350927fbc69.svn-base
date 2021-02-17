/*
 * Copyright 2020 SQISOFT All Rights Reserved.
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
 * @date : 2020. 11. 11. 오전 10:37:12
 * @version : 
 * @author : jh_chun
 * @history : 
 *	-----------------------------------------------------------------------
 *	변경일				작성자						변경내용  
 *	----------- ------------------- ---------------------------------------
 *	2020. 11. 11.		jh_chun				최초 작성 
 *	-----------------------------------------------------------------------
 * 
 */
public class GeneralInfo1 extends PageInfo{

    /* 공통 */
    private String writManId;
    private String writDtm;
    private String modfManId;
    private String modfDtm;
    private String guId;
    private String bldId;

    private String respondId;
    private String respondNm;
    private String dpt;
    private String email;
    private String tel;
        
    
    
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
    public String getRespondNm() {
        return respondNm;
    }
    public void setRespondNm(String respondNm) {
        this.respondNm = respondNm;
    }
    public String getDpt() {
        return dpt;
    }
    public void setDpt(String dpt) {
        this.dpt = dpt;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getTel() {
        return tel;
    }
    public void setTel(String tel) {
        this.tel = tel;
    }
    public String getGuId() {
        return guId;
    }
    public void setGuId(String guId) {
        this.guId = guId;
    }
    public String getRespondId() {
        return respondId;
    }
    public void setRespondId(String respondId) {
        this.respondId = respondId;
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
        sbError.append("[일반사항][응답자정보] 유효성 검증 오류\r\n");
        sbError.append("------------------------------------------------\r\n");
        
        /*성명*/
        if (respondNm.length() > 50) {
            sbError.append("성명은 50자 이상 입력할수 없습니다.\r\n");
            result = false;
        }
        /*부서직급*/
        if (dpt.length() > 50) {
            sbError.append("부서/직급은 50자 이상 입력할수 없습니다.\r\n");
            result = false;
        }
        /*이메일*/
        if (email.length() > 100) {
            sbError.append("이메일은 100자 이상 입력할수 없습니다.\r\n");
            result = false;
        }
        /*연락처*/
        if (tel.length() > 50) {
            sbError.append("연락처는 50자 이상 입력할수 없습니다.\r\n");
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
          
          /*성명*/
          if (!StringUtil.isEmpty(respondNm)) {
              notEmptyCnt++;
          }
          /*부서직급*/
          if (!StringUtil.isEmpty(dpt)) {
              notEmptyCnt++;
          }
          /*이메일*/
          if (!StringUtil.isEmpty(email)) {
              notEmptyCnt++;
          }
          /*연락처*/
          if (!StringUtil.isEmpty(tel)) {
              notEmptyCnt++;
          }
          
          if (notEmptyCnt > 0) {
              return false;
          }else {
              return true;
          }
    }
}
