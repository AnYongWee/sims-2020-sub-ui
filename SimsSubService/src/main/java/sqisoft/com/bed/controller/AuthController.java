package sqisoft.com.bed.controller;

import java.security.PrivateKey;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springmodules.validation.commons.DefaultBeanValidator;

import sqisoft.com.bed.comm.CommConst;
import sqisoft.com.bed.comm.CommHandlr;
import sqisoft.com.bed.comm.SecurityUtil;
import sqisoft.com.bed.model.PublicKeyInfo;
import sqisoft.com.bed.model.UserInfo;
import sqisoft.com.bed.service.UserService;

/**
 * @Class Name : AuthController
 * @Description : 사용자 권한 및 계정 관리 클래스
 * @Modification Information
 * @author ywan
 * @since 2020. 01.16
 * @version 1.0
 * @see
 *
 */
@Controller
public class AuthController extends  CommHandlr{
	
	@Resource(name = "userService")
	private UserService userService;
	
	/** Validator */
	@Resource(name = "beanValidator")
	protected DefaultBeanValidator beanValidator;
	
	/**
	 * 로그인 화면 이동
	 * @param model
	 * @return "auth/login"
	 * @exception Exception
	 */
	@RequestMapping(value = "/auth/login.do", method = RequestMethod.GET)
	public String loginView(HttpSession session, Model model) throws Exception {		
		PublicKeyInfo publicKeyInfo = SecurityUtil.createRsaKey(session);

		model.addAttribute("publicKeyModulus", publicKeyInfo.getPublicKeyModulus());
		model.addAttribute("publicKeyExponent", publicKeyInfo.getPublicKeyExponent());		
		
		return "auth/login";
	}
	
	/**
	 * 패스워드 찾기 화면 이동
	 * @param model
	 * @return "auth/password"
	 * @exception Exception
	 */
	@RequestMapping(value = "/auth/password.do", method = RequestMethod.GET)
	public String passwordView(Model model) throws Exception {		
		return "auth/password";
	}
	
	/**
	 * 회원가입 화면 이동
	 * @param model
	 * @return "auth/register"
	 * @exception Exception
	 */
	@RequestMapping(value = "/auth/register.do", method = RequestMethod.GET)
	public String registerView(Model model) throws Exception {		
		return "auth/register";
	}
	
	/**
	 * 로그인
	 * @param model
	 * @return String
	 * @exception Exception
	 */
	@RequestMapping(value = "/auth/loginAction.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> loginAction(HttpSession session,
								@RequestParam(required=true) String userId,
							  	@RequestParam(required=true) String userPwd,
							  Model model) throws Exception {		

		Map<String, Object> result = new HashMap<String, Object>();        
		 
	     PrivateKey privateKey = (PrivateKey) session.getAttribute("_RSA_WEB_Key_");	     
	     
	     if (privateKey == null) {
	    	 return resultMap(result, CommConst.COMM_ERROR_NOT_ENCRY_KEY , "암호화 키 정보를 찾을 수 없습니다.");	    	 
	     }
	     
	     try {
	    	 UserInfo userInfoVo = new UserInfo();
	    	 userInfoVo.setUserId(SecurityUtil.decryptRsa(privateKey, userId));
	    	 userInfoVo.setUserPwd(SecurityUtil.sha256_encrypt(SecurityUtil.decryptRsa(privateKey, userPwd)));
	 		
	    	 UserInfo rslt = userService.selectUserInfo(userInfoVo);
	 		
	    	 if (rslt == null || rslt.getUniqueId() == null) {
	 			//사용자 정보 없음
	 			PublicKeyInfo publicKeyInfo = SecurityUtil.createRsaKey(session);
	 			result.put("publicKeyExponent", publicKeyInfo.getPublicKeyExponent());
	 			result.put("publicKeyModulus", publicKeyInfo.getPublicKeyModulus());
	 			
	 			return resultMap(result, CommConst.COMM_ERROR_NOT_USER , "가입하지 않은 아이디이거나, 잘못된 비밀번호입니다.");
	 		}else {
	 			//세션 저장			
	 			session.setAttribute("user", rslt);		
	 		}
	     }catch(Exception err) {
	    	 err.printStackTrace();
	    	 PublicKeyInfo publicKeyInfo = SecurityUtil.createRsaKey(session);
	    	 result.put("publicKeyExponent", publicKeyInfo.getPublicKeyExponent());
	    	 result.put("publicKeyModulus", publicKeyInfo.getPublicKeyModulus());
	    	 return resultMap(result, CommConst.COMM_ERROR , err.getMessage());
	     }
	     
		return resultMap(result, CommConst.COMM_SUCCESS , "");
	}
	
	/**
	 * 로그아웃
	 * @param model
	 * @return String
	 * @exception Exception
	 */
	@RequestMapping(value = "/auth/logOut.do", method = RequestMethod.GET)	
	public String logOut(HttpSession session, Model model) throws Exception {		

		PublicKeyInfo publicKeyInfo = SecurityUtil.createRsaKey(session);

		model.addAttribute("publicKeyModulus", publicKeyInfo.getPublicKeyModulus());
		model.addAttribute("publicKeyExponent", publicKeyInfo.getPublicKeyExponent());		
		
		return "auth/login";
	}
	
	/**
	 * 로그인 연장하기
	 * @param model
	 * @return String
	 * @exception Exception
	 */
	@RequestMapping(value = "/auth/logExtend.do", method = RequestMethod.GET)	
	@ResponseBody
	public Map<String, Object> logExtend(HttpSession session, HttpServletResponse response, Model model) throws Exception {		
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		//세션 타임아웃 확인
        if (isSessionTimeOut(session)) {
            response.setStatus(HttpServletResponse.SC_REQUEST_TIMEOUT);
            return resultMap(result, CommConst.COMM_ERROR_TIME_OUT , "로그인 후 이용하세요.");
        }
        
        return resultMap(result, CommConst.COMM_SUCCESS , "");
	}
}
