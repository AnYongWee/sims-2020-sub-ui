package sqisoft.com.mapper;

import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import sqisoft.com.model.GentDaySumInfo;
import sqisoft.com.model.GentMonthSumInfo;
import sqisoft.com.model.GentTimeSumInfo;

@Mapper("statsMapper")
public interface StatsMapper {
	
	/*시간별 발전량 통계*/
	List<GentTimeSumInfo> selectGentTimeSum(Map<String, Object> param) throws Exception;
	
	/*시간별 발전량 최대,최소 통계*/
	List<GentTimeSumInfo> selectGentTimeMinMaxSum(Map<String, Object> param) throws Exception;
	
	/*일별 발전량 통계*/
	List<GentDaySumInfo> selectGentDaySum(Map<String, Object> param) throws Exception;
	
	/*일별 발전량 최대,최소 통계*/
	List<GentDaySumInfo> selectGentDayMinMaxSum(Map<String, Object> param) throws Exception;
	
	/*월별 발전량 통계*/
	List<GentMonthSumInfo> selectGentMonthSum(Map<String, Object> param) throws Exception;
	
	/*월별 발전량 최대,최소 통계*/
	List<GentMonthSumInfo> selectGentMonthMinMaxSum(Map<String, Object> param) throws Exception;
}
