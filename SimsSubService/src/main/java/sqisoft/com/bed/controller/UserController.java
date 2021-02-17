package sqisoft.com.bed.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springmodules.validation.commons.DefaultBeanValidator;

import sqisoft.com.bed.comm.CommConst;
import sqisoft.com.bed.comm.CommHandlr;
import sqisoft.com.bed.model.UserInfo;
import sqisoft.com.bed.service.CodeService;
import sqisoft.com.bed.service.UserService;

/**
 * @Class Name : UserController
 * @Description : 사용자 관리 클래스
 * @Modification Information
 * @author ywan
 * @since 2020. 01.16
 * @version 1.0
 * @see
 *
 */
@Controller
public class UserController extends CommHandlr{
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	/** Validator */
	@Resource(name = "beanValidator")
	protected DefaultBeanValidator beanValidator;
	
	@Resource(name = "userService")
	private UserService userService;
	
	@Resource(name = "codeService")
	private CodeService codeService;
	
	@Autowired
	private JavaMailSender mailSender;
	
	/**
	 * 사용자 관리 화면 이동
	 * @param model
	 * @return "user/manage"
	 * @exception Exception
	 */
	@RequestMapping(value = "/user/manage.do", method = RequestMethod.GET)
	public String manageView(Model model) throws Exception {		
		
		//사용자상태 코드 조회
		model.addAttribute("userStatCodes", codeService.selectCode("USER_STAT_CODE")); 
		
		return "user/manage.tiles";
	}
	
	/**
	 * 사용자 정보 등록.
	 * @param userInfo - 등록할 정보가 담긴 VO
	 * @param status
	 * @return 
	 * @return String
	 * @exception Exception
	 */	
	@RequestMapping(value = "/user/addUserInfo.do",  method = RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object> addUserInfo(HttpSession session, @ModelAttribute("userInfo") UserInfo userInfo,  BindingResult bindingResult) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		// Server-Side Validation
		beanValidator.validate(userInfo, bindingResult);
		
		if (bindingResult.hasErrors()) {			
			return validateErrorMap(result, bindingResult);
		}
		
		// 로그인 사용자 정보
        UserInfo loginUserInfo = getUserId(session);
        
		// 사용자 정보 추가
		result = userService.insertUserInfo(userInfo, loginUserInfo.getUserId());
		
		return result;		
	}
	
	/**
	 * 사용자 정보 수정.
	 * @param userInfo - 등록할 정보가 담긴 VO
	 * @param status
	 * @return 
	 * @return String
	 * @exception Exception
	 */	
	@RequestMapping(value = "/user/editUserInfo.do",  method = RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object> editUserInfo(@ModelAttribute("userInfo") UserInfo userInfo, BindingResult bindingResult) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		// Server-Side Validation
		beanValidator.validate(userInfo, bindingResult);
		
		if (bindingResult.hasErrors()) {			
			return validateErrorMap(result, bindingResult);
		}

		// 사용자 정보 추가
		result = userService.updateUserInfo(userInfo);
		
		return result;		
	}
	
	/**
	 * 사용자 리스트 조회
	 * @param start - 페이징 시작 레코드 번호
	 * @param length - 조회할 페이지 총 레코드 수
	 * @param order[0][column] - 정렬 컬럼 번호
	 * @param order[0][dir] - 정렬 구분
	 * @param userId - 사용자 아이디
	 * @param userNm - 사용자 명
	 * @param stDate - 시작일자
	 * @param stDate - 종료일자
	 * @return 
	 * @return String
	 * @exception Exception
	 */	
	@RequestMapping(value = "/user/getUserList.do",  method = RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object> getUserList(@RequestParam(name="start", required = false) String start, // 페이지 시작넘버
														   @RequestParam(name="length", required = false) String length, // 페이지에 띄울 갯수
														   @RequestParam(name="order[0][column]", required = false) String ordNo, // 정렬
														   @RequestParam(name="order[0][dir]", required = false) String sort,	// 오름차순 인지 아닌지													  
														   @RequestParam(name="userId", required = false) String userId,
														   @RequestParam(name="userNm", required = false) String userNm,
														   @RequestParam(name="stDate", required = false) String stDate,
														   @RequestParam(name="edDate", required = false) String edDate) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		// 사용자 정보 조회
		List<UserInfo> list = userService.selectUserList(Integer.parseInt(start), Integer.parseInt(start)+Integer.parseInt(length), ordNo, sort, userId, userNm, stDate, edDate);
		
		// 전체 레코드 수		
		long totalCnt = 0;
		if (list != null && list.size() > 0) {
			totalCnt = list.get(0).getTotalCnt();	
		}
		
		result.put("list", list);
		result.put("iTotalRecords", totalCnt);
		result.put("iTotalDisplayRecords", totalCnt);
		   
		return result;		
	}
	
