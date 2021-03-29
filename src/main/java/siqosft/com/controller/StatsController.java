package siqosft.com.controller;

import java.util.ArrayList;
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
import sqisoft.com.model.GentDaySumInfo;
import sqisoft.com.model.GentMonthSumInfo;
import sqisoft.com.model.GentTimeSumInfo;
import sqisoft.com.service.StatsService;

/**
 * @Class Name : StatsController
 * @Description : 통계 클래스
 * @Modification Information
 * @author ywan
 * @since 2021. 03.23
 * @version 1.0
 * @see
 *
 */
@Controller
public class StatsController extends  CommHandlr{
	
	@Resource(name = "statsService")
	private StatsService statsService;
	
	/**
	 * 태양광 발전 통계 화면 이동
	 * @param model
	 * @return String
	 * @exception Exception
	 */
	@RequestMapping(value = "/stats/solar.do", method = RequestMethod.GET)
	public String solarView(Model model) throws Exception {
		return "status/solar.tiles";
	}
	
	/**
	 * 시간별 태양광 발전량 그래프 정보 조회
	 *
	 * @param startDate - 시작일자
	 * @return 
	 * @return Map
	 * @exception Exception
	 */	
	@RequestMapping(value = "/ajax/stats/getSolarHourSummary.do",  method = RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object> getSolarHourSummary(HttpSession session, @RequestParam(name="startDate", required = true) String startDate) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		// 발전량 정보 조회
		List<GentTimeSumInfo> genList = statsService.selectGentTimeSum(getUserSiteList(session), startDate);
		
		// 최대, 최소 발전량 정보 조회
		List<GentTimeSumInfo> genRanges = statsService.selectGentTimeMinMaxSum(getUserSiteList(session), startDate);
		
		// 일사량 정보 조회 to do..		
		
		result.put("genList", genList);
		result.put("genRanges", genRanges);
		   
		return result;		
	}
	
	/**
	 * 일별 태양광 발전량 그래프 정보 조회
	 *
	 * @param startDate - 시작일자
	 * @param endDate - 종료일자
	 * @return 
	 * @return Map
	 * @exception Exception
	 */	
	@RequestMapping(value = "/ajax/stats/getSolarDaySummary.do",  method = RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object> getSolarDaySummary(HttpSession session, @RequestParam(name="startDate", required = true) String startDate, @RequestParam(name="endDate", required = true) String endDate) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		// 발전량 정보 조회
		List<GentDaySumInfo> genList = statsService.selectGentDaySum(getUserSiteList(session), startDate, endDate);
		
		// 일사량 정보 조회 to do..		
		
		result.put("genList", genList);		
		   
		return result;		
	}
	
	/**
	 * 월별 태양광 발전량 그래프 정보 조회
	 *
	 * @param startDate - 시작일자
	 * @param endDate - 종료일자
	 * @return 
	 * @return Map
	 * @exception Exception
	 */	
	@RequestMapping(value = "/ajax/stats/getSolarMonthSummary.do",  method = RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object> getSolarMonthSummary(HttpSession session, @RequestParam(name="startDate", required = true) String startDate, @RequestParam(name="endDate", required = true) String endDate) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		// 발전량 정보 조회
		List<GentMonthSumInfo> genList = statsService.selectGentMonthSum(getUserSiteList(session), startDate, endDate);
		
		// 최대, 최소 발전량 정보 조회		
		List<GentMonthSumInfo> genRanges = statsService.selectGentMonthMinMaxSum(genList, getUserSiteList(session), startDate, endDate, 2);
		
		// 일사량 정보 조회 to do..		
		
		result.put("genList", genList);
		result.put("genRanges", genRanges);
		   
		return result;		
	}
}
