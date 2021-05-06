package sqisoft.com.comm;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.support.DefaultMessageSourceResolvable;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;

import sqisoft.com.model.RolesInfo;
import sqisoft.com.model.SiteInfo;
import sqisoft.com.model.UsrInfo;

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
	public UsrInfo getUserId(HttpSession session) {
		UsrInfo userInfo = (UsrInfo)session.getAttribute("usrInfo");
		return userInfo;
	}
	
	//로그인 사용자 관리 사이트 정보 리스트 반환
	public List<Integer> getUserSiteList(HttpSession session){
		
		List<Integer> result = new ArrayList<Integer>();
		
		@SuppressWarnings("unchecked")
		List<SiteInfo> siteList = (List<SiteInfo>)session.getAttribute("siteList");
		
		for(SiteInfo siteInfo : siteList) {
			if (siteInfo.isChecked()) {
				result.add(siteInfo.getSiteSeq());	
			}
		}
		
		return result;
	}
	
	//로그인 사용자 권한 리스트 반환
	public List<RolesInfo> getRoles(HttpSession session) {
		@SuppressWarnings("unchecked")
		List<RolesInfo> rolesInfo = (List<RolesInfo>)session.getAttribute("roles");
		return rolesInfo;
	}
	
	public boolean isAdmin(HttpSession session) {
		
		@SuppressWarnings("unchecked")
		List<RolesInfo> roles = (List<RolesInfo>)session.getAttribute("roles");
		for(RolesInfo role : roles) {
			if (role.getAuthority().equals("R000001")) {
				return true;
			}
		}
		return false;
	}
		
	public boolean isSessionTimeOut(HttpSession session) {
		// 세션 로그인 정보 확인		
		if (session.getAttribute("user") == null) {			
			return true;
		}
		return false;
	}
	
	//접속자 IP 가져오기
	public String clientIp(HttpServletRequest request) {
		
		String ip = request.getHeader("X-FORWARDED-FOR");
		
		if (ip == null) {
			ip = request.getRemoteAddr();
		}	
		
		if (ip.equals("0:0:0:0:0:0:0:1")) {
			ip = "127.0.0.1";
		}
		
		return ip;
	}
	
}
