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
	
	/*고객사 데이터 조회*/
	public List<CompanyInfo> selectCompanyList(String usrId, List<Integer> sites, int start, int length, String ordNo, String sort, String custNm, String bizNo, String cntPsnNm, String custTypeCd, String startDate, String endDate) throws Exception{
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
		param.put("cretr", usrId);
		
		return companyMapper.selectCompanyList(param);
	}
	
	/*고객사 정보 추가*/
	public int insertCompanyInfo(CompanyInfo companyInfo) throws Exception{		
		return companyMapper.insertCompanyInfo(companyInfo);
	}
}
