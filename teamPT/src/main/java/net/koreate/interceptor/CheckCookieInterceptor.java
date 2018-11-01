package net.koreate.interceptor;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

import net.koreate.service.MemberService;
import net.koreate.vo.MemberVo;

public class CheckCookieInterceptor extends HandlerInterceptorAdapter {

	@Inject
	MemberService service;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		if (session.getAttribute("userInfo") != null) return true;
		
		Cookie loginCookie = WebUtils.getCookie(request, "LoginCookie");
		if (loginCookie != null) {
			String mwid = loginCookie.getValue();
			System.out.println("check Cookie mwid : " + mwid);
			MemberVo vo = service.getUserByUNO(mwid);
			if (vo != null) session.setAttribute("userInfo", vo);
		}
		return true;
	}

}
