package sqisoft.com.bed.model;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import sqisoft.com.bed.comm.StringUtil;

/**
 * @Class Name : FacLightControlInfo.java
 * @Description : 조명제어 정보 클래스
 * @Modification Information
 *
 * @author ywan
 * @since 2010. 11.04
 * @version 1.0
 * @see 
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
public class FacLightControlInfo {
	/*건물아이디*/
	private String bldId;
	/*조명설비 구분코드*/
	private String lampCd;
	/*조명설비 구분명*/
	private String lampNm;
	/*번호*/
	private String no;
	/*종류*/
	private String lampKindCd;
	/*기타*/
	private String etc;	
	/*작성자ID*/
	private String writManId;
	/*작성일*/
	private String writDtm;
	/*수정자ID*/
	private String modfManId;
	/*수정일*/
	private String modfDtm;
	
	private int rowNumbe;

	public String getBldId() {
		return bldId;
	}

	public void setBldId(String bldId) {
		this.bldId = bldId;
	}

	public String getLampCd() {
		return lampCd;
	}

	public void setLampCd(String lampCd) {
		this.lampCd = lampCd;
	}

	public String getLampNm() {
		return lampNm;
	}

	public void setLampNm(String lampNm) {
		this.lampNm = lampNm;
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public String getLampKindCd() {
		return lampKindCd;
	}

	public void setLampKindCd(String lampKindCd) {
		this.lampKindCd = lampKindCd;
	}

	public String getEtc() {
		return etc;
	}

	public void setEtc(String etc) {
		this.etc = etc;
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

	public int getRowNumbe() {
		return rowNumbe;
	}

	public void setRowNumbe(int rowNumbe) {
		this.rowNumbe = rowNumbe;
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
		sbError.append("[설비정보][조명제어] 유효성 검증 오류\r\n");
		sbError.append("------------------------------------------------\r\n");
		
		/*조명설비 구분코드*/
		if (lampCd.length() > 2) {
			sbError.append("구분 값이 잘못 되었습니다.\r\n");
			result = false;
		}		
		/*종류*/
		if (lampKindCd.length() > 2) {
			sbError.append("종류 값이 잘못 되었습니다.\r\n");
			result = false;
		}		
		/*기타*/
		if (etc.length() > 100) {
			sbError.append("기타는 100자 이상 입력할수 없습니다.\r\n");			
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
				
		if (!StringUtil.isEmpty(lampKindCd)) {
			notEmptyCnt++;
		}
		if (!StringUtil.isEmpty(etc)) {
			notEmptyCnt++;
		}
		
		if (notEmptyCnt > 0) {
			return false;
		}else {
			return true;
		}
	}
}
