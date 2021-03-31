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
import sqisoft.com.model.GentMonthSumInfo;
import sqisoft.com.model.InvrtrInfo;
import sqisoft.com.service.InvrtrService;

@Controller
public class InvrtrController extends  CommHandlr{
	
	@Resource(name = "invrtrService")
	private InvrtrService invrtrService;
		
	/**
	 * 인버터 화면 이동
	 * @param model
	 * @return String
	 * @exception Exception
	 */
	@RequestMapping(value = "/invrtr.do", method = RequestMethod.GET)
	public String invrtrView(HttpSession session, Model model) throws Exception {
		model.addAttribute("list", invrtrService.selectInvrtrOprtList(getUserSiteList(session)));
		return "current/invrtr.tiles";
	}
	
	/**
	 * 인버터 현황 정보 조회
	 *
	 * @return Map
	 * @exception Exception
	 */	
	@RequestMapping(value = "/ajax/getInvrtrOprtList.do",  method = RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object> getSolarMonthSummary(HttpSession session) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		// 인버터 현황 정보 조회
		List<InvrtrInfo> list = invrtrService.selectInvrtrOprtList(getUserSiteList(session));
		
		result.put("list", list);
		   
		return result;		
	}
}
