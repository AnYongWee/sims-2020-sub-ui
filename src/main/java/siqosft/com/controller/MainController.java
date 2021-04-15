package siqosft.com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import sqisoft.com.comm.CommConst;
import sqisoft.com.comm.CommHandlr;
import sqisoft.com.comm.StringUtil;
import sqisoft.com.model.CompanyInfo;
import sqisoft.com.service.MainService;
import sqisoft.com.service.SiteService;

/**
 * @Class Name : MainController
 * @Description : 메인화면 관리 클래스
 * @Modification Information
 * @author ywan
 * @since 2020. 01.16
 * @version 1.0
 * @see
 *
 */
@Controller
public class MainController extends CommHandlr{
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Resource(name = "mainService")
	private MainService mainService;
		
	@Resource(name = "siteService")
	private SiteService siteService;
	
	/**
	 * 메인 화면 이동
	 * @param model
	 * @return "main/dashboard"
	 * @exception Exception
	 */
	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public String loginView(HttpSession session, Model model) throws Exception {
		
		return "main/dashboard.tiles";
	}
}
