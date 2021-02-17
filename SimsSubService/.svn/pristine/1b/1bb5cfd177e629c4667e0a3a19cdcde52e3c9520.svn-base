package sqisoft.com.bed.model;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import sqisoft.com.bed.comm.StringUtil;

/**
 * @Class Name : FacHeatInfo.java
 * @Description : 난방설비 정보 클래스
 * @Modification Information
 *
 * @author ywan
 * @since 5010. 11.04
 * @version 1.0
 * @see 
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
public class FacHeatInfo {
	/*건축물 ID*/
	private String bldId;
	/*난방설비 구분코드*/
	private String hetgPrvsCd;
	/*번호*/
	private String no;
	/*운영방식*/
	private String hetgOprtrCd;
	/*난방 구분*/
	private String hetgWthtCd;
	/*난방방식*/
	private String hetgCd;
	/*난방종류*/
	private String hetgKindCd;
	/*기타난방종류*/
	private String hetgKindEtc;
	/*난방용량*/
	private String hetgCapa;
	/*난방연료*/
	private String hetgFuelCd;
	/*기타 난방연료*/
	private String hetgFuelEtc;
	/*기기명*/
	private String eqpNm;
	/*기기대수*/
	private String eqpCnt;
	/*효율(%)*/
	private String efic;
	/*효율(COP)*/
	private String cop;
	/*연결된신재생*/
	private String cnnRege;
	/*펌프 동력합계*/
	private String totPumpPower;
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
	public String getHetgPrvsCd() {
		return hetgPrvsCd;
	}
	public void setHetgPrvsCd(String hetgPrvsCd) {
		this.hetgPrvsCd = hetgPrvsCd;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getHetgOprtrCd() {
		return hetgOprtrCd;
	}
	public void setHetgOprtrCd(String hetgOprtrCd) {
		this.hetgOprtrCd = hetgOprtrCd;
	}
	public String getHetgWthtCd() {
		return hetgWthtCd;
	}
	public void setHetgWthtCd(String hetgWthtCd) {
		this.hetgWthtCd = hetgWthtCd;
	}
	public String getHetgCd() {
		return hetgCd;
	}
	public void setHetgCd(String hetgCd) {
		this.hetgCd = hetgCd;
	}
	public String getHetgKindCd() {
		return hetgKindCd;
	}
	public void setHetgKindCd(String hetgKindCd) {
		this.hetgKindCd = hetgKindCd;
	}
	public String getHetgCapa() {
		return hetgCapa;
	}
	public void setHetgCapa(String hetgCapa) {
		this.hetgCapa = hetgCapa;
	}
	public String getHetgFuelCd() {
		return hetgFuelCd;
	}
	public void setHetgFuelCd(String hetgFuelCd) {
		this.hetgFuelCd = hetgFuelCd;
	}
	public String getEqpNm() {
		return eqpNm;
	}
	public void setEqpNm(String eqpNm) {
		this.eqpNm = eqpNm;
	}
	public String getEqpCnt() {
		return eqpCnt;
	}
	public void setEqpCnt(String eqpCnt) {
		this.eqpCnt = eqpCnt;
	}
	public String getEfic() {
		return efic;
	}
	public void setEfic(String efic) {
		this.efic = efic;
	}
	public String getCop() {
		return cop;
	}
	public void setCop(String cop) {
		this.cop = cop;
	}
	public String getCnnRege() {
		return cnnRege;
	}
	public void setCnnRege(String cnnRege) {
		this.cnnRege = cnnRege;
	}
	public String getTotPumpPower() {
		return totPumpPower;
	}
	public void setTotPumpPower(String totPumpPower) {
		this.totPumpPower = totPumpPower;
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
	public String getHetgKindEtc() {
		return hetgKindEtc;
	}
	public void setHetgKindEtc(String hetgKindEtc) {
		this.hetgKindEtc = hetgKindEtc;
	}
	public String getHetgFuelEtc() {
		return hetgFuelEtc;
	}
	public void setHetgFuelEtc(String hetgFuelEtc) {
		this.hetgFuelEtc = hetgFuelEtc;
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
		sbError.append("[설비정보][난방설비] 유효성 검증 오류\r\n");
		sbError.append("------------------------------------------------\r\n");
		
		/*난방설비 구분코드*/
		if (hetgPrvsCd.length() > 2) {
			sbError.append("구분 값이 잘못 되었습니다.\r\n");
			result = false;
		}			
		/*운영방식*/
		if (hetgOprtrCd.length() > 2) {
			sbError.append("운영 방식 값이 잘못 되었습니다.\r\n");
			result = false;
		}		
		/*난방 구분*/
		if (hetgWthtCd.length() > 2) {
			sbError.append("난방∙급탕 구분 값이 잘못 되었습니다.\r\n");
			result = false;
		}		
		/*난방방식*/
		if (hetgCd.length() > 2) {
			sbError.append("난방방식 값이 잘못 되었습니다.\r\n");
			result = false;
		}		
		/*난방종류*/
		if (hetgKindCd.length() > 2) {
			sbError.append("종류 값이 잘못 되었습니다.\r\n");
			result = false;
		}
		/*기타 난방종류*/
		if (hetgKindEtc.length() > 100) {
			sbError.append("기타 종류는 100자 이상 입력할수 없습니다.\r\n");			
			result = false;
		}
		/*난방용량*/
		if (hetgCapa.length() > 50) {
			sbError.append("용량은 50자 이상 입력할수 없습니다.\r\n");
			result = false;
		}
		/*난방연료*/
		if (hetgFuelCd.length() > 2) {
			sbError.append("연료 값이 잘못 되었습니다.\r\n");
			result = false;
		}
		/*기타 난방연료*/
		if (hetgFuelEtc.length() > 100) {
			sbError.append("기타 연료는 100자 이상 입력할수 없습니다.\r\n");			
			result = false;
		}
		/*기기명*/
		if (eqpNm.length() > 100) {
			sbError.append("기기명은 100자 이상 입력할수 없습니다.\r\n");			
			result = false;
		}
		/*기기대수*/
		if (eqpCnt.length() > 50) {
			sbError.append("기기대수는 50자 이상 입력할수 없습니다.\r\n");
			result = false;
		}			
		/*효율(%)*/
		if (efic.length() > 50) {
			sbError.append("효율(%)는 50자 이상 입력할수 없습니다.\r\n");
			result = false;
		}				
		/*효율(COP)*/
		if (cop.length() > 50) {
			sbError.append("효율(COP)는 50자 이상 입력할수 없습니다.\r\n");
			result = false;
		}				
		/*연결된신재생*/
		if (cnnRege.length() > 50) {
			sbError.append("연결된신재생은 50자 이상 입력할수 없습니다.\r\n");
			result = false;
		}		
		/*펌프 동력합계*/
		if (totPumpPower.length() > 50) {
			sbError.append("펌프 동력합계(KW)는 50자 이상 입력할수 없습니다.\r\n");
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
		
		/*운영방식*/
		if (!StringUtil.isEmpty(hetgOprtrCd)) {
			notEmptyCnt++;
		}
		/*난방 구분*/
		if (!StringUtil.isEmpty(hetgWthtCd)) {
			notEmptyCnt++;
		}
		/*난방방식*/
		if (!StringUtil.isEmpty(hetgCd)) {
			notEmptyCnt++;
		}		
		/*난방종류*/
		if (!StringUtil.isEmpty(hetgKindCd)) {
			notEmptyCnt++;
		}
		/*기타 난방종류*/
		if (!StringUtil.isEmpty(hetgKindEtc)) {
			notEmptyCnt++;
		}
		/*난방용량*/
		if (!StringUtil.isEmpty(hetgCapa)) {
			notEmptyCnt++;
		}
		/*난방연료*/
		if (!StringUtil.isEmpty(hetgFuelCd)) {
			notEmptyCnt++;
		}
		/*기타 연료*/
		if (!StringUtil.isEmpty(hetgFuelEtc)) {
			notEmptyCnt++;
		}
		/*기기명*/
		if (!StringUtil.isEmpty(eqpNm)) {
			notEmptyCnt++;
		}
		/*기기대수*/
		if (!StringUtil.isEmpty(eqpCnt)) {
			notEmptyCnt++;
		}
		/*효율(%)*/
		if (!StringUtil.isEmpty(efic)) {
			notEmptyCnt++;
		}
		/*효율(COP)*/
		if (!StringUtil.isEmpty(cop)) {
			notEmptyCnt++;
		}
		/*연결된신재생*/
		if (!StringUtil.isEmpty(cnnRege)) {
			notEmptyCnt++;
		}
		/*펌프 동력합계*/
		if (!StringUtil.isEmpty(totPumpPower)) {
			notEmptyCnt++;
		}
		
		if (notEmptyCnt > 0) {
			return false;
		}else {
			return true;
		}
	}
}
