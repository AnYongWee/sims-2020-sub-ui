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
 * 2. File    : FacEtcInfo2.java
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
public class FacEtcInfo2 {

    private String bldId;
    private String elvtCnt;
    private String emgenElvtCnt;
    private String escltCnt;
    private String moveWlkCnt;
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
    public String getElvtCnt() {
        return elvtCnt;
    }
    public void setElvtCnt(String elvtCnt) {
        this.elvtCnt = elvtCnt;
    }
    public String getEmgenElvtCnt() {
        return emgenElvtCnt;
    }
    public void setEmgenElvtCnt(String emgenElvtCnt) {
        this.emgenElvtCnt = emgenElvtCnt;
    }
    public String getEscltCnt() {
        return escltCnt;
    }
    public void setEscltCnt(String escltCnt) {
        this.escltCnt = escltCnt;
    }
    public String getMoveWlkCnt() {
        return moveWlkCnt;
    }
    public void setMoveWlkCnt(String moveWlkCnt) {
        this.moveWlkCnt = moveWlkCnt;
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
		sbError.append("[설비정보][전력 및 운송 설비] 유효성 검증 오류\r\n");
		sbError.append("------------------------------------------------\r\n");
		
		/*승객용 승강기 대수. 단위 - 대*/
		if (elvtCnt.length() > 50) {
			sbError.append("승객용 승강기수는 50자 이상 입력할수 없습니다.\r\n");
			result = false;
		}	
					 
		/*비상용 승강기 대수. 단위 - 대*/
		if (emgenElvtCnt.length() > 50) {
			sbError.append("비상용 승강기수는 50자 이상 입력할수 없습니다.\r\n");
			result = false;
		}
		
		/*에스컬레이터 수. 단위 - 대*/
		if (escltCnt.length() > 50) {
			sbError.append("에스컬레이터 수는 50자 이상 입력할수 없습니다.\r\n");
			result = false;
		}
		
		/*무빙워크 수. 단위 - 대*/
		if (moveWlkCnt.length() > 50) {
			sbError.append("무빙워크 수는 50자 이상 입력할수 없습니다.\r\n");
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
		    
		if (!StringUtil.isEmpty(elvtCnt)) {
			notEmptyCnt++;
		}
		if (!StringUtil.isEmpty(emgenElvtCnt)) {
			notEmptyCnt++;
		}
		if (!StringUtil.isEmpty(escltCnt)) {
			notEmptyCnt++;
		}
		if (!StringUtil.isEmpty(moveWlkCnt)) {
			notEmptyCnt++;
		}
					
		if (notEmptyCnt > 0) {
			return false;
		}else {
			return true;
		}
	}	
}
