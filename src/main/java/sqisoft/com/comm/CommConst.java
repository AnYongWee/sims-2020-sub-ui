package sqisoft.com.comm;

public class CommConst {
	
	/*결과 코드*/
	public static int COMM_SUCCESS = 0;								//성공
	public static int COMM_ERROR = -99;								//공통 요류	
	public static int COMM_ERROR_VALIDATION = -1;				//유효성 검증 오류
	public static int COMM_ERROR_DATABASE = -2;				//데이터베이스 처리오류
	public static int COMM_ERROR_NOT_USER = -3;				//사용자 정보 없음
	public static int COMM_ERROR_NOT_ENCRY_KEY = -4;		//암호화 키 없음
	public static int COMM_ERROR_TIME_OUT = -5;				//세션 타임아웃
	
	public static int minStart = 0;
	public static int maxEnd = 9999;
	
	public static String minDate = "19000101";
	public static String maxDate = "299900101";
	
	public static String adminCustNm = "SQISOFT(주)";			//관리자 고객사 명
}
