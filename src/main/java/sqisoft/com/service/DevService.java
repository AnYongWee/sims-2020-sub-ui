package sqisoft.com.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import sqisoft.com.comm.CommHandlr;
import sqisoft.com.mapper.DevMapper;
import sqisoft.com.model.DevInfo;

@Service("devService")
public class DevService extends CommHandlr{
	@Resource(name="devMapper")
	private DevMapper devMapper;
	
	/*장비 리스트 조회*/
	public List<DevInfo> selectDevList(List<Integer> sites) throws Exception{
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("sites", sites);
		
		return devMapper.selectDevList(param);
	}
}