	/**
	 * 사용자 정보 조회
	 * @param uniqueId - 사용자 고유번호
	 * @return 
	 * @return String
	 * @exception Exception
	 */	
	@RequestMapping(value = "/user/getUserInfo.do",  method = RequestMethod.POST)
	@ResponseBody
	public  UserInfo getUserInfo(@RequestParam(name="uniqueId", required = true) String uniqueId) throws Exception {		
		// 사용자 정보 조회
		UserInfo userInfo = new UserInfo();
		userInfo.setUniqueId(uniqueId);
		UserInfo info = userService.selectUserInfo(userInfo);
		   
		return info;		
	}	
	
	/**
	 * 비밀번호 초기화
	 * @param userInfo - 등록할 정보가 담긴 VO
	 * @param status
	 * @return 
	 * @return String
	 * @exception Exception
	 */	
	@RequestMapping(value = "/user/password.do",  method = RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object> password(@ModelAttribute("userInfo") UserInfo userInfo, BindingResult bindingResult) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		// 이메일 존재 확인
		if (userInfo.getEmailAddr() == null || userInfo.getEmailAddr() == "") {
			resultMap(result, CommConst.COMM_ERROR_VALIDATION , "발송할 이메일 정보가 없습니다.");	
		}

		//임시비밀번호 생성
		Random rand = new Random();
		String newPwd = String.format("TP#%d%d%d%d%d%d",  rand.nextInt(9), rand.nextInt(9), rand.nextInt(9), rand.nextInt(9), rand.nextInt(9), rand.nextInt(9));
		
		//발송 메일 내용 생성			
		StringBuilder sb = new StringBuilder();
		sb.append("<html>");
		sb.append("<head>");
		sb.append("<style>");
		sb.append("body {");
		sb.append("font-family: 'Nanum Barun Gothic','나눔바른고딕',nanum-barun-gothic-regular,'Malgun Gothic',Helvetica,Arial,sans-serif;");
		sb.append("font-size: 15px;");
		sb.append("}");					
		sb.append("</style>");
		sb.append("</head>");
		sb.append("<body>");
		sb.append("<hr style='width:500px;' size='2' align='left' color='darkblue'><br>");			
		sb.append("<h3><span style='color:darkblue'>임시 비밀번호</span> 발급 안내입니다.</h3>");
		sb.append("안녕하세요.<br>");
		sb.append("요청하신 <span style='color:darkblue'><b>임시 비밀번호</span></b>가 생성되었습니다.<br>");
		sb.append("임시 비밀번호로 로그인하세요.<br>");
		sb.append("감사합니다.<br><br>");
		sb.append("임시비밀번호: <b>");
		sb.append(newPwd);
		sb.append("</b><br><br>");
		sb.append("<hr style='width:500px;' size='2' align='left'>");	
		sb.append("<span style='font-size:12px;'>Copyright (c) 2020 KOREA INSTITUTE of CIVIL ENGINEERING and BUILDING TECHNOLOGY. ALL rights reserved.</span>");
		sb.append("</body>");
		sb.append("</html>");
		
		MimeMessage msg = mailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(msg, true, "UTF-8");
		helper.setFrom("admin@sqisoft.com");
		helper.setTo(userInfo.getEmailAddr());
		helper.setSubject("한국에너지공단 임시 비밀번호 발송 안내!");
		helper.setText(sb.toString(), true);
		
		mailSender.send(msg);
		
		//비밀번호 수정
		userInfo.setUserPwd(newPwd);
		result = userService.updateUserPassword(userInfo);
		
		return result;		
	}
}
