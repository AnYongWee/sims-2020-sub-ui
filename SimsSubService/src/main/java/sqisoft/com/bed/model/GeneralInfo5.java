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
public class GeneralInfo5 extends PageInfo{

    /* 공통 */
    private String writManId;
    private String writDtm;
    private String modfManId;
    private String modfDtm;
    private String guId;

    private String bldId;
    private String archtCd;
    private String corpNm3; /*전기설계 사무소명*/    
    private String regiNo3;    
    private String undeNm3;     
    private String email3;      
    private String tel3;     
    private String phon3;    
    private String addr3;
    
    
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
   
    public String getArchtCd() {
        return archtCd;
    }
    public void setArchtCd(String archtCd) {
        this.archtCd = archtCd;
    }
    
    public String getCorpNm3() {
        return corpNm3;
    }
    public void setCorpNm3(String corpNm3) {
        this.corpNm3 = corpNm3;
    }
   
    public String getRegiNo3() {
        return regiNo3;
    }
    public void setRegiNo3(String regiNo3) {
        this.regiNo3 = regiNo3;
    }
    
    public String getUndeNm3() {
        return undeNm3;
    }
    public void setUndeNm3(String undeNm3) {
        this.undeNm3 = undeNm3;
    }
    
    public String getEmail3() {
        return email3;
    }
    public void setEmail3(String email3) {
        this.email3 = email3;
    }
    
    public String getTel3() {
        return tel3;
    }
    public void setTel3(String tel3) {
        this.tel3 = tel3;
    }
    
    public String getPhon3() {
        return phon3;
    }
    public void setPhon3(String phon3) {
        this.phon3 = phon3;
    }
    
    public String getAddr3() {
        return addr3;
    }
    public void setAddr3(String addr3) {
        this.addr3 = addr3;
    }
    
    public String getGuId() {
        return guId;
    }
    public void setGuId(String guId) {
        this.guId = guId;
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
                
        if (corpNm3.length() > 500) {
            sbError.append("전기설계 사무소명은 500자 이상 입력할수 없습니다.\r\n");
            result = false;
        }
        if (regiNo3.length() > 50) {
            sbError.append("자격번호는 50자 이상 입력할수 없습니다.\r\n");
            result = false;
        }
        if (undeNm3.length() > 100) {
            sbError.append("사무소 담당자명은 100자 이상 입력할수 없습니다.\r\n");
            result = false;
        }
        if (email3.length() > 100) {
            sbError.append("사무소 이메일은 100자 이상 입력할수 없습니다.\r\n");
            result = false;
        }
        if (tel3.length() > 50) {
            sbError.append("사무소 전화번호는 50자 이상 입력할수 없습니다.\r\n");
            result = false;
        }
        if (phon3.length() > 50) {
            sbError.append("사무소 휴대전화번호는 50자 이상 입력할수 없습니다.\r\n");
            result = false;
        }
        if (addr3.length() > 100) {
            sbError.append("사무소 주소는 100자 이상 입력할수 없습니다.\r\n");
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
                
        if (!StringUtil.isEmpty(corpNm3)) {
            notEmptyCnt++;
        }
        if (!StringUtil.isEmpty(regiNo3)) {
            notEmptyCnt++;
        }
        if (!StringUtil.isEmpty(undeNm3)) {
            notEmptyCnt++;
        }
        if (!StringUtil.isEmpty(email3)) {
            notEmptyCnt++;
        }
        if (!StringUtil.isEmpty(tel3)) {
            notEmptyCnt++;
        }
        if (!StringUtil.isEmpty(phon3)) {
            notEmptyCnt++;
        }
        if (!StringUtil.isEmpty(addr3)) {
            notEmptyCnt++;
        }
            
        if (notEmptyCnt > 0) {
            return false;
        }else {
            return true;
        }
    }   
    
}
