package siqosft.com.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import sqisoft.com.comm.CommConst;
import sqisoft.com.comm.CommHandlr;
import sqisoft.com.model.GentInfo;
import sqisoft.com.model.UsrInfo;
import sqisoft.com.service.GentService;

@Controller
public class GentController extends  CommHandlr{

	@Resource(name = "gentService")
	private GentService gentService;
	
	/**
	 * 고객사 발전 정보 조회
	 *
	 * @return Map
	 * @exception Exception
	 */	
	@RequestMapping(value = "/ajax/getCompanyGentInfo.do",  method = RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object> getCompanyGentInfo(HttpSession session) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		String custSeq = "";
		
		//관리자 계정의 경우 전체 고객사의 발전 정보를 조회 할 수 있도록 처리
		if (!isAdmin(session)) {
			UsrInfo usrInfo = getUserId(session);
			custSeq = String.valueOf(usrInfo.getCustSeq());
		}
		
		// 고객사 발전 정보 조회
		GentInfo info = gentService.selectCompanyInfo(custSeq);
						
		result.put("info", info);
		   
		return resultMap(result, CommConst.COMM_SUCCESS, "");		
	}
	
}
