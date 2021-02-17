package sqisoft.com.bed.comm;

public class StringUtil {
	
	/*문자열 byte 길이 구하기*/
	public static int getByteLength(String str, String characterset) {
		int result = 0;
		try {
			result = str.getBytes(characterset).length;
		}catch(Exception err) {
			
		}
		return result;
	}
	
	/*문자열 정수,실수 형인지 확인*/
	public static boolean isStringDouble(String str) {
         try {
        	 if (str == null || str.length() == 0) {
        		 //문자열 값이 없을 경우 체크 하지 않음
        		 return true;
        	 }
        	 
        	 Double.parseDouble(str);
        	 return true;
        	 
         } catch (NumberFormatException e) {
              return false;
        }
	 }
	
	/*문자열 길이 확인*/
	public static int len(String str) {
		if (str == null) {
			return 0;
		}
		return str.length();
	}
	
	//문자열 자르기
	public static String substr(String str, int start, int end) {
		String result = "";
		
		if (str.length() > start) {
			result = str.substring(start, end);	
		}
		
		return result.trim();
	}
	
	//문자열 특정 문자 전체 치환
	public static String replaceAll(String str) {
		if (str == null) {
			str = "";
		}
		return str.replaceAll(" ", "");
	}
	
	//문자열 빈값 여부
	public static boolean isEmpty(String str) {
		
		if (str == null) {
			return true;
		}
		
		str = str.trim();
		
		if (str.equals("")) {
			return true;
		}
		
		return false;
	}

}
