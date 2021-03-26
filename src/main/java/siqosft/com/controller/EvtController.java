package siqosft.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @Class Name : EvtController
 * @Description : 경보이력 관리 클래스
 * @Modification Information
 * @author ywan
 * @since 2021. 03.26
 * @version 1.0
 * @see
 *
 */
@Controller
public class EvtController {
	/**
	 * 경보이력 화면 이동
	 * @param model
	 * @return String
	 * @exception Exception
	 */
	@RequestMapping(value = "/alarm.do", method = RequestMethod.GET)
	public String solarView(Model model) throws Exception {
		return "evt/alarm.tiles";
	}
}
