package net.koreate.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.WebUtils;

import net.koreate.dto.LoginDto;
import net.koreate.service.MemberService;
import net.koreate.vo.MemberVo;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService service;
	
	/*@RequestMapping(value = "/", method = RequestMethod.GET)
	public void GET() throws Exception {
		logger.info("GET Called!!!");
	}

	@RequestMapping(value = "/", method = RequestMethod.POST)
	public void POST() throws Exception {
		logger.info("POST Called!!!");
	}

	@RequestMapping(value = "/")
	public void GET_POST() throws Exception {
		logger.info("GET & POST Called!!!");
	}*/
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registerGET(Model model) throws Exception {
		logger.info("registerGET Called!!!");
		List<MemberVo> vo = service.searchID();
		
		model.addAttribute("memberIDs", vo);
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void loginGET() throws Exception {
		logger.info("loginGET Called!!!");
	}
	
	@RequestMapping(value = "/registerPost", method = RequestMethod.POST)
	public String registerPost(MemberVo vo, HttpServletRequest request, Model model) throws Exception {
		logger.info("registerPost Called!!!");
		
		service.register(vo);
		
		String result = (String) request.getAttribute("result");
		
		if (result.equals("FAIL")) {
			model.addAttribute("message", "해당 아이디는 존재합니다.");
			return "redirect:/member/register";
		} else {
			model.addAttribute("message", "회원가입에 성공하셨습니다");
			return "redirect:/member/login";
		}
	}
	
	@RequestMapping(value = "/loginPost", method = RequestMethod.POST)
	public String loginPost(LoginDto dto, HttpServletRequest request, Model model) throws Exception {
		logger.info("loginPost Called!!!");
		
		model.addAttribute("loginDto", dto);
		return "home";
	}
	
	@RequestMapping("/logOut")
	public String signOut(HttpServletRequest request, HttpSession session, HttpServletResponse response) {
		Object obj = session.getAttribute("loginYES");
		
		if(obj != null) {
			session.removeAttribute("loginYES");
			session.invalidate();
			
			Cookie loginCookie = WebUtils.getCookie(request, "LoginCookie");
			if(loginCookie != null) {
				loginCookie.setPath("/");
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
			}
		}
		return "redirect:/";
	}
	
	@RequestMapping(value = "/myInfo", method = RequestMethod.GET)
	public void myInfoGET(HttpSession session, Model model) throws Exception {
		logger.info("myInfoGET Called!!!");
		Object obj = session.getAttribute("loginYES");
		
		model.addAttribute("memberInfo", obj);
	}
	
	@RequestMapping(value = "/editInfo", method = RequestMethod.GET)
	public void editInfoGET(HttpSession session, Model model) throws Exception {
		logger.info("editInfoGET Called!!!");
		Object obj = session.getAttribute("loginYES");
		
		model.addAttribute("memberInfo", obj);
	}
	
	@RequestMapping(value = "/editInfo", method = RequestMethod.POST)
	public String editInfoPOST(MemberVo vo, HttpSession session, RedirectAttributes rttr) throws Exception {
		logger.info("editInfoPOST Called!!!");
		
		service.editInfo(vo);
		
		MemberVo result = service.getUserByVO(vo);
		
		if (result != null) {
			session.setAttribute("loginYES", result);
			rttr.addFlashAttribute("result", result);
			return "redirect:/member/myInfo";
		}

		rttr.addFlashAttribute("result", result);
		return "redirect:/member/editInfo";
	}
	
}
