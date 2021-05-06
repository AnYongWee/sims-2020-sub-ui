package siqosft.com.controller;

import java.util.HashMap;
import java.util.List;
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
import org.springframework.web.multipart.MultipartFile;

import sqisoft.com.comm.CommConst;
import sqisoft.com.comm.CommHandlr;
import sqisoft.com.comm.StringUtil;
import sqisoft.com.model.CompanyInfo;
import sqisoft.com.model.SiteInfo;
import sqisoft.com.service.CodeService;
import sqisoft.com.service.CompanyService;
import sqisoft.com.service.SiteService;

@Controller
public class SiteController extends CommHandlr{
	
	@Resource(name = "siteService")
	private SiteService siteService;
	
	@Resource(name = "companyService")
	private CompanyService companyService;
	
	@Resource(name = "codeService")
	private CodeService codeService;
	
	/**
	 * 사이트 관리 화면 이동
	 * @param model
	 * @return String
	 * @exception Exception
	 */
	@RequestMapping(value = "/site.do", method = RequestMethod.GET)
	public String siteView(HttpSession session, Model model) throws Exception {
		
		//고객사 정보 조회
		model.addAttribute("custCodes", companyService.selectCompanyList(isAdmin(session), getUserSiteList(session), 0, 9990, "7", "desc", null, null, null, null, null, null));
		
		//연동상태 코드 조회
		model.addAttribute("connStsCodes", codeService.selectCodeList("CONN_STS_CD"));
		
		//연동유형 코드 조회
		model.addAttribute("connTypeCodes", codeService.selectCodeList("CONN_TYPE_CD"));
		
		//사업유형 코드 조회
		model.addAttribute("bizTypeCodes", codeService.selectCodeList("BIZ_TYPE_CD"));
				
		return "admin/site.tiles";
	}
	
