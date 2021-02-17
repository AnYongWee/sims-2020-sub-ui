package sqisoft.com.bed.mapper;

import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import sqisoft.com.bed.model.UserInfo;

//import org.apache.ibatis.annotations.Param;

@Mapper("userMapper")
public interface UserMapper {
	
	/*사용자 리스트 조회*/
	List<UserInfo> selectUserList(Map<String, Object> param) throws Exception;
	
	/*사용자 정보 조회*/
	UserInfo selectUserInfo(UserInfo userInfo) throws Exception;
	
	/*사용자 아이디 중복 확인*/
	int selectUserByIdCnt(UserInfo userInfo) throws Exception;
	
	/*사용자 추가*/
	int insertUserInfo(UserInfo userInfo) throws Exception;
	
	/*사용자 수정*/
	int updateUserInfo(UserInfo userInfo) throws Exception;
	
	/*사용자 패스워드 수정*/
	int updateUserPassword(UserInfo userInfo) throws Exception;
}
