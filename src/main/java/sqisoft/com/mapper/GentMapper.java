package sqisoft.com.mapper;

import java.util.Map;
import egovframework.rte.psl.dataaccess.mapper.Mapper;
import sqisoft.com.model.GentInfo;

@Mapper("gentMapper")
public interface GentMapper {
	
	/*고객사 발전 정보*/
	GentInfo selectCompanyGentInfo(Map<String, Object> param) throws Exception;
}
