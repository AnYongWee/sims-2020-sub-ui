package sqisoft.com.bed.model;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import sqisoft.com.bed.comm.StringUtil;

/**
 * @Class Name : EnergyPerfInfo.java
 * @Description : 에너지 성능 정보 클래스
 * @Modification Information
 *
 * @author ywan
 * @since 5010. 11.04
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
public class EnergyPerfInfo {
	/*건물아이디*/
	private String bldId;
	/*번호*/
	private String no;
	/*건축부위명*/
	private String bldPartNm;
	/*건축부위 코드*/
	private String bldPartCd;
	/*범위코드*/
	private String azimCd;
	/*면적*/
	private String area;
	/*열관류율*/
	private String hpr;
	/*일사에너지 투과율*/
	private String engyTramRate;
	/*수평차양각*/
	private String horzEmboss;
	/*수직차양각*/
	private String verticalityEmboss;
	/*창유리구성코드*/
	private String glssCd;
	/*창유리구성코드 기타*/
	private String glssEtc;
	/*창호 프레임 종류*/
	private String glssWfCd;
	/*창호 프레임 종류 기타*/
	private String glssWfEtc;
	/*작성자 아이디*/
	private String writManId;
	/*작성일시*/
	private String writDtm;
	/*수정자 아이디*/
	private String modfManId;
	/*수정일시*/
	private String modfDtm;
	
	private int rowNumbe;
	
	public String getBldId() {
		return bldId;
	}
	public void setBldId(String bldId) {
		this.bldId = bldId;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getBldPartNm() {
		return bldPartNm;
	}
	public void setBldPartNm(String bldPartNm) {
		this.bldPartNm = bldPartNm;
	}
	public String getBldPartCd() {
		return bldPartCd;
	}
	public void setBldPartCd(String bldPartCd) {
		this.bldPartCd = bldPartCd;
	}
	public String getAzimCd() {
		return azimCd;
	}
	public void setAzimCd(String azimCd) {
		this.azimCd = azimCd;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getHpr() {
		return hpr;
	}
	public void setHpr(String hpr) {
		this.hpr = hpr;
	}
	public String getEngyTramRate() {
		return engyTramRate;
	}
	public void setEngyTramRate(String engyTramRate) {
		this.engyTramRate = engyTramRate;
	}
	public String getHorzEmboss() {
		return horzEmboss;
	}
	public void setHorzEmboss(String horzEmboss) {
		this.horzEmboss = horzEmboss;
	}
	public String getVerticalityEmboss() {
		return verticalityEmboss;
	}
	public void setVerticalityEmboss(String verticalityEmboss) {
		this.verticalityEmboss = verticalityEmboss;
	}
	public String getGlssCd() {
		return glssCd;
	}
	public void setGlssCd(String glssCd) {
		this.glssCd = glssCd;
	}
	public String getGlssWfCd() {
		return glssWfCd;
	}
	public void setGlssWfCd(String glssWfCd) {
		this.glssWfCd = glssWfCd;
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
	public String getGlssEtc() {
		return glssEtc;
	}
	public void setGlssEtc(String glssEtc) {
		this.glssEtc = glssEtc;
	}
	public String getGlssWfEtc() {
		return glssWfEtc;
	}
	public void setGlssWfEtc(String glssWfEtc) {
		this.glssWfEtc = glssWfEtc;
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
		sbError.append("[건물정보][에너지성능 항목] 유효성 검증 오류\r\n");
		sbError.append("------------------------------------------------\r\n");
		
		/*건축부위명*/		
		if (StringUtil.len(bldPartNm) > 100) {
			sbError.append("건축부위명은 100자 이상 입력할수 없습니다.\r\n");			
			result = false;
		}		
		/*건축부위 코드*/
		if (StringUtil.len(bldPartCd) > 2) {
			sbError.append("건축부위 값이 잘못 되었습니다.\r\n");
			result = false;
		}
		/*범위코드*/
		if (StringUtil.len(azimCd) > 2) {
			sbError.append("범위 값이 잘못 되었습니다.\r\n");
			result = false;
		}		
		/*면적*/
		if (area.length() > 50) {
			sbError.append("면적은 50자 이상 입력할수 없습니다.\r\n");
			result = false;
		}		
		/*열관류율*/
		if (hpr.length() > 50) {
			sbError.append("열관류율은 50자 이상 입력할수 없습니다.\r\n");
			result = false;
		}				
		/*일사에너지 투과율*/
		if (engyTramRate.length() > 50) {
			sbError.append("일사에너지 투과율은 50자 이상 입력할수 없습니다.\r\n");
			result = false;
		}				
		/*수평차양각*/
		if (horzEmboss.length() > 50) {
			sbError.append("수평차양각은 50자 이상 입력할수 없습니다.\r\n");
			result = false;
		}		
		/*수직차양각*/
		if (verticalityEmboss.length() > 50) {
			sbError.append("수직차양각은 50자 이상 입력할수 없습니다.\r\n");
			result = false;
		}				
		/*창유리구성코드*/
		if (StringUtil.len(glssCd) > 2) {
			sbError.append("창유리구성 값이 잘못 되었습니다.\r\n");
			result = false;
		}
		/*창유리구성코드 기타*/
		if (StringUtil.len(glssEtc) > 100) {
			sbError.append("창유리구성 기타는 100자 이상 입력할수 없습니다.\r\n");
			result = false;
		}
		/*창호 프레임 종류*/
		if (StringUtil.len(glssWfCd) > 2) {
			sbError.append("창호 프레임 값이 잘못 되었습니다.\r\n");
			result = false;
		}
		/*창호 프레임 종류 기타*/
		if (StringUtil.len(glssWfEtc) > 100) {
			sbError.append("창호 프레임 기타는 100자 이상 입력할수 없습니다.\r\n");
			result = false;
		}
			
		return result;
	}
	
	public String toStringJson() {
        return ToStringBuilder.reflectionToString(this, ToStringStyle.JSON_STYLE);
    }  
	
	//객체 빈값 여부
	public boolean isEmpty() {
				
		int notEmptyCnt = 0;		
		
		if (!StringUtil.isEmpty(bldPartNm)) {
			notEmptyCnt++;
		}
		if (!StringUtil.isEmpty(bldPartCd)) {
			notEmptyCnt++;
		}
		if (!StringUtil.isEmpty(azimCd)) {
			notEmptyCnt++;
		}
		if (!StringUtil.isEmpty(area)) {
			notEmptyCnt++;
		}
		if (!StringUtil.isEmpty(hpr)) {
			notEmptyCnt++;
		}
		if (!StringUtil.isEmpty(engyTramRate)) {
			notEmptyCnt++;
		}
		if (!StringUtil.isEmpty(horzEmboss)) {
			notEmptyCnt++;
		}
		if (!StringUtil.isEmpty(verticalityEmboss)) {
			notEmptyCnt++;
		}
		if (!StringUtil.isEmpty(glssCd)) {
			notEmptyCnt++;
		}
		if (!StringUtil.isEmpty(glssEtc)) {
			notEmptyCnt++;
		}
		if (!StringUtil.isEmpty(glssWfCd)) {
			notEmptyCnt++;
		}
		if (!StringUtil.isEmpty(glssWfEtc)) {
			notEmptyCnt++;
		}
						
		if (notEmptyCnt > 0) {
			return false;
		}else {
			return true;
		}
	}	
}
