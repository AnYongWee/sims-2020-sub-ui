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
 * 2. File    : FacEtcInfo3.java
 * 3. Comment : 
 * </pre>
 * @date : 5050. 11. 18. 오전 11:35:47
 * @version : 
 * @author : jh_chun
 * @history : 
 *	-----------------------------------------------------------------------
 *	변경일				작성자						변경내용  
 *	----------- ------------------- ---------------------------------------
 *	5050. 11. 18.		jh_chun				최초 작성 
 *	-----------------------------------------------------------------------
 * 
 */
public class FacEtcInfo3 {

    private String bldId;
      
    private String serverPrvsCd;
    private String serverPrvsCnt;
    private String coolEqpCapa;
    private String upsCapa;
    private String serverPrvsArea;
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
    public String getServerPrvsCd() {
        return serverPrvsCd;
    }
    public void setServerPrvsCd(String serverPrvsCd) {
        this.serverPrvsCd = serverPrvsCd;
    }
    public String getServerPrvsCnt() {
        return serverPrvsCnt;
    }
    public void setServerPrvsCnt(String serverPrvsCnt) {
        this.serverPrvsCnt = serverPrvsCnt;
    }
    public String getCoolEqpCapa() {
        return coolEqpCapa;
    }
    public void setCoolEqpCapa(String coolEqpCapa) {
        this.coolEqpCapa = coolEqpCapa;
    }
    public String getUpsCapa() {
        return upsCapa;
    }
    public void setUpsCapa(String upsCapa) {
        this.upsCapa = upsCapa;
    }
    public String getServerPrvsArea() {
        return serverPrvsArea;
    }
    public void setServerPrvsArea(String serverPrvsArea) {
        this.serverPrvsArea = serverPrvsArea;
    }
    
private StringBuilder sbError = new StringBuilder();
	
	//유효성 오류 메세지 
	public String getErrorMessage() {
		return sbError.toString();
	}
	
	//유효성 검증
	public boolean validate() {
		boolean result = true;
		
		sbError = new StringBuilder();
		sbError.append("[설비정보][서버실 및 데이터실] 유효성 검증 오류\r\n");
		sbError.append("------------------------------------------------\r\n");
		
		/*서버실 유무*/
		if (serverPrvsCd.length() > 2) {
			sbError.append("서버실 유무 값이 잘못 되었습니다.\r\n");
			result = false;
		}
		/*서버실 개수*/
		if (serverPrvsCnt.length() > 50) {
			sbError.append("서버실 개수는 50자 이상 입력할수 없습니다.\r\n");
			result = false;
		}
		
	    /*냉각장치 용량*/
		if (coolEqpCapa.length() > 50) {
			sbError.append("냉각장치 용량은 50자 이상 입력할수 없습니다.\r\n");
			result = false;
		}
		
	    /*UPS 용량*/
		if (upsCapa.length() > 50) {
			sbError.append("UPS 용량은 50자 이상 입력할수 없습니다.\r\n");
			result = false;
		}
		
	    /*서버실 면적*/
		if (serverPrvsArea.length() > 50) {
			sbError.append("서버실 면적은 50자 이상 입력할수 없습니다.\r\n");
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
		    
		if (!StringUtil.isEmpty(serverPrvsCd)) {
			notEmptyCnt++;
		}
		if (!StringUtil.isEmpty(serverPrvsCnt)) {
			notEmptyCnt++;
		}
		if (!StringUtil.isEmpty(coolEqpCapa)) {
			notEmptyCnt++;
		}
		if (!StringUtil.isEmpty(upsCapa)) {
			notEmptyCnt++;
		}
		if (!StringUtil.isEmpty(serverPrvsArea)) {
			notEmptyCnt++;
		}
					
		if (notEmptyCnt > 0) {
			return false;
		}else {
			return true;
		}
	}		
}
