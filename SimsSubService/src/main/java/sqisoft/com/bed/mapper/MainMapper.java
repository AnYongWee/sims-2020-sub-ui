package sqisoft.com.bed.mapper;

import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import sqisoft.com.bed.model.BldMainInfo;
import sqisoft.com.bed.model.GeneralInfo1;
import sqisoft.com.bed.model.GeneralInfo2;

@Mapper("mainMapper")
public interface MainMapper {
	
	/*건축물 리스트 조회*/
	List<BldMainInfo> selectBldList(Map<String, Object> param) throws Exception;

	/*건축물 정보 삭제*/
	int deleteBldInfo1(GeneralInfo2 generalInfo2) throws Exception;
    int deleteBldInfo2(GeneralInfo2 generalInfo2) throws Exception;
    int deleteBldInfo3(GeneralInfo2 generalInfo2) throws Exception;
    int deleteBldInfo4(GeneralInfo2 generalInfo2) throws Exception;
    int deleteBldInfo5(GeneralInfo2 generalInfo2) throws Exception;
    int deleteBldInfo6(GeneralInfo2 generalInfo2) throws Exception;
    int deleteBldInfo7(GeneralInfo2 generalInfo2) throws Exception;
    int deleteBldInfo8(GeneralInfo2 generalInfo2) throws Exception;
    int deleteBldInfo9(GeneralInfo2 generalInfo2) throws Exception;
    int deleteBldInfo10(GeneralInfo2 generalInfo2) throws Exception;
    int deleteBldInfo11(GeneralInfo2 generalInfo2) throws Exception;
    int deleteBldInfo12(GeneralInfo2 generalInfo2) throws Exception;
    int deleteBldInfo13(GeneralInfo2 generalInfo2) throws Exception;
    int deleteBldInfo14(GeneralInfo2 generalInfo2) throws Exception;
    int deleteBldInfo15(GeneralInfo2 generalInfo2) throws Exception;
    int deleteBldInfo16(GeneralInfo2 generalInfo2) throws Exception;
    int deleteBldInfo17(GeneralInfo2 generalInfo2) throws Exception;
    int deleteBldInfo18(GeneralInfo2 generalInfo2) throws Exception;
    int deleteBldInfo19(GeneralInfo2 generalInfo2) throws Exception;
    int deleteBldInfo20(GeneralInfo2 generalInfo2) throws Exception;
    int deleteBldInfo21(GeneralInfo2 generalInfo2) throws Exception;

    
}
