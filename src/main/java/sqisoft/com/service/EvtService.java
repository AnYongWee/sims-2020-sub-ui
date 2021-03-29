package sqisoft.com.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import sqisoft.com.mapper.EvtMapper;
import sqisoft.com.model.EvtHstInfo;

@Service("evtService")
public class EvtService extends EgovAbstractServiceImpl{

	@Resource(name="evtMapper")
	private EvtMapper evtMapper;
	
	/*경보이력 데이터 조회*/
	public List<EvtHstInfo> selectEvtHstList(List<Integer> sites, int start, int length, String ordNo,  String sort, String startDate, String endDate) throws Exception{
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("sites", sites);
		param.put("start", start);
		param.put("length", length);		
		param.put("ordNo", ordNo);
		param.put("sort", sort);		
		param.put("startDate", startDate);
		param.put("endDate", endDate);
		
		return evtMapper.selectEvtHstList(param);
	}
}
