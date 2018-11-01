package net.koreate.interceptor;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import net.koreate.service.MemberService;
import net.koreate.vo.MemberVo;

public class AuthInterceptor extends HandlerInterceptorAdapter {
	
	@Inject
	MemberService service;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		String requestInfo = request.getRequestURI();
		System.out.println("requestInfo : " + requestInfo);
		
		HttpSession session = request.getSession();
		Object user = session.getAttribute("loginYES");
		
		if (user == null) {
			response.sendRedirect("/member/login");
			return false;
		} else {
			MemberVo memberVo = (MemberVo)user; // 현제 유저 정보
			int mwno = memberVo.getMwno();
			
			MemberVo isMaster = service.searchByNO(mwno);
			
			if (!isMaster.equals(memberVo)) { System.out.println("마스터가 아닙니다."); return true; }
			else { System.out.println("동일 하지 않습니다."); response.sendRedirect("/"); return false; }
		}
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		super.postHandle(request, response, handler, modelAndView);
	}
}
