package sqisoft.com.bed.comm;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

import org.omg.CORBA.UserException;
import org.springframework.util.StringUtils;

public class DateUtil {
    public static final String DATE_PICKER_FORMAT = "yyyy-MM-dd HH:mm:ss.SSS";
    public static final String TIME_ZONE_NAME = ZONENAME.Seoul;

    /**
     * @info : 시간 호출 (한국 시간 기준)     - DATE
     * @param : void
     * 
     * @return Date (호출 시간)
     */
    public static Date getDate() {
        final Date nowDate = new Date();
        try {
            final SimpleDateFormat simpleDate = new SimpleDateFormat(DATE_PICKER_FORMAT);
            simpleDate.setTimeZone(TimeZone.getTimeZone(TIME_ZONE_NAME));           
            String tempDate = simpleDate.format(nowDate);
            
            final SimpleDateFormat transFormat = new SimpleDateFormat(DATE_PICKER_FORMAT);
            
            return transFormat.parse(tempDate);
        } catch (ParseException e){
            return nowDate;
        }
    }
    
    public static String getFullDayString() {
        final SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
        String resultString ;
        
        simpleDate.setTimeZone(TimeZone.getTimeZone(ZONENAME.Seoul));           
        
        resultString = simpleDate.format(new Date());
        
        if (StringUtils.isEmpty(resultString)) {
            return "";
        } else {
            return resultString;
        }
    }
    
    /**
     * @info : 시간 호출 (한국 시간 기준)     - STRING
     * @param : void
     * 
     * @return String (호출 시간 "yyyy-MM-dd HH:mm:ss.SSS")
     */
    public static String getDateString() {
        return toString(getDate());
    }
    
    /**
     * @info : 국가별 시간 호출                    - DATE
     * @param : timeZone = 타임존 코드 (JONENAME Class 참조)
     * 
     * @return Date (타임존 코드에 호출 시간)
     */
    public static Date getDate(String timeZone) {
        final Date nowDate = new Date();
        try {
            final SimpleDateFormat simpleDate = new SimpleDateFormat(DATE_PICKER_FORMAT);
            simpleDate.setTimeZone(TimeZone.getTimeZone(timeZone));         
            String tempDate = simpleDate.format(nowDate);
            
            final SimpleDateFormat transFormat = new SimpleDateFormat(DATE_PICKER_FORMAT);
            
            return transFormat.parse(tempDate);
        } catch (ParseException e){
            return nowDate;
        }
    }
    
    /**
     * @info : 국가별 시간 호출                    - STRING
     * @param : timeZone = 타임존 코드 (JONENAME Class 참조)
     * 
     * @return String (타임존 코드에 호출 시간 "yyyy-MM-dd HH:mm:ss.SSS")
     */
    public static String getDateString(String timeZone) {
        return toString(getDate(timeZone));     
    }
    
    /**
     * @info : 국가별 시간 호출                    - STRING
     * @param : timeZone = 타임존 코드 (JONENAME Class 참조)
     * @param : pattern = 보여줄 날짜 형식 (yyyy-MM-dd HH:mm:ss.SSS) 
     * 
     * @return String (타임존 코드에 호출 시간)
     */
    public static String getDateString(String timeZone, String pattern) {
        return toString(getDate(timeZone), pattern);        
    }

    /**
     * @info : 유닉스 타임 사용자 임의 시간 호출  - DATE
     * @param : timeSec = 사용자 시간 값
     * @param : timeZone = 타임존 코드 (JONENAME Class 참조)
     * 
     * @return Date (호출 시간)
     */
    public static Date getDate(long timeSec, String timeZone) {
        final Date nowDate = new Date(timeSec);
        try {
            final SimpleDateFormat simpleDate = new SimpleDateFormat(DATE_PICKER_FORMAT);
            simpleDate.setTimeZone(TimeZone.getTimeZone(timeZone));         
            String tempDate = simpleDate.format(nowDate);
            
            final SimpleDateFormat transFormat = new SimpleDateFormat(DATE_PICKER_FORMAT);
            
            return transFormat.parse(tempDate);
        } catch (ParseException e){
            return nowDate;
        }
    }

    /**
     * @info : 유닉스 타임 사용자 임의 시간 호출  - STRING
     * @param : timeSec = 사용자 시간 값
     * @param : timeZone = 타임존 코드 (JONENAME Class 참조)
     * 
     * @return String (타임존 코드에 호출 시간 "yyyy-MM-dd HH:mm:ss.SSS")
     */
    public static String getDateString(long timeSec, String timeZone) {
        final Date nowDate = new Date(timeSec);
        try {
            final SimpleDateFormat simpleDate = new SimpleDateFormat(DATE_PICKER_FORMAT);
            simpleDate.setTimeZone(TimeZone.getTimeZone(timeZone));         
            String tempDate = simpleDate.format(nowDate);
            
            final SimpleDateFormat transFormat = new SimpleDateFormat(DATE_PICKER_FORMAT);
                        
            return toString(transFormat.parse(tempDate), DATE_PICKER_FORMAT);
        } catch (ParseException e){
            return toString(nowDate, DATE_PICKER_FORMAT);
        }
    }
    
    
    /********************************************************************/

    
    /**
     * @info : 사용자가 지정한 시간 Date객체를 문자열로 변경한다.
     * @param : date = 사용자가 지정한 시간 
     * 
     * @return String (Type 패턴이 적용된 날짜 문자열 yyyy-MM-dd HH:mm:ss.SSS) 
     */
    public static String toString(Date date) {
        SimpleDateFormat formatter = new SimpleDateFormat(DATE_PICKER_FORMAT);
        return formatter.format(date); 
    }
    
