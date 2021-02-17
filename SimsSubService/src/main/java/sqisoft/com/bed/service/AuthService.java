package sqisoft.com.bed.service;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import sqisoft.com.bed.mapper.AuthMapper;
import sqisoft.com.bed.model.UserInfo;

@Service("authService")
public class AuthService extends EgovAbstractServiceImpl{
	
	 @Resource(name="authMapper")
	private AuthMapper authMapper;
	 
	public UserInfo selectUserInfo(UserInfo userInfoVo) throws Exception{
		return authMapper.selectUserInfo(userInfoVo);
	}
}
