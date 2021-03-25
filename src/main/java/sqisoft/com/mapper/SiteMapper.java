package sqisoft.com.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import sqisoft.com.model.SiteInfo;
import sqisoft.com.model.UsrInfo;

@Mapper("siteMapper")
public interface SiteMapper {
	
	/*전체 사이트 리스트 정보*/
	List<SiteInfo> selectAdminSiteList(UsrInfo usrInfo) throws Exception;
	
	/*사용자 사이트 리스트 정보*/
	List<SiteInfo> selectUsrSiteList(UsrInfo usrInfo) throws Exception;
}
