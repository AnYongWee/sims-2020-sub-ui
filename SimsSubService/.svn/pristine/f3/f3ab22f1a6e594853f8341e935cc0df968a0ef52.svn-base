package sqisoft.com.bed.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import sqisoft.com.bed.comm.CommConst;
import sqisoft.com.bed.comm.CommHandlr;
import sqisoft.com.bed.mapper.MainMapper;
import sqisoft.com.bed.model.BldMainInfo;
import sqisoft.com.bed.model.GeneralInfo1;
import sqisoft.com.bed.model.GeneralInfo2;

@Service("mainService")
public class MainService extends CommHandlr{
	@Resource(name="mainMapper")
	private MainMapper mainMapper;
	
	/**
	 * 건축물 리스트 조회.
	 * @param userInfo - 등록할 정보가 담긴 VO
	 * @return List<UserInfo>
	 * @exception Exception
	 */	
 	public List<BldMainInfo> selectBldList(int start,
 													 int length,
 													 String ordNo,
 													 String sort,
 													 String searchType,
 													 String searchVal,
 													 String regUserNm,
 													 String stDate,
 													 String edDate) throws Exception{
 		
 		Map<String, Object> params = new HashMap<String, Object>();	 		
 		params.put("start", start);
 		params.put("length", length);
 		params.put("ordNo", ordNo);
 		params.put("sort", sort);
 		params.put("searchType", searchType);
 		params.put("searchVal", searchVal);
 		params.put("regUserNm", regUserNm);
 		params.put("stDate", stDate);
 		params.put("edDate", edDate);
 		
		return mainMapper.selectBldList(params);			
	}

 	@Transactional(propagation=Propagation.REQUIRED , rollbackFor=Exception.class)
    public Map<String, Object> deleteBldInfo(GeneralInfo2 generalInfo2) throws Exception{
        Map<String, Object> result = new HashMap<String, Object>();
        
        // 건물정보 삭제
        if (mainMapper.deleteBldInfo1(generalInfo2) < 0 ) {
            return resultMap(result, CommConst.COMM_ERROR_DATABASE , "건물정보 삭제에 실패 하였습니다.");
        }
        if (mainMapper.deleteBldInfo2(generalInfo2) < 0 ) {
            return resultMap(result, CommConst.COMM_ERROR_DATABASE , "건물정보 삭제에 실패 하였습니다.");
        }
        if (mainMapper.deleteBldInfo3(generalInfo2) < 0 ) {
            return resultMap(result, CommConst.COMM_ERROR_DATABASE , "건물정보 삭제에 실패 하였습니다.");
        }
        if (mainMapper.deleteBldInfo4(generalInfo2) < 0 ) {
            return resultMap(result, CommConst.COMM_ERROR_DATABASE , "건물정보 삭제에 실패 하였습니다.");
        }
        if (mainMapper.deleteBldInfo5(generalInfo2) < 0 ) {
            return resultMap(result, CommConst.COMM_ERROR_DATABASE , "건물정보 삭제에 실패 하였습니다.");
        }
        if (mainMapper.deleteBldInfo6(generalInfo2) < 0 ) {
            return resultMap(result, CommConst.COMM_ERROR_DATABASE , "건물정보 삭제에 실패 하였습니다.");
        }
        if (mainMapper.deleteBldInfo7(generalInfo2) < 0 ) {
            return resultMap(result, CommConst.COMM_ERROR_DATABASE , "건물정보 삭제에 실패 하였습니다.");
        }
        if (mainMapper.deleteBldInfo8(generalInfo2) < 0 ) {
            return resultMap(result, CommConst.COMM_ERROR_DATABASE , "건물정보 삭제에 실패 하였습니다.");
        }
        if (mainMapper.deleteBldInfo9(generalInfo2) < 0 ) {
            return resultMap(result, CommConst.COMM_ERROR_DATABASE , "건물정보 삭제에 실패 하였습니다.");
        }
        if (mainMapper.deleteBldInfo10(generalInfo2) < 0 ) {
            return resultMap(result, CommConst.COMM_ERROR_DATABASE , "건물정보 삭제에 실패 하였습니다.");
        }
        if (mainMapper.deleteBldInfo11(generalInfo2) < 0 ) {
            return resultMap(result, CommConst.COMM_ERROR_DATABASE , "건물정보 삭제에 실패 하였습니다.");
        }
        if (mainMapper.deleteBldInfo12(generalInfo2) < 0 ) {
            return resultMap(result, CommConst.COMM_ERROR_DATABASE , "건물정보 삭제에 실패 하였습니다.");
        }
        if (mainMapper.deleteBldInfo13(generalInfo2) < 0 ) {
            return resultMap(result, CommConst.COMM_ERROR_DATABASE , "건물정보 삭제에 실패 하였습니다.");
        }
        if (mainMapper.deleteBldInfo14(generalInfo2) < 0 ) {
            return resultMap(result, CommConst.COMM_ERROR_DATABASE , "건물정보 삭제에 실패 하였습니다.");
        }
        if (mainMapper.deleteBldInfo15(generalInfo2) < 0 ) {
            return resultMap(result, CommConst.COMM_ERROR_DATABASE , "건물정보 삭제에 실패 하였습니다.");
        }
        if (mainMapper.deleteBldInfo16(generalInfo2) < 0 ) {
            return resultMap(result, CommConst.COMM_ERROR_DATABASE , "건물정보 삭제에 실패 하였습니다.");
        }
        if (mainMapper.deleteBldInfo17(generalInfo2) < 0 ) {
            return resultMap(result, CommConst.COMM_ERROR_DATABASE , "건물정보 삭제에 실패 하였습니다.");
        }
        if (mainMapper.deleteBldInfo18(generalInfo2) < 0 ) {
            return resultMap(result, CommConst.COMM_ERROR_DATABASE , "건물정보 삭제에 실패 하였습니다.");
        }
        if (mainMapper.deleteBldInfo19(generalInfo2) < 0 ) {
            return resultMap(result, CommConst.COMM_ERROR_DATABASE , "건물정보 삭제에 실패 하였습니다.");
        }
        if (mainMapper.deleteBldInfo20(generalInfo2) < 0 ) {
            return resultMap(result, CommConst.COMM_ERROR_DATABASE , "건물정보 삭제에 실패 하였습니다.");
        }
        if (mainMapper.deleteBldInfo21(generalInfo2) < 0 ) {
            return resultMap(result, CommConst.COMM_ERROR_DATABASE , "건물정보 삭제에 실패 하였습니다.");
        }
        
        
        return resultMap(result, CommConst.COMM_SUCCESS , "");
    }
}
