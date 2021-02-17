package sqisoft.com.bed.comm;

import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.support.DefaultMessageSourceResolvable;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;

import sqisoft.com.bed.controller.UserController;
import sqisoft.com.bed.model.UserInfo;

public class CommHandlr {
	
	private static final Logger logger = LoggerFactory.getLogger(CommHandlr.class);
	
	@Autowired
	MessageSource messageSource;
	
	//ajax 기본 리턴 맵 설정
	public Map<String, Object> resultMap(Map<String, Object> map, int resultCode, String resultMessage) {
		map.put("resultCode", resultCode);
		map.put("resultMessage", resultMessage);
		return map;
	}
	
	//ajax 유효성 검증 실패 결과 맵 설정
	public Map<String, Object> validateErrorMap(Map<String, Object> map, BindingResult bindingResult){		
		FieldError fieldError = bindingResult.getFieldError();
		
		Object[] argumentsObj =  fieldError.getArguments();
		
		String[] arguments = new String[argumentsObj.length];
		
		for (int i = 0; i < argumentsObj.length; i++) {
			
			if (argumentsObj[i] instanceof DefaultMessageSourceResolvable) {
				DefaultMessageSourceResolvable soruce =  (DefaultMessageSourceResolvable)argumentsObj[i];
				arguments[i] = soruce.getDefaultMessage();
			}else if (argumentsObj[i] instanceof String) {
				arguments[i] = (String)argumentsObj[i];
			}
		}
		
		logger.info("validation err:" + messageSource.getMessage(fieldError.getDefaultMessage(), arguments, Locale.KOREA));
		
		return this.resultMap(map, CommConst.COMM_ERROR_VALIDATION, messageSource.getMessage(fieldError.getDefaultMessage(), arguments, Locale.KOREA));
	}
	
	//로그인 사용자 객체 반환
	public UserInfo getUserId(HttpSession session) {
		UserInfo userInfo = (UserInfo)session.getAttribute("user");
		return userInfo;
	}
	
	public boolean isSessionTimeOut(HttpSession session) {
		// 세션 로그인 정보 확인		
		if (session.getAttribute("user") == null) {			
			return true;
		}
		return false;
	}
}
