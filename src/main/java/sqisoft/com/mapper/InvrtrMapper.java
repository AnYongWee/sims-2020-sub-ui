package sqisoft.com.mapper;

import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import sqisoft.com.model.InvrtrInfo;

@Mapper("invrtrMapper")
public interface InvrtrMapper {
	/*인버터 현황 리스트*/
	List<InvrtrInfo> selectInvrtrOprtList(Map<String, Object> param) throws Exception;
}
