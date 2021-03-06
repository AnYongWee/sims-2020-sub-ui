package siqosft.com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import sqisoft.com.comm.CommConst;
import sqisoft.com.comm.CommHandlr;
import sqisoft.com.comm.StringUtil;
import sqisoft.com.model.CompanyInfo;
import sqisoft.com.model.SiteInfo;
import sqisoft.com.model.UsrInfo;
import sqisoft.com.service.CodeService;
import sqisoft.com.service.CompanyService;

/**
 * @Class Name : CompanyController
 * @Description : 고객사 관리 클래스
 * @Modification Information
 * @author ywan
 * @since 2021. 03.17
 * @version 1.0
 * @see
 *
 */
@Controller
public class CompanyController extends CommHandlr{
	private static final Logger logger = LoggerFactory.getLogger(CompanyController.class);
		
	@Resource(name = "companyService")
	private CompanyService companyService;
	
	@Resource(name = "codeService")
	private CodeService codeService;
	
	/**
	 * 고객사관리 화면 이동
	 * @param model
	 * @return String
	 * @exception Exception
	 */
	@RequestMapping(value = "/company.do", method = RequestMethod.GET)
	public String companyView(Model model) throws Exception {
		
		//고객유형 코드 조회
		model.addAttribute("custTypeCodes", codeService.selectCodeList("CUST_TYPE_CD"));		
				
		return "admin/company.tiles";
	}
	
