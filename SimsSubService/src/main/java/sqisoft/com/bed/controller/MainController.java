package sqisoft.com.bed.controller;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import sqisoft.com.bed.comm.CommHandlr;
import sqisoft.com.bed.service.MainService;

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
		
	/**
	 * 메인 화면 이동
	 * @param model
	 * @return "main/dashboard"
	 * @exception Exception
	 */
	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public String loginView(Model model) throws Exception {
		return "main/main.tiles";
	}
}
