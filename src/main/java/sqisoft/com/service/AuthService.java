package sqisoft.com.service;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import sqisoft.com.mapper.AuthMapper;
import sqisoft.com.model.MenuInfo;
import sqisoft.com.model.RolesInfo;
import sqisoft.com.model.UsrInfo;

@Service("authService")
public class AuthService extends EgovAbstractServiceImpl{
	
	@Resource(name="authMapper")
	private AuthMapper authMapper;
	 
	/*사용자 정보 조회*/
	public UsrInfo selectUserInfo(UsrInfo usrInfo) throws Exception{
		return authMapper.selectUsrInfo(usrInfo);
	}
	
	/*사용자 메뉴 리스트 조회*/
	public List<MenuInfo> selectUsrMenuList(UsrInfo usrInfo) throws Exception{
		return authMapper.selectUsrMenuList(usrInfo);
	}
	
	/*사용자 권한 리스트 조회*/
	public List<RolesInfo> selectRoles(UsrInfo usrInfo) throws Exception{
		return authMapper.selectRoles(usrInfo);
	}
}
