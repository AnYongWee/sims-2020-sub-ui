package sqisoft.com.bed.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import sqisoft.com.bed.comm.CommHandlr;
import sqisoft.com.bed.model.CodeInfo;
import sqisoft.com.bed.model.SiDoInfo;
import sqisoft.com.bed.service.CodeService;

/**
 * @Class Name : CodeController
 * @Description : 코드 관리 클레스
 * @Modification Information
 * @author ywan
 * @since 2020. 01.16
 * @version 1.0
 * @see
 *
 */
@Controller
public class CodeController extends CommHandlr{
	@Resource(name="codeService")
	private CodeService codeService;
	
	/**
	 * 주소 구,군 정보 조회	 
	 * @param sidoNm - 시도명
	 * @return 
	 * @return  Map<String, Object>
	 * @exception Exception
	 */	
	@RequestMapping(value = "/code/getAddressByGunGuList.do",  method = RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object> getAddressByGunGu(@RequestParam(name="sidoNm", required = true) String sidoNm) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		List<SiDoInfo> list = codeService.selectAddressByGunGu(sidoNm);
		
		result.put("list", list);
		   
		return result;		
	}
	
	/**
	 * 코드 조회	 
	 * @param grpCodeId - 그룹코드
	 * @param codeExpl
	 * @return 
	 * @return  Map<String, Object>
	 * @exception Exception
	 */	
	@RequestMapping(value = "/code/getCodeList.do",  method = RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object> getCodeList(@RequestParam(name="grpCodeId", required = true) String grpCodeId, @RequestParam(name="codeExpl", required = true) String codeExpl) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		List<CodeInfo> list = codeService.selectCode(grpCodeId, codeExpl);
		
		result.put("list", list);
		   
		return result;		
	}
}
