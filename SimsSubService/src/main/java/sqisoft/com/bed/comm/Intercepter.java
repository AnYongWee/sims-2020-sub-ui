package sqisoft.com.bed.comm;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class Intercepter extends HandlerInterceptorAdapter{
	
	private static final Logger logger = LoggerFactory.getLogger(Intercepter.class);
	
	//  인증 체크가 필요 없는 URL 리스트
	private List<String> urls;
 
	public void setUrls(List<String> urls) {
		this.urls = urls;
	}
 	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		
		// 인증 필요 없는 url 예외 처리
		for(int i=0; i < urls.size(); i++){         
			if (request.getRequestURI().matches(urls.get(i))) {				
                return true;
			}
		}
 
		// 세션 로그인 정보 확인
		HttpSession session = request.getSession();
		if (session.getAttribute("user") == null) {
			logger.info("current user is not logged");
			response.sendRedirect("/auth/login.do");
			return false;
		}
 
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object obj, ModelAndView mav) throws Exception {
		
	}
}
