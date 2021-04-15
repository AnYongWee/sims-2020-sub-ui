package siqosft.com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import sqisoft.com.comm.CommConst;
import sqisoft.com.comm.CommHandlr;
import sqisoft.com.model.CompanyInfo;
import sqisoft.com.model.SiteInfo;
import sqisoft.com.service.CodeService;
import sqisoft.com.service.CompanyService;
import sqisoft.com.service.SiteService;

@Controller
public class SiteController extends CommHandlr{
	
	@Resource(name = "siteService")
	private SiteService siteService;
	
	@Resource(name = "companyService")
	private CompanyService companyService;
	
	@Resource(name = "codeService")
	private CodeService codeService;
	
	/**
	 * 사이트 관리 화면 이동
	 * @param model
	 * @return String
	 * @exception Exception
	 */
	@RequestMapping(value = "/site.do", method = RequestMethod.GET)
	public String siteView(HttpSession session, Model model) throws Exception {
		
		//고객사 정보 조회
		model.addAttribute("custCodes", companyService.selectCompanyList(isAdmin(session), getUserSiteList(session), 0, 9990, "7", "desc", null, null, null, null, null, null));
		
		//연동상태 코드 조회
		model.addAttribute("connStsCodes", codeService.selectCodeList("CONN_STS_CD"));
		
		//연동유형 코드 조회
		model.addAttribute("connTypeCodes", codeService.selectCodeList("CONN_TYPE_CD"));
		
		//사업유형 코드 조회
		model.addAttribute("bizTypeCodes", codeService.selectCodeList("BIZ_TYPE_CD"));
				
		return "admin/site.tiles";
	}
	
	/**
	 * 사이트 리스트 조회
	 *
	 * @return Map
	 * @exception Exception
	 */	
	@RequestMapping(value = "/ajax/getSiteList.do",  method = RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object> getSiteList(HttpSession session,
															@RequestParam(name="start", required = false) String start,
															@RequestParam(name="length", required = false) String length,
															@RequestParam(name="order[0][column]", required = false) String ordNo,
															@RequestParam(name="order[0][dir]", required = false) String sort,
															@RequestParam(name="searchCustSeq", required = false) String custSeq,
															@RequestParam(name="searchSiteNm", required = false) String siteNm,
															@RequestParam(name="searchConnStsCd", required = false) String connStsCd,
															@RequestParam(name="searchConnTypeCd", required = false) String connTypeCd,
															@RequestParam(name="searchBizTypeCd", required = false) String bizTypeCd,
															@RequestParam(name="startDate", required = false) String startDate,
															@RequestParam(name="endDate", required = false) String endDate) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();

		// 고객사 리스트
		List<SiteInfo> list = siteService.selectSiteList(getUserSiteList(session), Integer.valueOf(start), Integer.valueOf(length), ordNo, sort, custSeq, siteNm, connStsCd, connTypeCd, bizTypeCd, startDate, endDate);
		
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
	
	/**
	 * 사이트 정보 조회
	 *
	 * @return Map
	 * @exception Exception
	 */	
	@RequestMapping(value = "/ajax/getSiteInfo.do",  method = RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object> getSiteInfo(HttpSession session, @RequestParam(name="siteSeq", required = true) String siteSeq) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		// 사이트 정보 조회
		SiteInfo info = siteService.selectSiteInfo(siteSeq);
						
		result.put("info", info);
		   
		return resultMap(result, CommConst.COMM_SUCCESS, "");		
	}
}
