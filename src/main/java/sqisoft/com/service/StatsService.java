package sqisoft.com.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import sqisoft.com.comm.DateUtil;
import sqisoft.com.mapper.StatsMapper;
import sqisoft.com.model.GentDaySumInfo;
import sqisoft.com.model.GentMonthSumInfo;
import sqisoft.com.model.GentTimeSumInfo;

@Service("statsService")
public class StatsService {
	
	@Resource(name="statsMapper")
	private StatsMapper statsMapper;
	
	/*시간별 발전량 통계*/
	public List<GentTimeSumInfo> selectGentTimeSum(List<Integer> sites, String startDate) throws Exception{
		
		List<GentTimeSumInfo> result = new ArrayList<GentTimeSumInfo>();
		
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("sites", sites);
		param.put("startDate", startDate);
		
		List<GentTimeSumInfo> list = statsMapper.selectGentTimeSum(param);
		
		//비어 있는 시간 정보 생성
		for(int i = 0; i < 24; i++) {
			
			String  hour = StringUtils.leftPad(String.valueOf(i), 2, "0") ;
			
			GentTimeSumInfo item = null;
			
			for(GentTimeSumInfo gentTimeSumInfo : list) {
				
				String targetHour = StringUtils.leftPad(gentTimeSumInfo.getTgtTime(), 2, "0");
				gentTimeSumInfo.setTgtTime(targetHour);
				
				if (targetHour.equals(hour)) {
					item = gentTimeSumInfo;
					break;
				}
			}
			
			if (item == null) {
				item = new GentTimeSumInfo();
				item.setTgtTime(hour);
				item.setGentQnt(0);
			}
			
			result.add(item);
		}
		
		return result;
	}
	
	/*일자별 발전량 통계*/
	public List<GentDaySumInfo> selectGentDaySum(List<Integer> sites, String startDate, String endDate) throws Exception{
		
		List<GentDaySumInfo> result = new ArrayList<GentDaySumInfo>();
		
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("sites", sites);
		param.put("startDate", startDate);
		param.put("endDate", endDate);
		
		List<GentDaySumInfo> list = statsMapper.selectGentDaySum(param);
		
		SimpleDateFormat dtFormat = new SimpleDateFormat("yyyyMMdd");
		
		// String 타입을 Date 타입으로 변환 Date 
		Date stDate = dtFormat.parse(startDate);
		Date edDate = dtFormat.parse(endDate);
		
		Calendar cal = Calendar.getInstance();
		cal.setTime(stDate);
		
		while(true) {
			
			stDate = new Date(cal.getTimeInMillis()); 
			
			if (DateUtil.dateBetweenDay(edDate, stDate) < 0) {
				break;
			}
			
			String date = dtFormat.format(stDate);
			
			GentDaySumInfo item = null;
			
			for(GentDaySumInfo gentDaySumInfo : list) {
				String targetDate = gentDaySumInfo.getTgtDate();
				if(targetDate.equals(date)) {
					item = gentDaySumInfo;
					break;
				}
			}
			
			if (item == null) {
				item = new GentDaySumInfo();
				item.setTgtDate(date);
				item.setTdayGentQnt(0);
				item.setTdayGentTime(0);
				item.setInstlCpct(0);
			}
			
			result.add(item);
			
			cal.add(Calendar.DATE, 1);
		}
		
		return result;
	}
	
	/*월별 발전량 통계*/
	public List<GentMonthSumInfo> selectGentMonthSum(List<Integer> sites, String startDate, String endDate) throws Exception{
		
		List<GentMonthSumInfo> result = new ArrayList<GentMonthSumInfo>();
		
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("sites", sites);
		param.put("startDate", startDate);
		param.put("endDate", endDate);
		
		List<GentMonthSumInfo> list = statsMapper.selectGentMonthSum(param);
		
		SimpleDateFormat dtFormat = new SimpleDateFormat("yyyyMM");
		
		// String 타입을 Date 타입으로 변환 Date 
		Date stDate = dtFormat.parse(startDate);
		Date edDate = dtFormat.parse(endDate);
		
		Calendar cal = Calendar.getInstance();
		cal.setTime(stDate);
		
		while(true) {
			
			stDate = new Date(cal.getTimeInMillis()); 
			
			if (DateUtil.getMonthsDifference(edDate, stDate) < 0) {
				break;
			}
			
			String date = dtFormat.format(stDate);
			
			GentMonthSumInfo item = null;
			
			for(GentMonthSumInfo gentMonthSumInfo : list) {
				String targetDate = gentMonthSumInfo.getTgtYm();
				if(targetDate.equals(date)) {
					item = gentMonthSumInfo;
					break;
				}
			}
			
			if (item == null) {
				item = new GentMonthSumInfo();
				item.setTgtYm(date);
				item.setMonGentQnt(0);
			}
			
			result.add(item);
			
			cal.add(Calendar.MONTH, 1);
		}
		
		return result;
	}	
}


