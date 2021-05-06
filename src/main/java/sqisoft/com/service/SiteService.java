package sqisoft.com.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import sqisoft.com.mapper.SiteMapper;
import sqisoft.com.model.CompanyInfo;
import sqisoft.com.model.SiteInfo;
import sqisoft.com.model.UsrInfo;

@Service("siteService")
public class SiteService {
	
	@Resource(name="siteMapper")
	private SiteMapper siteMapper;
	
	/*사용자 사이트 메뉴 리스트 조회*/
	public List<SiteInfo> selectUsrMenuList(UsrInfo usrInfo, boolean isAdmin) throws Exception{
		
		//관리자 계정의 경우 모든 사이트 정보를 조회 하도록 처리
		if (isAdmin) {
			return siteMapper.selectAdminSiteList(usrInfo);
		}
		
		return siteMapper.selectUsrSiteList(usrInfo);
	}
	
	/*사이트 리스트 조회*/
	public List<SiteInfo> selectSiteList(List<Integer> sites, int start, int length, String ordNo, String sort, String custSeq, String siteNm, String connStsCd, String connTypeCd, String bizTypeCd, String startDate, String endDate) throws Exception{
		Map<String, Object> param = new HashMap<String, Object>();		
		param.put("sites", sites);
		param.put("start", start);
		param.put("length", length);		
		param.put("ordNo", ordNo);
		param.put("sort", sort);				
		param.put("custSeq", custSeq);
		param.put("siteNm", siteNm);
		param.put("connStsCd", connStsCd);
		param.put("bizTypeCd", bizTypeCd);		
		param.put("connTypeCd", connTypeCd);		
		param.put("startDate", startDate);
		param.put("endDate", endDate);		
		
		return siteMapper.selectSiteList(param);
	}
	
	/*사이트 정보 조회*/
	public SiteInfo selectSiteInfo(String siteSeq) throws Exception{
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("siteSeq", siteSeq);
		
		return siteMapper.selectSiteInfo(param);
	}
	
	/*사이트 정보 추가*/
	public int insertSiteInfo(SiteInfo siteInfo) throws Exception{		
		return siteMapper.insertSiteInfo(siteInfo);
	}
	
	/*사이트 정보 수정*/
	public int updateSiteInfo(SiteInfo siteInfo) throws Exception{		
		return siteMapper.updateSiteInfo(siteInfo);
	}
	
	/*고객사 정보 삭제*/
	public int deleteSiteInfo(String siteSeq) throws Exception{		
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("siteSeq", siteSeq);
		return siteMapper.deleteSiteInfo(param);
	}
}
