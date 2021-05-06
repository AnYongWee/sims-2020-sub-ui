package siqosft.com.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import sqisoft.com.comm.CommHandlr;

/**
 * @Class Name : ReportController
 * @Description : 보고서 관리 클래스
 * @Modification Information
 * @author ywan
 * @since 2020. 01.16
 * @version 1.0
 * @see
 *
 */
@Controller
public class ReportController extends CommHandlr{
	private static final Logger logger = LoggerFactory.getLogger(ReportController.class);
	
	/**
	 * 보고서 화면 이동
	 * @param model
	 * @return String
	 * @exception Exception
	 */
	@RequestMapping(value = "/report.do", method = RequestMethod.GET)
	public String siteView(HttpSession session, Model model) throws Exception {
				
		return "status/report.tiles";
	}
}
