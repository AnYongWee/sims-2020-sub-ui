package sqisoft.com.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import sqisoft.com.comm.CommHandlr;
import sqisoft.com.mapper.InvrtrMapper;
import sqisoft.com.model.InvrtrInfo;

@Service("invrtrService")
public class InvrtrService extends CommHandlr{
	
	@Resource(name="invrtrMapper")
	private InvrtrMapper invrtrMapper;
	
	/*인버터현황 조회*/
	public List<InvrtrInfo> selectInvrtrOprtList(List<Integer> sites) throws Exception{
		
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("sites", sites);
		
		return invrtrMapper.selectInvrtrOprtList(param);
	}
}
