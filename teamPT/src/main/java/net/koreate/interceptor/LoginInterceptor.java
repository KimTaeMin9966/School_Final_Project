package net.koreate.interceptor;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import net.koreate.dto.LoginDto;
import net.koreate.service.MemberService;
import net.koreate.vo.MemberVo;

public class LoginInterceptor extends HandlerInterceptorAdapter{
	
	@Inject
	MemberService service;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		if(session.getAttribute("userInfo") != null) {
			System.out.println("세션에 정보가 존재합니다.");
			session.removeAttribute("userInfo");
			session.invalidate();
		}
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		HttpSession session = request.getSession();
		ModelMap obj = modelAndView.getModelMap();
		LoginDto dto = (LoginDto)obj.get("loginDto");
		
		MemberVo vo = service.signIn(dto);
		
		if (vo != null) {
			session.setAttribute("userInfo", vo);
			
			if(dto.isUseCookie()) {
				Cookie cookie = new Cookie("LoginCookie", String.valueOf(vo.getMwid()));
				cookie.setPath("/");
				cookie.setMaxAge(60 * 60 * 24 * 7);
				response.addCookie(cookie);
				
				System.out.println("mwid : " + vo.getMwid());
				System.out.println("Cookie : " + cookie.getValue());
				System.out.println("쿠키생성 완료");
			}
		}/* else {
			RequestDispatcher rd = request.getRequestDispatcher("/member/login");
			request.setAttribute("result", "회원정보가 일치하지 않습니다.");
			rd.forward(request, response);
		}*/
		
		/*Object dest = session.getAttribute("dest");
		System.out.println("dest : " + dest);
		response.sendRedirect((dest != null) ? (String)dest : "/");*/
	}
	
}