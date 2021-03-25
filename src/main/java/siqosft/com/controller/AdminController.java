package siqosft.com.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import sqisoft.com.comm.CommHandlr;

/**
 * @Class Name : AdminController
 * @Description : 관리 클래스
 * @Modification Information
 * @author ywan
 * @since 2021. 03.17
 * @version 1.0
 * @see
 *
 */
@Controller
public class AdminController extends CommHandlr{
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	/**
	 * 고객사관리 화면 이동
	 * @param model
	 * @return String
	 * @exception Exception
	 */
	@RequestMapping(value = "/admin/company.do", method = RequestMethod.GET)
	public String companyView(Model model) throws Exception {
		return "admin/company.tiles";
	}
}
