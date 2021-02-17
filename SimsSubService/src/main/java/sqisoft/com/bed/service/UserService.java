package sqisoft.com.bed.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import sqisoft.com.bed.comm.CommConst;
import sqisoft.com.bed.comm.CommHandlr;
import sqisoft.com.bed.comm.SecurityUtil;
import sqisoft.com.bed.mapper.UserMapper;
import sqisoft.com.bed.model.UserInfo;

@Service("userService")
public class UserService extends CommHandlr{
	
	 	@Resource(name="userMapper")
		private UserMapper userMapper;
	 	
	 	/**
		 * 사용자 리스트 조회.
		 * @param userInfo - 등록할 정보가 담긴 VO
		 * @return List<UserInfo>
		 * @exception Exception
		 */	
	 	public List<UserInfo> selectUserList(int start,
	 													 int length,
	 													 String ordNo,
	 													 String sort,
	 													 String userId,
	 													 String userNm,
	 													 String stDate,
	 													 String edDate) throws Exception{
	 		
	 		Map<String, Object> params = new HashMap<String, Object>();	 		
	 		params.put("start", start);
	 		params.put("length", length);
	 		params.put("ordNo", ordNo);
	 		params.put("sort", sort);
	 		params.put("userId", userId);
	 		params.put("userNm", userNm);
	 		params.put("stDate", stDate);
	 		params.put("edDate", edDate);
	 		
			return userMapper.selectUserList(params);			
		}
	 	
	 	/**
		 * 사용자 정보 조회.
		 * @param UserInfo - 조회 정보가 담긴 VO
		 * @return UserInfo
		 * @exception Exception
		 */	
	 	public UserInfo selectUserInfo(UserInfo userInfo) throws Exception{	 		
			return userMapper.selectUserInfo(userInfo);			
		}
	 	
	 	/**
		 * 사용자 정보 등록.
		 * @param userInfo - 등록할 정보가 담긴 VO
		 * @return int
		 * @exception Exception
		 */	
	 	@Transactional(propagation=Propagation.REQUIRED , rollbackFor=Exception.class)
	 	public Map<String, Object>  insertUserInfo(UserInfo userInfo, String userId) throws Exception{
	 		
	 		Map<String, Object> result = new HashMap<String, Object>();

	 		userInfo.setEnteId(userId);
	 		
	 		//비밀번호 암호화 
	 		userInfo.setUserPwd(SecurityUtil.sha256_encrypt(userInfo.getUserPwd()));
	 		
	 		//사용자 아이디 중복 확인
	 		if (userMapper.selectUserByIdCnt(userInfo) > 0) {
	 			return resultMap(result, CommConst.COMM_ERROR_VALIDATION , "이미 사용중인 아이디 입니다.");		
	 		}
	 		//사용자 추가
	 		if (userMapper.insertUserInfo(userInfo) < 1) {
	 			return resultMap(result, CommConst.COMM_ERROR_DATABASE , "사용자 추가에 실패 하였습니다.");
	 		}
	 		
			return resultMap(result, CommConst.COMM_SUCCESS , "");	
		}
	 	
	 	/**
		 * 사용자 정보 수정
		 * @param userInfo - 수정할 정보가 담긴 VO
		 * @return int
		 * @exception Exception
		 */	
	 	public Map<String, Object>  updateUserInfo(UserInfo userInfo) throws Exception{
	 		
	 		Map<String, Object> result = new HashMap<String, Object>();
	 			 	
	 		//사용자 수정
	 		if (userMapper.updateUserInfo(userInfo) < 1) {
	 			return resultMap(result, CommConst.COMM_ERROR_DATABASE , "사용자 정보 수정에 실패 하였습니다.");
	 		}
	 		
			return resultMap(result, CommConst.COMM_SUCCESS , "");	
		}
	 	
	 	/**
		 * 사용자 패스워드 정보 수정
		 * @param userInfo - 수정할 정보가 담긴 VO
		 * @return int
		 * @exception Exception
		 */	
	 	public Map<String, Object>  updateUserPassword(UserInfo userInfo) throws Exception{
	 		
	 		Map<String, Object> result = new HashMap<String, Object>();
	 			 	
	 		//비밀번호 암호화 
	 		userInfo.setUserPwd(SecurityUtil.sha256_encrypt(userInfo.getUserPwd()));
	 		
	 		//사용자 수정
	 		if (userMapper.updateUserPassword(userInfo) < 1) {
	 			return resultMap(result, CommConst.COMM_ERROR_DATABASE , "사용자 정보 수정에 실패 하였습니다.");
	 		}
	 		
			return resultMap(result, CommConst.COMM_SUCCESS , "");	
		}
}
