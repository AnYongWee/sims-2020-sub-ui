package sqisoft.com.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import sqisoft.com.comm.CommHandlr;
import sqisoft.com.mapper.CodeMapper;
import sqisoft.com.model.CodeInfo;

@Service("codeService")
public class CodeService extends CommHandlr{
	@Resource(name="codeMapper")
	private CodeMapper codeMapper;
	
	/*공통코드 리스트 조회*/
	public List<CodeInfo> selectCodeList(String grpCd) throws Exception{
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("grpCd", grpCd);
		
		return codeMapper.selectCodeList(param);
	}
}
