package sqisoft.com.mapper;

import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import sqisoft.com.model.CompanyInfo;

@Mapper("companyMapper")
public interface CompanyMapper {
	/*고객사 리스트*/
	List<CompanyInfo> selectCompanyList(Map<String, Object> param) throws Exception;
	
	/*고객사 정보*/
	List<CompanyInfo> selectCompanyInfo(Map<String, Object> param) throws Exception;
	
	/*고객사 정보 추가*/
	int insertCompanyInfo(CompanyInfo companyInfo) throws Exception;
	
	/*고객사 정보 수정*/
	int updateCompanyInfo(CompanyInfo companyInfo) throws Exception;
	
	/*고객사 정보 삭제*/
	int deleteCompanyInfo(Map<String, Object> param) throws Exception;
}
