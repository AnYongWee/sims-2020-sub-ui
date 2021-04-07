package sqisoft.com.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import sqisoft.com.mapper.CompanyMapper;
import sqisoft.com.model.CompanyInfo;

@Service("companyService")
public class CompanyService {
	
	@Resource(name="companyMapper")
	private CompanyMapper companyMapper;
	
	/*고객사 리스트 조회*/
	public List<CompanyInfo> selectCompanyList(boolean isAdmin, List<Integer> sites, int start, int length, String ordNo, String sort, String custNm, String bizNo, String cntPsnNm, String custTypeCd, String startDate, String endDate) throws Exception{
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("sites", sites);
		param.put("start", start);
		param.put("length", length);		
		param.put("ordNo", ordNo);
		param.put("sort", sort);				
		param.put("custNm", custNm);
		param.put("bizNo", bizNo);
		param.put("cntPsnNm", cntPsnNm);
		param.put("custTypeCd", custTypeCd);		
		param.put("startDate", startDate);
		param.put("endDate", endDate);
		param.put("isAdmin", isAdmin);
		
		return companyMapper.selectCompanyList(param);
	}
	
	/*고객사 정보 조회*/
	public List<CompanyInfo> selectCompanyInfo(String custSeq, String custNm, String bizNo) throws Exception{	
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("custSeq", custSeq);
		param.put("custNm", custNm);
		param.put("bizNo", bizNo);			
		return companyMapper.selectCompanyInfo(param);
	}
	
	/*고객사 정보 추가*/
	public int insertCompanyInfo(CompanyInfo companyInfo) throws Exception{		
		return companyMapper.insertCompanyInfo(companyInfo);
	}
	
	/*고객사 정보 수정*/
	public int updateCompanyInfo(CompanyInfo companyInfo) throws Exception{		
		return companyMapper.updateCompanyInfo(companyInfo);
	}
	
	/*고객사 정보 삭제*/
	public int deleteCompanyInfo(String custSeq) throws Exception{		
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("custSeq", custSeq);
		return companyMapper.deleteCompanyInfo(param);
	}
}
