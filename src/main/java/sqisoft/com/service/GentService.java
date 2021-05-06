package sqisoft.com.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import sqisoft.com.comm.CommHandlr;
import sqisoft.com.mapper.GentMapper;
import sqisoft.com.model.GentInfo;
import sqisoft.com.model.SiteGentInfo;

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
	
	/*사이트 발전량 리스트 top 10*/
	public List<SiteGentInfo> selectSiteGentTopList(String custSeq, String nowDate) throws Exception{	
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("custSeq", custSeq);					
		param.put("nowDate", nowDate);					
		return gentMapper.selectSiteGentTopList(param);
	}
	
	/*사이트 발전량 정보 조회*/
	public SiteGentInfo selectSiteGentInfo(String siteSeq) throws Exception{	
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("siteSeq", siteSeq);
		return gentMapper.selectSiteGentInfo(param);
	}
}
