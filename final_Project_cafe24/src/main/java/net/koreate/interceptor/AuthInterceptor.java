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
		session.setAttribute("dest", requestInfo);
		Object user = session.getAttribute("loginYES");
		
		if (user == null) {
			response.sendRedirect("/member/login");
			return false;
		} else {
			MemberVo memberVo = (MemberVo)user; int mwno = memberVo.getMwno(); // 현제 로그인된 유저정보의 번호
			
			int isMasterNO = service.isMasterSearch(); // 마스터의 번호를 검색
			
			if (requestInfo.equals("/wedding/list")) { return true; }
			
			if (mwno == isMasterNO) { System.out.println("마스터 입니다"); return true; } // 로그인된 정보와 마스터의 번호가 같을때 
			else { System.out.println("마스터가 아닙니다"); response.sendRedirect("/wedding"); return false; } // 다를때
		}
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		super.postHandle(request, response, handler, modelAndView);
	}
}
