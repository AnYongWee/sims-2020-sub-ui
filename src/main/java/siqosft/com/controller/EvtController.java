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

import sqisoft.com.comm.CommHandlr;
import sqisoft.com.model.EvtHstInfo;
import sqisoft.com.model.GentTimeSumInfo;
import sqisoft.com.service.AuthService;
import sqisoft.com.service.CodeService;
import sqisoft.com.service.EvtService;

/**
 * @Class Name : EvtController
 * @Description : 경보이력 관리 클래스
 * @Modification Information
 * @author ywan
 * @since 2021. 03.26
 * @version 1.0
 * @see
 *
 */
@Controller
public class EvtController extends  CommHandlr{
	
	@Resource(name = "evtService")
	private EvtService evtService;
	
	@Resource(name = "codeService")
	private CodeService codeService;
	
	/**
	 * 경보이력 화면 이동
	 * @param model
	 * @return String
	 * @exception Exception
	 */
	@RequestMapping(value = "/alarm.do", method = RequestMethod.GET)
	public String solarView(Model model) throws Exception {		
		
		//이벤트 등급 코드 조회
		model.addAttribute("evtDivCodes", codeService.selectCodeList("EVT_DIV_CD"));
		//이벤트 상태 코드 조회
		model.addAttribute("evtStsCodes", codeService.selectCodeList("EVT_STS_CD"));		
		
		return "evt/alarm.tiles";
	}
	
	/**
	 * 경보이력 데이터 조회
	 *
	 * @param startDate - 시작일자
	 * @param endDate - 종료일자
	 * @return 
	 * @return Map
	 * @exception Exception
	 */	
	@RequestMapping(value = "/ajax/getEvtHstList.do",  method = RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object> getEvtHstList(HttpSession session,
															@RequestParam(name="start", required = false) String start,
															@RequestParam(name="length", required = false) String length,
															@RequestParam(name="order[0][column]", required = false) String ordNo,
															@RequestParam(name="order[0][dir]", required = false) String sort,						
															@RequestParam(name="startDate", required = true) String startDate,
															@RequestParam(name="endDate", required = true) String endDate) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		// 경보이력 데이터 조회
		List<EvtHstInfo> list = evtService.selectEvtHstList(getUserSiteList(session), Integer.valueOf(start), Integer.valueOf(length), ordNo, sort,  startDate, endDate);
		
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
