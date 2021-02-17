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
public class GeneralInfo3 extends PageInfo{

    /* 공통 */
    private String writManId;
    private String writDtm;
    private String modfManId;
    private String modfDtm;
    private String guId;

    private String bldId;
    private String archtCd;
    private String corpNm1; /*건축설계 사무소명*/    
    private String regiNo1;    
    private String undeNm1;    
    private String email1;    
    private String tel1;     
    private String phon1;    
    private String addr1; 
        
    
    
    
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
    public String getCorpNm1() {
        return corpNm1;
    }
    public void setCorpNm1(String corpNm1) {
        this.corpNm1 = corpNm1;
    }
    
    public String getRegiNo1() {
        return regiNo1;
    }
    public void setRegiNo1(String regiNo1) {
        this.regiNo1 = regiNo1;
    }
    
    public String getUndeNm1() {
        return undeNm1;
    }
    public void setUndeNm1(String undeNm1) {
        this.undeNm1 = undeNm1;
    }
    
    public String getEmail1() {
        return email1;
    }
    public void setEmail1(String email1) {
        this.email1 = email1;
    }
    
    public String getTel1() {
        return tel1;
    }
    public void setTel1(String tel1) {
        this.tel1 = tel1;
    }
    
    public String getPhon1() {
        return phon1;
    }
    public void setPhon1(String phon1) {
        this.phon1 = phon1;
    }
    
    public String getAddr1() {
        return addr1;
    }
    public void setAddr1(String addr1) {
        this.addr1 = addr1;
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
                
        if (corpNm1.length() > 500) {
            sbError.append("건축설계 사무소명은 500자 이상 입력할수 없습니다.\r\n");
            result = false;
        }
        if (regiNo1.length() > 50) {
            sbError.append("자격번호는 50자 이상 입력할수 없습니다.\r\n");
            result = false;
        }
        if (undeNm1.length() > 100) {
            sbError.append("사무소 담당자명은 100자 이상 입력할수 없습니다.\r\n");
            result = false;
        }
        if (email1.length() > 100) {
            sbError.append("사무소 이메일은 100자 이상 입력할수 없습니다.\r\n");
            result = false;
        }
        if (tel1.length() > 50) {
            sbError.append("사무소 전화번호는 50자 이상 입력할수 없습니다.\r\n");
            result = false;
        }
        if (phon1.length() > 50) {
            sbError.append("사무소 휴대전화번호는 50자 이상 입력할수 없습니다.\r\n");
            result = false;
        }
        if (addr1.length() > 100) {
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
                
        if (!StringUtil.isEmpty(corpNm1)) {
            notEmptyCnt++;
        }
        if (!StringUtil.isEmpty(regiNo1)) {
            notEmptyCnt++;
        }
        if (!StringUtil.isEmpty(undeNm1)) {
            notEmptyCnt++;
        }
        if (!StringUtil.isEmpty(email1)) {
            notEmptyCnt++;
        }
        if (!StringUtil.isEmpty(tel1)) {
            notEmptyCnt++;
        }
        if (!StringUtil.isEmpty(phon1)) {
            notEmptyCnt++;
        }
        if (!StringUtil.isEmpty(addr1)) {
            notEmptyCnt++;
        }
            
        if (notEmptyCnt > 0) {
            return false;
        }else {
            return true;
        }
    }   
    
}
