package sqisoft.com.service;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import sqisoft.com.comm.CommHandlr;
import sqisoft.com.mapper.GentMapper;
import sqisoft.com.model.GentInfo;

@Service("gentService")
public class GentService extends CommHandlr{
	
	@Resource(name="gentMapper")
	private GentMapper gentMapper;
	
	/*고객사 발전 정보 조회*/
	public GentInfo selectCompanyInfo(String custSeq) throws Exception{	
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("custSeq", custSeq);					
		return gentMapper.selectCompanyGentInfo(param);
	}
}
