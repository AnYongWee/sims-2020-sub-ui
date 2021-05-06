package siqosft.com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import sqisoft.com.comm.CommConst;
import sqisoft.com.comm.CommHandlr;
import sqisoft.com.comm.DateUtil;
import sqisoft.com.model.GentInfo;
import sqisoft.com.model.SiteGentInfo;
import sqisoft.com.model.UsrInfo;
import sqisoft.com.service.GentService;

@Controller
public class GentController extends  CommHandlr{

	@Resource(name = "gentService")
	private GentService gentService;
	
	/**
	 * 고객사 발전 정보 조회
	 *
	 * @return Map
	 * @exception Exception
	 */	
	@RequestMapping(value = "/ajax/getCompanyGentInfo.do",  method = RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object> getCompanyGentInfo(HttpSession session) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		String custSeq = "";
		
		//관리자 계정의 경우 전체 고객사의 발전 정보를 조회 할 수 있도록 처리
		if (!isAdmin(session)) {
			UsrInfo usrInfo = getUserId(session);
			custSeq = String.valueOf(usrInfo.getCustSeq());
		}
		
		// 고객사 발전 정보 조회
		GentInfo info = gentService.selectCompanyInfo(custSeq);
						
		result.put("info", info);
		   
		return resultMap(result, CommConst.COMM_SUCCESS, "");		
	}
	
	/**
	 * 사이트 발전량 리스트 top 10 조회
	 *
	 * @return Map
	 * @exception Exception
	 */	
	@RequestMapping(value = "/ajax/getSiteGentTopList.do",  method = RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object> getSiteGentTopList(HttpSession session) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		// 사이트 발전량 정보 조회
		String nowDate = DateUtil.getDateString("Asia/Seoul", "yyyyMMdd");
		
		String custSeq = "";
		
		//관리자 계정의 경우 전체 고객사의 발전 정보를 조회 할 수 있도록 처리
		if (!isAdmin(session)) {
			UsrInfo usrInfo = getUserId(session);
			custSeq = String.valueOf(usrInfo.getCustSeq());
		}
		
		List<SiteGentInfo> list = gentService.selectSiteGentTopList(custSeq, nowDate);
						
		result.put("list", list);
		   
		return resultMap(result, CommConst.COMM_SUCCESS, "");		
	}
	
	/**
	 * 사이트 발전량 정보
	 *
	 * @return Map
	 * @exception Exception
	 */	
	@RequestMapping(value = "/ajax/getSiteGentInfo.do",  method = RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object> getSiteGentTopList(HttpSession session, @RequestParam(name="siteSeq", required = false) String siteSeq) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();		
		
		SiteGentInfo info = gentService.selectSiteGentInfo(siteSeq);
						
		result.put("info", info);
		   
		return resultMap(result, CommConst.COMM_SUCCESS, "");		
	}
}
