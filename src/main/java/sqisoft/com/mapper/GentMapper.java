package sqisoft.com.mapper;

import java.util.List;
import java.util.Map;
import egovframework.rte.psl.dataaccess.mapper.Mapper;
import sqisoft.com.model.GentInfo;
import sqisoft.com.model.SiteGentInfo;

@Mapper("gentMapper")
public interface GentMapper {
	
	/*고객사 발전 정보*/
	GentInfo selectCompanyGentInfo(Map<String, Object> param) throws Exception;
	
	/*사이트 발전량 리스트 top 10*/
	List<SiteGentInfo> selectSiteGentTopList(Map<String, Object> param) throws Exception;
	
	/*사이트 발전량 정보*/
	SiteGentInfo selectSiteGentInfo(Map<String, Object> param) throws Exception;
}
