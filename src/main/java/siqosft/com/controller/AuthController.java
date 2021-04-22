package siqosft.com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springmodules.validation.commons.DefaultBeanValidator;

import sqisoft.com.comm.CommConst;
import sqisoft.com.comm.CommHandlr;
import sqisoft.com.comm.SecurityUtil;
import sqisoft.com.model.CompanyInfo;
import sqisoft.com.model.CustInfo;
import sqisoft.com.model.MenuInfo;
import sqisoft.com.model.RolesInfo;
import sqisoft.com.model.SiteInfo;
import sqisoft.com.model.UsrInfo;
import sqisoft.com.service.AuthService;
import sqisoft.com.service.CompanyService;
import sqisoft.com.service.SiteService;
import sqisoft.com.service.UserService;

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
	
	@Resource(name = "authService")
	private AuthService authService;
	
	@Resource(name = "userService")
	private UserService userService;
	
	@Resource(name = "siteService")
	private SiteService siteService;
	
	@Resource(name = "companyService")
	private CompanyService companyService;
	
	/** Validator */
	@Resource(name = "beanValidator")
	protected DefaultBeanValidator beanValidator;
	
	/**
	 * 로그인 화면 이동
	 * @param model
	 * @return "auth/login"
	 * @exception Exception
	 */
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String loginView(HttpSession session, Model model) throws Exception {
		return "auth/login";
	}
	
	/**
	 * 패스워드 찾기 화면 이동
	 * @param model
	 * @return "auth/password"
	 * @exception Exception
	 */
	@RequestMapping(value = "/password.do", method = RequestMethod.GET)
	public String passwordView(Model model) throws Exception {		
		return "auth/password";
	}

	
	/**
	 * 로그인
	 * @param model
	 * @return String
	 * @exception Exception
	 */
	@RequestMapping(value = "/loginAction.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> loginAction(HttpSession session, @RequestParam(required=true) String user_id, @RequestParam(required=true) String user_pwd, Model model) throws Exception {		

		Map<String, Object> result = new HashMap<String, Object>();        
		
	     try {
	    	 
	    	UsrInfo usrInfo = new UsrInfo();
	    	usrInfo.setUsrId(user_id);
	    	usrInfo.setPwd(SecurityUtil.sha256_encrypt(user_pwd));
	    	
	    	UsrInfo rslt = authService.selectUserInfo(usrInfo);
	 		
	    	 if (rslt == null || rslt.getUsrId() == null) {
	    		 //사용자 정보 없음	    		 
	 			 return resultMap(result, CommConst.COMM_ERROR_NOT_USER , "가입하지 않은 아이디이거나, 잘못된 비밀번호입니다.");
	 		}else {
	 			
	 			//사용자정보 세션 저장
	 			session.setAttribute("usrInfo", rslt);
	 			
	 			//메뉴 정보 조회
	 			List<MenuInfo> menuList = authService.selectUsrMenuList(rslt);
	 			
	 			//권한 조회
	 			List<RolesInfo> roles = authService.selectRoles(rslt);
	 			
	 			//메뉴 정보 세션 저장
	 			session.setAttribute("menuList", menuList);
	 			
	 			//권한 정보 세션 저장
	 			session.setAttribute("roles", roles);
	 			
	 			//사이트 정보 조회
	 			List<SiteInfo> siteList = siteService.selectUsrMenuList(rslt, isAdmin(session));
	 			
	 			//사이트 정보 세션 저장
	 			for (SiteInfo siteInfo : siteList) {
	 				siteInfo.setChecked(true);
	 			}
	 			
	 			session.setAttribute("siteList", siteList);
	 			
	 			//사이트 전체 체크 상태 true 초기 설정
	 			session.setAttribute("siteSeqAllChecked", true);
	 			
	 			//고객 정보 조회 (관리자 계정이 아닌 경우만 고객사 정보를 조회 처리 한다.)
	 			if (!isAdmin(session)) {
	 				CompanyInfo companyInfo = companyService.selectCompanyInfo(String.valueOf(rslt.getCustSeq()), null, null).get(0);
	 				//고객사 정보 세션 저장
		 			session.setAttribute("companyInfo", companyInfo);
	 			}
	 		}
	     }catch(Exception err) {
	    	 err.printStackTrace();	    	 
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
	@RequestMapping(value = "/logOut.do", method = RequestMethod.GET)	
	public String logOut(HttpSession session, HttpServletRequest request, Model model) throws Exception {		

		session.removeAttribute("usrInfo");
		session.removeAttribute("menuList");
				
		return "auth/login";
	}
	
	/**
	 * 로그인 연장하기
	 * @param model
	 * @return String
	 * @exception Exception
	 */
	@RequestMapping(value = "/logExtend.do", method = RequestMethod.GET)	
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
	
	/**
	 * 사용 사이트 seq 변경
	 *
	 * @return Map
	 * @exception Exception
	 */	
	@RequestMapping(value = "/ajax/updateSiteSeq.do",  method = RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object> updateSiteSeq(HttpSession session, @RequestParam(name="siteSeq", required = false) int siteSeq, @RequestParam(name="checked", required = false) boolean checked) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		//관리 사이트 정보 조회
		@SuppressWarnings("unchecked")
		List<SiteInfo> siteList = (List<SiteInfo>)session.getAttribute("siteList");
			
		for(SiteInfo site : siteList) {
			site.setChecked(false);
			if(site.getSiteSeq() == siteSeq) {
				site.setChecked(checked);		
			}
		}
		
		//새로운 정보로 변경
		session.setAttribute("siteList", siteList);
				
		session.setAttribute("siteSeqAllChecked", false);
		
		return resultMap(result, CommConst.COMM_SUCCESS, "");		
	}
	
	/**
	 * 사용 사이트 seq 변경
	 * 
	 * @return Map
	 * @exception Exception
	 */	
	@RequestMapping(value = "/ajax/updateAllSiteSeq.do",  method = RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object> updateAllSiteSeq(HttpSession session, @RequestParam(name="checked", required = false) boolean checked) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		//관리 사이트 정보 조회
		@SuppressWarnings("unchecked")
		List<SiteInfo> siteList = (List<SiteInfo>)session.getAttribute("siteList");
			
		for(SiteInfo site : siteList) {
			site.setChecked(checked);
		}   
		
		//새로운 정보로 변경
		session.setAttribute("siteList", siteList);
				
		session.setAttribute("siteSeqAllChecked", checked);
		
		return resultMap(result, CommConst.COMM_SUCCESS, "");		
	}
	
	/**
	 * 사용 사이트 정보 갱신
	 *
	 * @param startDate - 시작일자
	 * @return 
	 * @return Map
	 * @exception Exception
	 */	
	@RequestMapping(value = "/ajax/siteReplace.do",  method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> siteReplace(Model model, HttpSession session) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		//사용자 정보 조회	
		UsrInfo usrInfo = (UsrInfo)session.getAttribute("usrInfo");	
		
		//기존 사이트 정보 조회
		@SuppressWarnings("unchecked")
		List<SiteInfo> oldSiteList = (List<SiteInfo>)session.getAttribute("siteList");
				
		//사이트 정보 조회
		List<SiteInfo> siteList = siteService.selectUsrMenuList(usrInfo, isAdmin(session));
		
		for(SiteInfo site : siteList) {
			
			for(SiteInfo old : oldSiteList) {
				if (site.getSiteSeq() == old.getSiteSeq()) {
					site.setChecked(old.isChecked());
					break;
				}
			}
		}   
		
		//새로운 정보로 변경
		session.setAttribute("siteList", siteList);
		
		result.put("siteList", siteList);
		
		return result;		
	}
}
