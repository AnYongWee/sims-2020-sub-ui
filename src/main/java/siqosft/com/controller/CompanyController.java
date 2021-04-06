package siqosft.com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import sqisoft.com.comm.CommHandlr;
import sqisoft.com.model.CompanyInfo;
import sqisoft.com.model.EvtHstInfo;
import sqisoft.com.service.CodeService;
import sqisoft.com.service.CompanyService;
import sqisoft.com.service.EvtService;

/**
 * @Class Name : CompanyController
 * @Description : 고객사 관리 클래스
 * @Modification Information
 * @author ywan
 * @since 2021. 03.17
 * @version 1.0
 * @see
 *
 */
@Controller
public class CompanyController extends CommHandlr{
	private static final Logger logger = LoggerFactory.getLogger(CompanyController.class);
		
	@Resource(name = "companyService")
	private CompanyService companyService;
	
	@Resource(name = "codeService")
	private CodeService codeService;
	
	/**
	 * 고객사관리 화면 이동
	 * @param model
	 * @return String
	 * @exception Exception
	 */
	@RequestMapping(value = "/admin/company.do", method = RequestMethod.GET)
	public String companyView(Model model) throws Exception {
		
		//고객유형 코드 조회
		model.addAttribute("custTypeCodes", codeService.selectCodeList("CUST_TYPE_CD"));		
				
		return "admin/company.tiles";
	}
	
	/**
	 * 경보이력 데이터 조회
	 *
	 * @param searchCustNm - 고객사명
	 * @param searchBizNo - 사업자번호
	 * @param searchCntPsnNm - 담당자명
	 * @param searchCustTypeCd - 고객유형코드
	 * @param startDate - 시작일자
	 * @param endDate - 종료일자
	 * @return 
	 * @return Map
	 * @exception Exception
	 */	
	@RequestMapping(value = "/ajax/getCompanyList.do",  method = RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object> getCompanyList(HttpSession session,
															@RequestParam(name="start", required = false) String start,
															@RequestParam(name="length", required = false) String length,
															@RequestParam(name="order[0][column]", required = false) String ordNo,
															@RequestParam(name="order[0][dir]", required = false) String sort,
															@RequestParam(name="searchCustNm", required = true) String custNm,
															@RequestParam(name="searchBizNo", required = true) String bizNo,
															@RequestParam(name="searchCntPsnNm", required = true) String cntPsnNm,
															@RequestParam(name="searchCustTypeCd", required = true) String custTypeCd,
															@RequestParam(name="startDate", required = true) String startDate,
															@RequestParam(name="endDate", required = true) String endDate) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		// 고객사 리스트
		List<CompanyInfo> list = companyService.selectCompanyList(getUserSiteList(session), Integer.valueOf(start), Integer.valueOf(length), ordNo, sort, custNm, bizNo, cntPsnNm, custTypeCd, startDate, endDate);
		
		// 전체 레코드 수		
		long totalCnt = 0;
		if (list != null && list.size() > 0) {
			totalCnt = list.get(0).getTotalCnt();	
		}
				
		result.put("list", list);
		result.put("iTotalRecords", totalCnt);
		result.put("iTotalDisplayRecords", totalCnt);
		   
		return result;		
	}
}
