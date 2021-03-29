package sqisoft.com.mapper;

import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import sqisoft.com.model.CodeInfo;

@Mapper("codeMapper")
public interface CodeMapper {
	/*코드리스트 조회*/
	List<CodeInfo> selectCodeList(Map<String, Object> param) throws Exception;
}
