package sqisoft.com.bed.model;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import sqisoft.com.bed.comm.StringUtil;

/**
 * @Class Name : FacInterInfo.java
 * @Description : 실내단말기 정보 클래스
 * @Modification Information
 *
 * @author ywan
 * @since 5010. 11.04
 * @version 1.0
 * @see 
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
public class FacInterInfo {
	/*건물아이디*/
	private String bldId;
	/*번호*/
	private String no;
	/*기기명*/
	private String eqpNm;
	/*용량*/
	private String tmlCapa;
	/*팬동력*/
	private String tmlFanPower;
	/*대수*/
	private String tmlCnt;
	/*작성자아이디*/
	private String writManId;
	/*작성일*/
	private String writDtm;
	/*수정자아이디*/
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

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public String getEqpNm() {
		return eqpNm;
	}

	public void setEqpNm(String eqpNm) {
		this.eqpNm = eqpNm;
	}

	public String getTmlCapa() {
		return tmlCapa;
	}

	public void setTmlCapa(String tmlCapa) {
		this.tmlCapa = tmlCapa;
	}

	public String getTmlFanPower() {
		return tmlFanPower;
	}

	public void setTmlFanPower(String tmlFanPower) {
		this.tmlFanPower = tmlFanPower;
	}

	public String getTmlCnt() {
		return tmlCnt;
	}

	public void setTmlCnt(String tmlCnt) {
		this.tmlCnt = tmlCnt;
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
		sbError.append("[설비정보][실내단말기] 유효성 검증 오류\r\n");
		sbError.append("------------------------------------------------\r\n");
		
		/*기기명*/
		if (eqpNm.length() > 100) {
			sbError.append("기기명은 100자 이상 입력할수 없습니다.\r\n");			
			result = false;
		}
		/*용량*/
		if (tmlCapa.length() > 50) {
			sbError.append("용량(난방용량)은 50자 이상 입력할수 없습니다.\r\n");
			result = false;
		}					
		/*팬동력*/
		if (tmlFanPower.length() > 50) {
			sbError.append("팬동력은 50자 이상 입력할수 없습니다.\r\n");
			result = false;
		}		
		/*대수*/
		if (tmlCnt.length() > 50) {
			sbError.append("대수는 50자 이상 입력할수 없습니다.\r\n");
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
		
		/*기기명*/
		if (!StringUtil.isEmpty(eqpNm)) {
			notEmptyCnt++;
		}		
		/*용량*/
		if (!StringUtil.isEmpty(tmlCapa)) {
			notEmptyCnt++;
		}
		/*팬동력*/
		if (!StringUtil.isEmpty(tmlFanPower)) {
			notEmptyCnt++;
		}
		/*대수*/
		if (!StringUtil.isEmpty(tmlCnt)) {
			notEmptyCnt++;
		}
			
		if (notEmptyCnt > 0) {
			return false;
		}else {
			return true;
		}
	}
}
