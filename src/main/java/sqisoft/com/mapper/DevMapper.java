package sqisoft.com.mapper;

import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import sqisoft.com.model.DevInfo;

@Mapper("devMapper")
public interface DevMapper {
	/*장비 리스트*/
	List<DevInfo> selectDevList(Map<String, Object> param) throws Exception;
}