	/**
	 * 고객사 리스트 조회
	 *
	 * @param searchCustNm - 고객사명
	 * @param searchBizNo - 사업자번호
	 * @param searchCntPsnNm - 담당자명
	 * @param searchCustTypeCd - 고객유형코드
	 * @param startDate - 시작일자
	 * @param endDate - 종료일자
	 * @return 
	 * @return Map
	 * @exception Exception
	 */	
	@RequestMapping(value = "/ajax/getCompanyList.do",  method = RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object> getCompanyList(HttpSession session,
															@RequestParam(name="start", required = false) String start,
															@RequestParam(name="length", required = false) String length,
															@RequestParam(name="order[0][column]", required = false) String ordNo,
															@RequestParam(name="order[0][dir]", required = false) String sort,
															@RequestParam(name="searchCustNm", required = true) String custNm,
															@RequestParam(name="searchBizNo", required = true) String bizNo,
															@RequestParam(name="searchCntPsnNm", required = true) String cntPsnNm,
															@RequestParam(name="searchCustTypeCd", required = true) String custTypeCd,
															@RequestParam(name="startDate", required = true) String startDate,
															@RequestParam(name="endDate", required = true) String endDate) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();

		// 고객사 리스트
		List<CompanyInfo> list = companyService.selectCompanyList(isAdmin(session), getUserSiteList(session), Integer.valueOf(start), Integer.valueOf(length), ordNo, sort, custNm, bizNo, cntPsnNm, custTypeCd, startDate, endDate);
		
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
	 * 고객사 정보 조회
	 *
	 * @return Map
	 * @exception Exception
	 */	
	@RequestMapping(value = "/ajax/getCompanyInfo.do",  method = RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object> getCompanyInfo(HttpSession session, @RequestParam(name="custSeq", required = false) String custSeq) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		CompanyInfo info = new CompanyInfo();
		
		
		if (!isAdmin(session)) {
			
			UsrInfo usrInfo = getUserId(session);
			
			if (StringUtil.isEmpty(custSeq)) {
				custSeq = String.valueOf(usrInfo.getCustSeq());
			}
			
			// 고객사 정보 조회
			info = companyService.selectCompanyInfo(custSeq, null, null).get(0);
			
		}else {
			//관리자 계정의 경우 고객사 정보가 없으므로 사전 정의된 고객사 정보 반환.
			if (StringUtil.isEmpty(custSeq)) {
				info.setCustNm(CommConst.adminCustNm);
			}else {
				// 고객사 정보 조회
				info = companyService.selectCompanyInfo(custSeq, null, null).get(0);
			}
		}
						
		result.put("info", info);
		   
		return resultMap(result, CommConst.COMM_SUCCESS, "");		
	}
	
	/**
	 * 고객사 정보 추가
	 *
	 * @return Map
	 * @exception Exception
	 */	
	@RequestMapping(value = "/ajax/newCompanyInfo.do",  method = RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object> newCompanyInfo(HttpSession session,
															@RequestParam(name="i_custNm", required = true) String i_custNm,
															@RequestParam(name="i_bizNo", required = false) String i_bizNo,
															@RequestParam(name="i_custTypeCd", required = false) String i_custTypeCd,
															@RequestParam(name="i_tlNo", required = false) String i_tlNo,
															@RequestParam(name="i_fax", required = false) String i_fax,
															@RequestParam(name="i_cntPsnNm", required = false) String i_cntPsnNm,
															@RequestParam(name="i_cntPsnPos", required = false) String i_cntPsnPos,
															@RequestParam(name="i_cntPsnHpNo", required = false) String i_cntPsnHpNo,
															@RequestParam(name="i_cntPsnEml", required = false) String i_cntPsnEml,
															@RequestParam(name="i_img_1", required = false) MultipartFile i_img_1,
															@RequestParam(name="i_img_2", required = false) MultipartFile i_img_2,
															@RequestParam(name="i_img_3", required = false) MultipartFile i_img_3) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
				
		CompanyInfo companyInfo = new CompanyInfo();
		
		//고객사명 중복 확인
		List<CompanyInfo> infos = companyService.selectCompanyInfo(null, i_custNm, null);
		if (!StringUtil.isEmpty(i_custNm) && infos != null) {
			if (infos.size() > 0) {
				return resultMap(result, CommConst.COMM_ERROR_VALIDATION, "이미 사용중인 고객사명이 있습니다.");	
			}
		}
		//사업자번호 중복 확인		
		infos = companyService.selectCompanyInfo(null, null, i_bizNo);
		if (!StringUtil.isEmpty(i_bizNo) && infos != null) {
			if (infos.size() > 0) {
				return resultMap(result, CommConst.COMM_ERROR_VALIDATION, "이미 사용중인 사업자번호가 있습니다.");	
			}	
		}
		
		companyInfo.setCustNm(i_custNm);
		companyInfo.setBizNo(i_bizNo);
		companyInfo.setCustTypeCd(i_custTypeCd);
		companyInfo.setTelNo(i_tlNo);
		companyInfo.setFaxNo(i_fax);
		companyInfo.setCntPsnNm(i_cntPsnNm);
		companyInfo.setCntPsnPos(i_cntPsnPos);
		companyInfo.setCntPsnHpno(i_cntPsnHpNo);
		companyInfo.setCntPsnEml(i_cntPsnEml);
		companyInfo.setCretr(getUserId(session).getUsrId());
		
		if (i_img_1 != null && !i_img_1.isEmpty()) {
			companyInfo.setImgFileNm1(i_img_1.getOriginalFilename());	
			companyInfo.setImg1(i_img_1.getBytes());
			companyInfo.setImgContentType1(i_img_1.getContentType());
		}
		if (i_img_2 != null && !i_img_2.isEmpty()) {
			companyInfo.setImgFileNm2(i_img_2.getOriginalFilename());	
			companyInfo.setImg2(i_img_2.getBytes());
			companyInfo.setImgContentType2(i_img_2.getContentType());
		}
		if (i_img_3 != null && !i_img_3.isEmpty()) {
			companyInfo.setImgFileNm3(i_img_3.getOriginalFilename());	
			companyInfo.setImg3(i_img_3.getBytes());
			companyInfo.setImgContentType3(i_img_3.getContentType());
		}
		
		int row = companyService.insertCompanyInfo(companyInfo);
		   
		if (row <= 0) {
			return resultMap(result, CommConst.COMM_ERROR_DATABASE, "고객사 정보 추가에 실패 했습니다.");
		}
		
		return resultMap(result, CommConst.COMM_SUCCESS, "");
	}
	
	/**
	 * 고객사 정보 수정
	 *
	 * @return Map
	 * @exception Exception
	 */	
	@RequestMapping(value = "/ajax/updateCompanyInfo.do",  method = RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object> editCompanyInfo(HttpSession session,
															@RequestParam(name="i_custSeq", required = true) String i_custSeq,
															@RequestParam(name="i_custNm", required = true) String i_custNm,
															@RequestParam(name="i_bizNo", required = false) String i_bizNo,
															@RequestParam(name="i_custTypeCd", required = false) String i_custTypeCd,
															@RequestParam(name="i_tlNo", required = false) String i_tlNo,
															@RequestParam(name="i_fax", required = false) String i_fax,
															@RequestParam(name="i_cntPsnNm", required = false) String i_cntPsnNm,
															@RequestParam(name="i_cntPsnPos", required = false) String i_cntPsnPos,
															@RequestParam(name="i_cntPsnHpNo", required = false) String i_cntPsnHpNo,
															@RequestParam(name="i_cntPsnEml", required = false) String i_cntPsnEml,
															@RequestParam(name="i_img_1", required = false) MultipartFile i_img_1,
															@RequestParam(name="i_img_2", required = false) MultipartFile i_img_2,
															@RequestParam(name="i_img_3", required = false) MultipartFile i_img_3) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
				
		CompanyInfo companyInfo = new CompanyInfo();
		
		//고객사명 중복 확인		
		List<CompanyInfo> infos = companyService.selectCompanyInfo(null, i_custNm, null);
		if (!StringUtil.isEmpty(i_custNm) && infos != null) {
			for (CompanyInfo info : infos ) {
				if(info.getCustSeq() != Integer.parseInt(i_custSeq)) {
					return resultMap(result, CommConst.COMM_ERROR_VALIDATION, "이미 사용중인 고객사명이 있습니다.");	
				}	
			}
		}
		//사업자번호 중복 확인		
		infos = companyService.selectCompanyInfo(null, null, i_bizNo);
		if (!StringUtil.isEmpty(i_bizNo) && infos != null) {
			for (CompanyInfo info : infos ) {
				if(info.getCustSeq() != Integer.parseInt(i_custSeq)) {
					return resultMap(result, CommConst.COMM_ERROR_VALIDATION, "이미 사용중인 사업자번호가 있습니다.");
				}	
			}
		}
		
		companyInfo.setCustSeq(Integer.parseInt(i_custSeq));
		companyInfo.setCustNm(i_custNm);
		companyInfo.setBizNo(i_bizNo);
		companyInfo.setCustTypeCd(i_custTypeCd);
		companyInfo.setTelNo(i_tlNo);
		companyInfo.setFaxNo(i_fax);
		companyInfo.setCntPsnNm(i_cntPsnNm);
		companyInfo.setCntPsnPos(i_cntPsnPos);
		companyInfo.setCntPsnHpno(i_cntPsnHpNo);
		companyInfo.setCntPsnEml(i_cntPsnEml);
		companyInfo.setUpdtr(getUserId(session).getUsrId());
		
		if (i_img_1 != null && !i_img_1.isEmpty()) {
			companyInfo.setImgFileNm1(i_img_1.getOriginalFilename());	
			companyInfo.setImg1(i_img_1.getBytes());
			companyInfo.setImgContentType1(i_img_1.getContentType());
		}
		if (i_img_2 != null && !i_img_2.isEmpty()) {
			companyInfo.setImgFileNm2(i_img_2.getOriginalFilename());	
			companyInfo.setImg2(i_img_2.getBytes());
			companyInfo.setImgContentType2(i_img_2.getContentType());
		}
		if (i_img_3 != null && !i_img_3.isEmpty()) {
			companyInfo.setImgFileNm3(i_img_3.getOriginalFilename());	
			companyInfo.setImg3(i_img_3.getBytes());
			companyInfo.setImgContentType3(i_img_3.getContentType());
		}
		
		int row = companyService.updateCompanyInfo(companyInfo);
		   
		if (row <= 0) {
			return resultMap(result, CommConst.COMM_ERROR_DATABASE, "고객사 정보 수정에 실패 했습니다.");
		}
		
		return resultMap(result, CommConst.COMM_SUCCESS, "");
	}
	
	/**
	 * 고객사 정보 삭제
	 *
	 * @return Map
	 * @exception Exception
	 */	
	@RequestMapping(value = "/ajax/delCompanyInfo.do",  method = RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object> delCompanyInfo(HttpSession session, @RequestParam(name="custSeq", required = true) String custSeq) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		int row = companyService.deleteCompanyInfo(custSeq);
		   
		if (row <= 0) {
			return resultMap(result, CommConst.COMM_ERROR_DATABASE, "고객사 정보 삭제에 실패 했습니다.");
		}
		
		return resultMap(result, CommConst.COMM_SUCCESS, "");
	}
	
	/**
	 * 고객사 이미지 정보 조회
	 *
	 * @return Map
	 * @exception Exception
	 */	
	@RequestMapping(value = "/ajax/getCompanyImage.do",  method = RequestMethod.GET)	
	public  void getSiteImage(HttpSession session,  HttpServletResponse response, @RequestParam(name="custSeq", required = true) String custSeq, @RequestParam(name="no", required = true) String no) throws Exception {
		
		CompanyInfo companyInfo = companyService.selectCompanyInfo(custSeq, null, null).get(0);
		   
		if (no.equals("1")) {
			response.setContentType(companyInfo.getImgContentType1());
			response.getOutputStream().write(companyInfo.getImg1());	
		}else if (no.equals("2")) {
			response.setContentType(companyInfo.getImgContentType2());
			response.getOutputStream().write(companyInfo.getImg2());
		}else if (no.equals("3")) {
			response.setContentType(companyInfo.getImgContentType3());
			response.getOutputStream().write(companyInfo.getImg3());
		}
		
	}
}
