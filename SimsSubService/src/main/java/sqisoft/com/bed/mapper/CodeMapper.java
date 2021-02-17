package sqisoft.com.bed.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import sqisoft.com.bed.model.CodeInfo;
import sqisoft.com.bed.model.GeneralInfo2;
import sqisoft.com.bed.model.SiDoInfo;

@Mapper("codeMapper")
public interface CodeMapper {
	
	/*코드 정보 조회*/
	List<CodeInfo> selectCode(Map<String, Object> param) throws Exception;
	
	/*주소 시,도 조회*/
	List<SiDoInfo> selectAddressBySiDo() throws Exception;
	
	/*주소 구,군 조회*/
	List<SiDoInfo> selectAddressByGunGu(String sidoNm) throws Exception;
	
	/*코드값 코드 조회*/
	String findCode(Map<String, Object> param) throws Exception;
	
    String findCodeSido(@Param("sidoNm") String sidoNm,@Param("sigunguNm") String sigunguNm) throws Exception;
    
    String findCodeSigungu(@Param("sidoNm") String sidoNm, @Param("sigunguNm") String sigunguNm) throws Exception;	
}
