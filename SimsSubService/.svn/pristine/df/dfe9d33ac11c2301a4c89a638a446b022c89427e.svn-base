package sqisoft.com.bed.model;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import sqisoft.com.bed.comm.StringUtil;

/**
 * @Class Name : DriveTimeInfo.java
 * @Description : 운영 정보 클래스
 * @Modification Information
 *
 * @author ywan
 * @since 2010. 11.04
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
public class BookBuildInfo {
	/*건물번호*/
	private String bldId;
	/*구분*/
	private String divCd;
	/*도서보유여부*/
	private String bookOwnYn;
	/*확인정보 및 비고*/
	private String confirmInfo;
	/*도서 미보유시 참고자료*/
	private String referData;
	
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

    public String getDivCd() {
        return divCd;
    }

    public void setDivCd(String divCd) {
        this.divCd = divCd;
    }

    public String getBookOwnYn() {
        return bookOwnYn;
    }

    public void setBookOwnYn(String bookOwnYn) {
        this.bookOwnYn = bookOwnYn;
    }

    public String getConfirmInfo() {
        return confirmInfo;
    }

    public void setConfirmInfo(String confirmInfo) {
        this.confirmInfo = confirmInfo;
    }

    public String getReferData() {
        return referData;
    }

    public void setReferData(String referData) {
        this.referData = referData;
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
  		sbError.append("[현장도서] 유효성 검증 오류\r\n");
  		sbError.append("------------------------------------------------\r\n");
  		
  		/*난방설비 구분코드*/
  		if (divCd.length() > 2) {
  			sbError.append("구분 값이 잘못 되었습니다.\r\n");
  			result = false;
  		}			
  		/*도서보유여부*/
  		if (bookOwnYn.length() > 1) {
  			sbError.append("도서보유여부 값이 잘못 되었습니다.\r\n");
  			result = false;
  		}		
  		/*확인정보 및 비고*/
  		if (confirmInfo.length() > 1024) {
  			sbError.append("확인정보 및 비고 는 1024자 이상 입력할수 없습니다.\r\n");
  			result = false;
  		}		
  		/*도서 미보유시 참고자료*/
  		if (referData.length() > 1024) {
  			sbError.append("확인정보 및 비고 는 1024자 이상 입력할수 없습니다.\r\n");
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
  		
  		/*구분*/
  		if (!StringUtil.isEmpty(divCd)) {
  			notEmptyCnt++;
  		}
  		/*도서보유여부*/
  		if (!StringUtil.isEmpty(bookOwnYn)) {
  			notEmptyCnt++;
  		}
  		/*확인정보 및 비고*/
  		if (!StringUtil.isEmpty(confirmInfo)) {
  			notEmptyCnt++;
  		}		
  		/*도서 미보유시 참고자료*/
  		if (!StringUtil.isEmpty(referData)) {
  			notEmptyCnt++;
  		}
  		
  		if (notEmptyCnt > 0) {
  			return false;
  		}else {
  			return true;
  		}
  	}
}
