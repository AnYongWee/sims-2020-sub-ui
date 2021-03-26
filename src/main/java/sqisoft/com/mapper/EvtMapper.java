package sqisoft.com.mapper;

import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import sqisoft.com.model.EvtHstInfo;

@Mapper("evtMapper")
public interface EvtMapper {
	/*경보이력 리스트*/
	List<EvtHstInfo> selectEvtHstList(Map<String, Object> param) throws Exception;
}
