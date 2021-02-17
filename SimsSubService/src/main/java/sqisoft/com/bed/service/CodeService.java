package sqisoft.com.bed.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;
import sqisoft.com.bed.comm.CommHandlr;
import sqisoft.com.bed.mapper.CodeMapper;
import sqisoft.com.bed.model.CodeInfo;
import sqisoft.com.bed.model.SiDoInfo;

@Service("codeService")
public class CodeService extends CommHandlr{
	
	@Resource(name="codeMapper")
	private CodeMapper codeMapper;
	
	/**
	 * 공통코드 리스트 조회.
	 * @param grpCodeId - 공통코드 그룹 아이디
	 * @return List<CodeInfo>
	 * @exception Exception
	 */	
 	public List<CodeInfo> selectCode(String grpCodeId) throws Exception{ 		 
 		Map<String, Object> param = new HashMap<String, Object>();
 		param.put("grpCodeId", grpCodeId);
 		param.put("codeExpl", "");
		return codeMapper.selectCode(param);
	}
 	
	/**
	 * 공통코드 리스트 조회.
	 * @param grpCodeId - 공통코드 그룹 아이디
	 * @return List<CodeInfo>
	 * @exception Exception
	 */	
 	public List<CodeInfo> selectCode(String grpCodeId, String codeExpl) throws Exception{ 		 
 		
 		//codeExpl 값이 없을 경우 의미 없는 값 설정
 		if (codeExpl == null || codeExpl.length() == 0) {
 			codeExpl = "-9999";
 		}
 		
 		Map<String, Object> param = new HashMap<String, Object>();
 		param.put("grpCodeId", grpCodeId);
 		param.put("codeExpl", codeExpl);
		return codeMapper.selectCode(param);
	}
 	
 	/**
	 * 코드값 코드 조회.
	 * @param codeVal - 공통코드 그룹 아이디
	 * @param grpCodeId - 공통코드 그룹 아이디
	 * @return String
	 * @exception Exception
	 */	
 	public String findCode(String grpCodeId, String codeVal) throws Exception{ 		 
 		
 		Map<String, Object> param = new HashMap<String, Object>();
 		param.put("grpCodeId", grpCodeId);
 		param.put("codeVal", codeVal);
 		
 		String code = codeMapper.findCode(param);
		return code == null ? "" : code;
	}
 	
 	/**
	 * 주소 시도 조회
	 * @return List<SiDoInfo>
	 * @exception Exception
	 */	
 	public List<SiDoInfo> selectAddressBySiDo() throws Exception{ 		 		
		return codeMapper.selectAddressBySiDo();
	}
 	
 	/**
	 * 주소 구군 조회
	 * @return List<SiDoInfo>
	 * @exception Exception
	 */	
 	public List<SiDoInfo> selectAddressByGunGu(String sidoNm) throws Exception{ 		 		
		return codeMapper.selectAddressByGunGu(sidoNm);
	}
 	
 	public String findCodeSido(String sidoNm, String sigunguNm) throws Exception{
 		String code = codeMapper.findCodeSido(sidoNm, sigunguNm);
		return code == null ? "" : code;
	}
 	
 	public String findCodeSigungu(String sidoNm, String sigunguNm) throws Exception{
 		String code = codeMapper.findCodeSigungu(sidoNm, sigunguNm);
		return code == null ? "" : code;
	}
}