    /**
     * @info : 현재시간 Date객체를 패턴화된 문자열로 변경한다.
     * @param : pattern = 보여줄 날짜 형식 (yyyy-MM-dd HH:mm:ss.SSS) 
     * 
     * @return String (Type 패턴이 적용된 날짜 문자열) 
     */
    public static String toString(String pattern) {
        SimpleDateFormat formatter = new SimpleDateFormat(pattern);
        return formatter.format(getDate()); 
    }
    
    /**
     * @info : 사용자가 지정한 시간 Date객체를 패턴화된 문자열로 변경한다.
     * @param : date = Date 객체
     * @param : pattern = 보여줄 날짜 형식 (yyyy-MM-dd HH:mm:ss.SSS) 
     * 
     * @return String (Type 패턴이 적용된 날짜 문자열) 
     */
    public static String toString(Date date, String pattern) {
        SimpleDateFormat formatter = new SimpleDateFormat(pattern);
        return formatter.format(date); 
    }
    
    public static Date stringToDate(String string, String pattern) {
        SimpleDateFormat dt = new SimpleDateFormat(pattern); 
        Date date;
        try {
            date = dt.parse(string);
        } catch (ParseException e) {
            date = new Date();
        }
        
        return date;
    }
    
    public static String dateCalcToString(Date date, String guBun, int value, String pattern) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        if ("YEAR".equalsIgnoreCase(guBun)) {
            cal.add(Calendar.YEAR, value);
        } else if ("MONTH".equalsIgnoreCase(guBun)) {
            cal.add(Calendar.MONTH, value);
        } else if ("DAY".equalsIgnoreCase(guBun)) {
            cal.add(Calendar.DATE, value);
        } else if ("HOUR".equalsIgnoreCase(guBun)) {
            cal.add(Calendar.HOUR, value);
        } else {
            cal.add(Calendar.MINUTE, value);
        }
        
        SimpleDateFormat formatter = new SimpleDateFormat(pattern);
        return formatter.format(cal.getTime()); 
    }

    
    /********************************************************************/
    
    
    /**
     * @info : 사용자가 변경한 날짜 정보
     * @param : Type = 구분 (S = 초, M = 분, H = 시, D = 일, MM = 월)
     * @param : value = 변경할 정보 (+1, -1 형식)
     * @param : pattern = 보여줄 날짜 형식 (yyyy-MM-dd HH:mm:ss.SSS) 
     * 
     * @return String (변경된 시간 값)
     */
    @SuppressWarnings("serial")
    public static String changeDateToString(String Type, int value, String pattern) {
        Date nowDate = getDate();
        Calendar cal = Calendar.getInstance();
        cal.setTime(nowDate);
        
        if ("S".equals(Type)) {
            cal.add ( Calendar.SECOND, value );
        } else if ("M".equals(Type)) {
            cal.add ( Calendar.MINUTE, value );
        } else if ("H".equals(Type)) {
            cal.add ( Calendar.HOUR, value );
        } else if ("D".equals(Type)) {
            cal.add ( Calendar.DAY_OF_MONTH, value );
        } else if ("MM".equals(Type)) {
            cal.add ( Calendar.MONTH, value );
        }
        
        nowDate = new Date(cal.getTimeInMillis());
        String resultString = null;
        try {
            resultString = toString(nowDate, pattern);
            if (StringUtils.isEmpty(resultString)) throw new UserException("변환 실패") { };
        } catch (UserException e) {
            resultString = null;
        }
        
        if (resultString == null) {
            return toString(getDate(), pattern);
        } else {
            return resultString;
        }
    }
    
    
    /********************************************************************/

    
    /**
     * 유닉스 타임 GMT로 변경 (한국시간 기준)
     * @param unixSeconds = 유닉스 타임
     * @return Date Type
     */
    public static Date getUnixTimeToDate(long unixSeconds) {
        Date date = getUnixTimeToDate(unixSeconds, TIME_ZONE_NAME);
        
        return date;
    }
    
    /**
     * 유닉스 타임 GMT로 변경 (한국시간 기준)
     * @param unixSeconds = 유닉스 타임
     * @return String Type
     */
    public static String getUnixTimeToString(long unixSeconds) {
        Date date = getUnixTimeToDate(unixSeconds, TIME_ZONE_NAME);
        
        return toString(date, DATE_PICKER_FORMAT);
    }
    
    /**
     * 유닉스 타임 GMT로 변경 (한국시간 기준)
     * @param unixSeconds = 유닉스 타임
     * @param timeJoneName = Asia/Seoul
     * @return Date Type
     */
    public static Date getUnixTimeToDate(long unixSeconds, String timeJoneName) {
        return getDate(unixSeconds, timeJoneName);
    }
	
	
	
	
	/********************************************************************/	
	/********************************************************************/
	/********************************************************************/
	/********************************************************************/
	/********************************************************************/
	/********************************************************************/
	/********************************************************************/
	/********************************************************************/
	/********************************************************************/
	/********************************************************************/
	/********************************************************************/
	/********************************************************************/
	/********************************************************************/
	/********************************************************************/
	/********************************************************************/
	/********************************************************************/
	/********************************************************************/
	/********************************************************************/
	/********************************************************************/
	/********************************************************************/
	/********************************************************************/
	/********************************************************************/
	
	
}
