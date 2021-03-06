package sqisoft.com.mapper;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import sqisoft.com.model.CompanyInfo;
import sqisoft.com.model.MenuInfo;
import sqisoft.com.model.RolesInfo;
import sqisoft.com.model.UserLoginHstInfo;
import sqisoft.com.model.UsrInfo;

@Mapper("authMapper")
public interface AuthMapper {
	
	/*사용자 정보*/
	UsrInfo selectUsrInfo(UsrInfo usrInfo) throws Exception;
	
	/*사용자 메뉴 리스트*/
	List<MenuInfo> selectUsrMenuList(UsrInfo usrInfo) throws Exception;
	
	/*사용자 권한 리스트*/
	List<RolesInfo> selectRoles(UsrInfo usrInfo) throws Exception;
	
	/*로그인 이력 추가*/
	int insertUserLoginHst(UserLoginHstInfo userLoginHstInfo) throws Exception;
	
	/*로그아웃 이력 추가*/
	int updateUserLogoutHst(UserLoginHstInfo userLoginHstInfo) throws Exception;
}
