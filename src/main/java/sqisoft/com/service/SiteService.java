package sqisoft.com.service;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import sqisoft.com.mapper.SiteMapper;
import sqisoft.com.model.SiteInfo;
import sqisoft.com.model.UsrInfo;

@Service("siteService")
public class SiteService {
	
	@Resource(name="siteMapper")
	private SiteMapper siteMapper;
	
	/*사용자 사이트 메뉴 리스트 조회*/
	public List<SiteInfo> selectUsrMenuList(UsrInfo usrInfo) throws Exception{
		
		//관리자 계정의 경우 모든 사이트 정보를 조회 하도록 처리
		if (usrInfo.getUsrId().equals("admin")) {
			return siteMapper.selectAdminSiteList(usrInfo);
		}
		
		return siteMapper.selectUsrSiteList(usrInfo);
	}
}