	/**
	 * 사이트 리스트 조회
	 *
	 * @return Map
	 * @exception Exception
	 */	
	@RequestMapping(value = "/ajax/getSiteList.do",  method = RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object> getSiteList(HttpSession session,
															@RequestParam(name="start", required = false) String start,
															@RequestParam(name="length", required = false) String length,
															@RequestParam(name="order[0][column]", required = false) String ordNo,
															@RequestParam(name="order[0][dir]", required = false) String sort,
															@RequestParam(name="searchCustSeq", required = false) String custSeq,
															@RequestParam(name="searchSiteNm", required = false) String siteNm,
															@RequestParam(name="searchConnStsCd", required = false) String connStsCd,
															@RequestParam(name="searchConnTypeCd", required = false) String connTypeCd,
															@RequestParam(name="searchBizTypeCd", required = false) String bizTypeCd,
															@RequestParam(name="startDate", required = false) String startDate,
															@RequestParam(name="endDate", required = false) String endDate) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();

		// 고객사 리스트
		List<SiteInfo> list = siteService.selectSiteList(getUserSiteList(session), Integer.valueOf(start), Integer.valueOf(length), ordNo, sort, custSeq, siteNm, connStsCd, connTypeCd, bizTypeCd, startDate, endDate);
		
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
	 * 사이트 정보 조회
	 *
	 * @return Map
	 * @exception Exception
	 */	
	@RequestMapping(value = "/ajax/getSiteInfo.do",  method = RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object> getSiteInfo(HttpSession session, @RequestParam(name="siteSeq", required = true) String siteSeq) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		// 사이트 정보 조회
		SiteInfo info = siteService.selectSiteInfo(siteSeq);
						
		result.put("info", info);
		   
		return resultMap(result, CommConst.COMM_SUCCESS, "");		
	}
	
	/**
	 * 사이트 정보 추가
	 *
	 * @return Map
	 * @exception Exception
	 */	
	@RequestMapping(value = "/ajax/newSiteInfo.do",  method = RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object> newSiteInfo(HttpSession session,
															@RequestParam(name="i_custSeq", required = true) String custSeq,
															@RequestParam(name="i_kepcoCustNo", required = false) String kepcoCustNo,
															@RequestParam(name="i_ismartPwd", required = false) String ismartPwd,
															@RequestParam(name="i_siteNm", required = false) String siteNm,
															@RequestParam(name="i_bizTypeCd", required = false) String bizTypeCd,
															@RequestParam(name="i_connStsCd", required = false) String connStsCd,
															@RequestParam(name="i_connTypeCd", required = false) String connTypeCd,															
															@RequestParam(name="i_lat", required = false) String lat,
															@RequestParam(name="i_lng", required = false) String lng,
															@RequestParam(name="i_zipCd", required = false) String zipCd,
															@RequestParam(name="i_addr", required = false) String addr,
															@RequestParam(name="i_addrAdt", required = false) String addrAdt,
															@RequestParam(name="i_addrSido", required = false) String addrSido,
															@RequestParam(name="i_addrSigungu", required = false) String addrSigungu,
															@RequestParam(name="i_addrEubmyun", required = false) String addrEubmyun,
															@RequestParam(name="i_addrDongri", required = false) String addrDongri,
															@RequestParam(name="i_cntPsnId", required = false) String cntPsnId,
															@RequestParam(name="i_cntPsnNm", required = false) String cntPsnNm,
															@RequestParam(name="i_cntPsnHpno", required = false) String cntPsnHpno,
															@RequestParam(name="i_tlNo", required = false) String tlNo,
															@RequestParam(name="i_wethRgnCd", required = false) String wethRgnCd,
															@RequestParam(name="i_sunrisRgnNm", required = false) String sunrisRgnNm,
															@RequestParam(name="i_billCd", required = false) String billCd,
															@RequestParam(name="i_url", required = false) String url,
															@RequestParam(name="i_dstNm", required = false) String dstNm,
															@RequestParam(name="i_dstCd", required = false) String dstCd,
															@RequestParam(name="i_rmrk", required = false) String rmrk,
															@RequestParam(name="i_inspExpDate", required = false) String inspExpDate,
															@RequestParam(name="i_airQltyObsv", required = false) String airQltyObsv,
															@RequestParam(name="i_img_1", required = false) MultipartFile info_img_1,
															@RequestParam(name="i_img_2", required = false) MultipartFile info_img_2,
															@RequestParam(name="i_img_3", required = false) MultipartFile info_img_3) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
				
		SiteInfo siteInfo = new SiteInfo();
		
		//사이트명 중복 확인
		List<SiteInfo> infos = siteService.selectSiteList(getUserSiteList(session), CommConst.minStart, CommConst.maxEnd, "0", "desc", null, siteNm, null, null, null, CommConst.minDate, CommConst.maxDate);
		if (!StringUtil.isEmpty(siteNm) && infos != null) {
			if (infos.size() > 0) {
				return resultMap(result, CommConst.COMM_ERROR_VALIDATION, "이미 사용중인 사이트명이 있습니다.");	
			}
		}
		
		inspExpDate = inspExpDate.replaceAll("-", "");
		
		siteInfo.setCustSeq(Integer.parseInt(custSeq));
		siteInfo.setKepcoCustNo(kepcoCustNo);
		siteInfo.setIsmartPwd(ismartPwd);
		siteInfo.setSiteNm(siteNm);
		siteInfo.setBizTypeCd(bizTypeCd);
		siteInfo.setConnStsCd(connStsCd);
		siteInfo.setConnTypeCd(connTypeCd);
		siteInfo.setCntPsnHpno(cntPsnHpno);
		
		siteInfo.setLat(StringUtil.isStringDouble(lat) ? Double.parseDouble(lat) : 0);
		siteInfo.setLng(StringUtil.isStringDouble(lng) ? Double.parseDouble(lng) : 0);
		siteInfo.setZipCd(zipCd);
		siteInfo.setAddr(addr);
		siteInfo.setAddrAdt(addrAdt);
		siteInfo.setAddrSido(addrSido);
		siteInfo.setAddrSigungu(addrSigungu);
		siteInfo.setAddrEubmyun(addrEubmyun);
		siteInfo.setAddrDongri(addrDongri);
		siteInfo.setCntPsnId(cntPsnId);
		siteInfo.setCntPsnNm(cntPsnNm);
		siteInfo.setCntPsnHpno(cntPsnHpno);
		siteInfo.setTlNo(tlNo);
		siteInfo.setWethRgnCd(wethRgnCd);
		siteInfo.setSunrisRgnNm(sunrisRgnNm);
		siteInfo.setBillCd(billCd);
		siteInfo.setUrl(url);
		siteInfo.setDstNm(dstNm);
		siteInfo.setDstCd(dstCd);
		siteInfo.setRmrk(rmrk);
		siteInfo.setInspExpDate(inspExpDate);
		siteInfo.setAirQltyObsv(airQltyObsv);
		siteInfo.setCretr(getUserId(session).getUsrId());
		
		if (info_img_1 != null && !info_img_1.isEmpty()) {
			siteInfo.setImgFileNm1(info_img_1.getOriginalFilename());	
			siteInfo.setImg1(info_img_1.getBytes());
			siteInfo.setImgContentType1(info_img_1.getContentType());
		}
		if (info_img_2 != null && !info_img_2.isEmpty()) {
			siteInfo.setImgFileNm2(info_img_2.getOriginalFilename());	
			siteInfo.setImg2(info_img_2.getBytes());
			siteInfo.setImgContentType2(info_img_2.getContentType());
		}
		if (info_img_3 != null && !info_img_3.isEmpty()) {
			siteInfo.setImgFileNm3(info_img_3.getOriginalFilename());	
			siteInfo.setImg3(info_img_3.getBytes());
			siteInfo.setImgContentType3(info_img_3.getContentType());
		}
		
		int row = siteService.insertSiteInfo(siteInfo);
		   
		if (row <= 0) {
			return resultMap(result, CommConst.COMM_ERROR_DATABASE, "사이트 정보 추가에 실패 했습니다.");
		}
		
		//사이트 정보 조회
		List<SiteInfo> siteList = siteService.selectUsrMenuList(getUserId(session) , isAdmin(session));
		
		//사이트 정보 세션 저장
		for (SiteInfo site : siteList) {
			site.setChecked(true);
		}
			
		//사이트 정보 세션 저장	
		session.setAttribute("siteList", siteList);
		
		return resultMap(result, CommConst.COMM_SUCCESS, "");
	}
	
	/**
	 * 사이트 정보 수정
	 *
	 * @return Map
	 * @exception Exception
	 */	
	@RequestMapping(value = "/ajax/updateSiteInfo.do",  method = RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object> updateSiteInfo(HttpSession session,
															@RequestParam(name="i_siteSeq", required = true) String siteSeq,
															@RequestParam(name="i_custSeq", required = true) String custSeq,
															@RequestParam(name="i_kepcoCustNo", required = false) String kepcoCustNo,
															@RequestParam(name="i_ismartPwd", required = false) String ismartPwd,
															@RequestParam(name="i_siteNm", required = false) String siteNm,
															@RequestParam(name="i_bizTypeCd", required = false) String bizTypeCd,
															@RequestParam(name="i_connStsCd", required = false) String connStsCd,
															@RequestParam(name="i_connTypeCd", required = false) String connTypeCd,															
															@RequestParam(name="i_lat", required = false) String lat,
															@RequestParam(name="i_lng", required = false) String lng,
															@RequestParam(name="i_zipCd", required = false) String zipCd,
															@RequestParam(name="i_addr", required = false) String addr,
															@RequestParam(name="i_addrAdt", required = false) String addrAdt,
															@RequestParam(name="i_addrSido", required = false) String addrSido,
															@RequestParam(name="i_addrSigungu", required = false) String addrSigungu,
															@RequestParam(name="i_addrEubmyun", required = false) String addrEubmyun,
															@RequestParam(name="i_addrDongri", required = false) String addrDongri,
															@RequestParam(name="i_cntPsnId", required = false) String cntPsnId,
															@RequestParam(name="i_cntPsnNm", required = false) String cntPsnNm,
															@RequestParam(name="i_cntPsnHpno", required = false) String cntPsnHpno,
															@RequestParam(name="i_tlNo", required = false) String tlNo,
															@RequestParam(name="i_wethRgnCd", required = false) String wethRgnCd,
															@RequestParam(name="i_sunrisRgnNm", required = false) String sunrisRgnNm,
															@RequestParam(name="i_billCd", required = false) String billCd,
															@RequestParam(name="i_url", required = false) String url,
															@RequestParam(name="i_dstNm", required = false) String dstNm,
															@RequestParam(name="i_dstCd", required = false) String dstCd,
															@RequestParam(name="i_rmrk", required = false) String rmrk,
															@RequestParam(name="i_inspExpDate", required = false) String inspExpDate,
															@RequestParam(name="i_airQltyObsv", required = false) String airQltyObsv,
															@RequestParam(name="i_img_1", required = false) MultipartFile info_img_1,
															@RequestParam(name="i_img_2", required = false) MultipartFile info_img_2,
															@RequestParam(name="i_img_3", required = false) MultipartFile info_img_3) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
				
		SiteInfo siteInfo = new SiteInfo();
		
		//사이트명 중복 확인
		List<SiteInfo> infos = siteService.selectSiteList(getUserSiteList(session), CommConst.minStart, CommConst.maxEnd, "0", "desc", null, siteNm, null, null, null, CommConst.minDate, CommConst.maxDate);
		if (!StringUtil.isEmpty(siteNm) && infos != null) {
			for (SiteInfo info : infos) {
				if (info.getSiteSeq() != Integer.parseInt(siteSeq) && info.getSiteNm().equals(siteNm)) {
					return resultMap(result, CommConst.COMM_ERROR_VALIDATION, "이미 사용중인 사이트명이 있습니다.");	
				}
			}			
		}
		
		inspExpDate = inspExpDate.replaceAll("-", "");
		
		siteInfo.setSiteSeq(Integer.parseInt(siteSeq));
		siteInfo.setCustSeq(Integer.parseInt(custSeq));
		siteInfo.setKepcoCustNo(kepcoCustNo);
		siteInfo.setIsmartPwd(ismartPwd);
		siteInfo.setSiteNm(siteNm);
		siteInfo.setBizTypeCd(bizTypeCd);
		siteInfo.setConnStsCd(connStsCd);
		siteInfo.setConnTypeCd(connTypeCd);
		siteInfo.setCntPsnHpno(cntPsnHpno);
		
		siteInfo.setLat(StringUtil.isStringDouble(lat) ? Double.parseDouble(lat) : 0);
		siteInfo.setLng(StringUtil.isStringDouble(lng) ? Double.parseDouble(lng) : 0);
		siteInfo.setZipCd(zipCd);
		siteInfo.setAddr(addr);
		siteInfo.setAddrAdt(addrAdt);
		siteInfo.setAddrSido(addrSido);
		siteInfo.setAddrSigungu(addrSigungu);
		siteInfo.setAddrEubmyun(addrEubmyun);
		siteInfo.setAddrDongri(addrDongri);
		siteInfo.setCntPsnId(cntPsnId);
		siteInfo.setCntPsnNm(cntPsnNm);
		siteInfo.setCntPsnHpno(cntPsnHpno);
		siteInfo.setTlNo(tlNo);
		siteInfo.setWethRgnCd(wethRgnCd);
		siteInfo.setSunrisRgnNm(sunrisRgnNm);
		siteInfo.setBillCd(billCd);
		siteInfo.setUrl(url);
		siteInfo.setDstNm(dstNm);
		siteInfo.setDstCd(dstCd);
		siteInfo.setRmrk(rmrk);
		siteInfo.setInspExpDate(inspExpDate);
		siteInfo.setAirQltyObsv(airQltyObsv);
		siteInfo.setCretr(getUserId(session).getUsrId());
		
		siteInfo.setImg1(null);
		siteInfo.setImg2(null);
		siteInfo.setImg3(null);
		
		if (info_img_1 != null && !info_img_1.isEmpty()) {
			siteInfo.setImgFileNm1(info_img_1.getOriginalFilename());	
			siteInfo.setImg1(info_img_1.getBytes());
			siteInfo.setImgContentType1(info_img_1.getContentType());
		}
		if (info_img_2 != null && !info_img_2.isEmpty()) {
			siteInfo.setImgFileNm2(info_img_2.getOriginalFilename());	
			siteInfo.setImg2(info_img_2.getBytes());
			siteInfo.setImgContentType2(info_img_2.getContentType());
		}
		if (info_img_3 != null && !info_img_3.isEmpty()) {
			siteInfo.setImgFileNm3(info_img_3.getOriginalFilename());	
			siteInfo.setImg3(info_img_3.getBytes());
			siteInfo.setImgContentType3(info_img_3.getContentType());
		}
		
		int row = siteService.updateSiteInfo(siteInfo);
		   
		if (row <= 0) {
			return resultMap(result, CommConst.COMM_ERROR_DATABASE, "사이트 정보 수정에 실패 했습니다.");
		}
		
		//사이트 정보 조회
		List<SiteInfo> siteList = siteService.selectUsrMenuList(getUserId(session) , isAdmin(session));
		
		//사이트 정보 세션 저장
		for (SiteInfo site : siteList) {
			site.setChecked(true);
		}
			
		//사이트 정보 세션 저장	
		session.setAttribute("siteList", siteList);
		
		return resultMap(result, CommConst.COMM_SUCCESS, "");
	}
	
	/**
	 * 사이트 정보 삭제
	 *
	 * @return Map
	 * @exception Exception
	 */	
	@RequestMapping(value = "/ajax/delSiteInfo.do",  method = RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object> delSiteInfo(HttpSession session, @RequestParam(name="siteSeq", required = true) String siteSeq) throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		int row = siteService.deleteSiteInfo(siteSeq);
		   
		if (row <= 0) {
			return resultMap(result, CommConst.COMM_ERROR_DATABASE, "사이트 정보 삭제에 실패 했습니다.");
		}
		
		//사이트 정보 조회
		List<SiteInfo> siteList = siteService.selectUsrMenuList(getUserId(session) , isAdmin(session));
				
		//사이트 정보 세션 저장
		for (SiteInfo site : siteList) {
			site.setChecked(true);
		}
					
		//사이트 정보 세션 저장	
		session.setAttribute("siteList", siteList);
		
		return resultMap(result, CommConst.COMM_SUCCESS, "");
	}
	
	/**
	 * 사이트 이미지 정보 조회
	 *
	 * @return Map
	 * @exception Exception
	 */	
	@RequestMapping(value = "/ajax/getSiteImage.do",  method = RequestMethod.GET)	
	public  void getSiteImage(HttpSession session,  HttpServletResponse response, @RequestParam(name="siteSeq", required = true) String siteSeq, @RequestParam(name="no", required = true) String no) throws Exception {
		
		SiteInfo siteInfo = siteService.selectSiteInfo(siteSeq);
		   
		if (no.equals("1")) {
			response.setContentType(siteInfo.getImgContentType1());
			response.getOutputStream().write(siteInfo.getImg1());	
		}else if (no.equals("2")) {
			response.setContentType(siteInfo.getImgContentType2());
			response.getOutputStream().write(siteInfo.getImg2());
		}else if (no.equals("3")) {
			response.setContentType(siteInfo.getImgContentType3());
			response.getOutputStream().write(siteInfo.getImg3());
		}
		
	}
}
