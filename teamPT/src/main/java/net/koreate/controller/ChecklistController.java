package net.koreate.controller;

import java.util.Date;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import net.koreate.service.ChecklistService;
import net.koreate.vo.ChecklistVo;
import net.koreate.vo.MemberVo;


@Controller
@RequestMapping
public class ChecklistController {
	
		@Inject
		ChecklistService checklistservice;
		
		MemberVo mv=new MemberVo(); //멤버객체생성
		
		
		
		
		
		
		@RequestMapping(value="/")
		public String list(HttpServletRequest request, Model model) throws Exception {
			
			///////////////////////////////////////////////////////////////////////////*로그인 되었을 때 테스트*/
			HttpSession session = request.getSession(); 
			
			//id,pw,name 테스트를 위한 임의의 설정값들
			mv.setMwid("id001");
			mv.setMwpw("1");
			mv.setMwname("d");
			mv.setMwregdate(new Date());
			//
			
			//session에 멤버값 담아주기
			session.setAttribute("memberVo",mv); 			
			
			///////////////////////////////////////////////////////////////////////////*로그인 되었을 때 테스트*/
			
			//이 부분부터 2줄은 step1_1값 관련
			//ChecklistVo step1_1list = checklistservice.getchecklist(mv); /*여기에 있는 mv 전역변수에 있는 멤버객체생성한 변수명임*/
			//model.addAttribute("step1_1list", step1_1list); /*키값,속성값*/
			
			ChecklistVo vo = checklistservice.getCheckList(mv);
			
	
			
			
			
			return "/wedding/list/step1";
			
		}
			
		
		
		
		
		@ResponseBody //HTTP요청 몸체를 자바객체로 전달받음, HTTP요청의 body내용으로 매핑하는 역할
		@RequestMapping(value="/wedding/list/step1") //클라이언트는 URL로 요청을 전송, 요청URL을 어떤 메서드가 처리할지 여부를 결정
		public String listStep1(HttpServletRequest request, Model model) throws Exception {
			
			
			///////////////////////////////////////////////////////////////////////////*로그인 되었을 때 테스트*/
			HttpSession session = request.getSession(); 
			
			//id,pw,name 테스트를 위한 임의의 설정값들
			mv.setMwid("id001");
			mv.setMwpw("1");
			mv.setMwname("d");
			mv.setMwregdate(new Date());
			//
			
			//session에 멤버값 담아주기
			session.setAttribute("memberVo",mv); 			
			
			///////////////////////////////////////////////////////////////////////////*로그인 되었을 때 테스트*/
						
			/*step1_1내용들의 값을 불러들이고 있음
			 * getParameter 안에 내역은 view/wedding/list/step1 input type=text의 name지정한 이름
			 * 불러들인 것 변수명 아래에서 checklistvo 담아 줄 때 사용*/
			String mwid = request.getParameter("mwid");
			
			String matchmaker_date = request.getParameter("step1_1text1");
			String matchmaker_day = request.getParameter("step1_1text2");
			String matchmaker_place = request.getParameter("step1_1text3");
			String matchmaker_etc = request.getParameter("step1_1text4");
			
			System.out.println(mwid+"  "
							   +matchmaker_date + "  "
							   +matchmaker_day+"  "
							   +matchmaker_place+"  "
							   +matchmaker_etc);
			
			/*ChecklistVo타입의 객체 생성과 checklistvo객체에 클라이언트에서 입력한 내용을 담아줌*/
			ChecklistVo checklistvo = new ChecklistVo();
			
			checklistvo.setMwid(mwid);
			checklistvo.setMatchmaker_date(matchmaker_date);
			checklistvo.setMatchmaker_day(matchmaker_day);
			checklistvo.setMatchmaker_place(matchmaker_place);
			checklistvo.setMatchmaker_etc(matchmaker_etc);
			
			System.out.println(checklistvo);
			
			/*checklistservice에 있는 checklistregiset메소드 호출*/
			checklistservice.checklistregister(checklistvo);
						
			return "success";
			
		}
		
		
		
		public String listStep2(HttpServletRequest request, Model model) throws Exception {
			
			
			
			return "";
			
		}

}

