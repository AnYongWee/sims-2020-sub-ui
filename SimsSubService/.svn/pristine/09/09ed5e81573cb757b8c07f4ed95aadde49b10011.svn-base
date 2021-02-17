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
public class GeneralInfo4 extends PageInfo{

    /* 공통 */
    private String writManId;
    private String writDtm;
    private String modfManId;
    private String modfDtm;
    private String guId;

    
    private String bldId;
    private String archtCd;   
    private String corpNm2; /*기계설계 사무소명*/   
    private String regiNo2;    
    private String undeNm2;    
    private String email2;     
    private String tel2;     
    private String phon2;    
    private String addr2;    
    
    
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
    
    public String getRegiNo2() {
        return regiNo2;
    }
    public void setRegiNo2(String regiNo2) {
        this.regiNo2 = regiNo2;
    }
    
    
    public String getUndeNm2() {
        return undeNm2;
    }
    public void setUndeNm2(String undeNm2) {
        this.undeNm2 = undeNm2;
    }
    
   
    public String getEmail2() {
        return email2;
    }
    public void setEmail2(String email2) {
        this.email2 = email2;
    }
    
    
    public String getTel2() {
        return tel2;
    }
    public void setTel2(String tel2) {
        this.tel2 = tel2;
    }
    
   
    public String getPhon2() {
        return phon2;
    }
    public void setPhon2(String phon2) {
        this.phon2 = phon2;
    }
    
    public String getAddr2() {
        return addr2;
    }
    public void setAddr2(String addr2) {
        this.addr2 = addr2;
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
    public String getArchtCd() {
        return archtCd;
    }
    public void setArchtCd(String archtCd) {
        this.archtCd = archtCd;
    }
    public String getCorpNm2() {
        return corpNm2;
    }
    public void setCorpNm2(String corpNm2) {
        this.corpNm2 = corpNm2;
    }
    
    
private StringBuilder sbError = new StringBuilder();
    
    //유효성 오류 메세지 
    public String getErrorMessage() {
        return sbError.toString();
    }
    
    // 유효성 검증
    public boolean validate() {
        boolean result = true;
                
        if (corpNm2.length() > 500) {
            sbError.append("기계설계 사무소명은 500자 이상 입력할수 없습니다.\r\n");
            result = false;
        }
        if (regiNo2.length() > 50) {
            sbError.append("자격번호는 50자 이상 입력할수 없습니다.\r\n");
            result = false;
        }
        if (undeNm2.length() > 100) {
            sbError.append("사무소 담당자명은 100자 이상 입력할수 없습니다.\r\n");
            result = false;
        }
        if (email2.length() > 100) {
            sbError.append("사무소 이메일은 100자 이상 입력할수 없습니다.\r\n");
            result = false;
        }
        if (tel2.length() > 50) {
            sbError.append("사무소 전화번호는 50자 이상 입력할수 없습니다.\r\n");
            result = false;
        }
        if (phon2.length() > 50) {
            sbError.append("사무소 휴대전화번호는 50자 이상 입력할수 없습니다.\r\n");
            result = false;
        }
        if (addr2.length() > 100) {
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
                
        if (!StringUtil.isEmpty(corpNm2)) {
            notEmptyCnt++;
        }
        if (!StringUtil.isEmpty(regiNo2)) {
            notEmptyCnt++;
        }
        if (!StringUtil.isEmpty(undeNm2)) {
            notEmptyCnt++;
        }
        if (!StringUtil.isEmpty(email2)) {
            notEmptyCnt++;
        }
        if (!StringUtil.isEmpty(tel2)) {
            notEmptyCnt++;
        }
        if (!StringUtil.isEmpty(phon2)) {
            notEmptyCnt++;
        }
        if (!StringUtil.isEmpty(addr2)) {
            notEmptyCnt++;
        }
            
        if (notEmptyCnt > 0) {
            return false;
        }else {
            return true;
        }
    }   
    
    
}
