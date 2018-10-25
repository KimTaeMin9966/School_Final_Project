package net.koreate.controller;

import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/wedding/*")
public class WeddingController {
	@RequestMapping(value="/send")
	public void send() {
		System.out.println("send");
	}
	
	@RequestMapping(value="/milo")
	public void milo() {
		System.out.println("Milo");
	}
	@RequestMapping(value="/ready")
	public void rady() {
		System.out.println("rady");
	}

	@RequestMapping(value="/consulting")
	public void consulting() {
		System.out.println("consulting");
	}
	
	@RequestMapping(value="/hall")
	public void hall() {
		System.out.println("hall");
	}
	
	@RequestMapping(value="/studio")
	public void studio() {
		System.out.println("studio");
	}
	
	@RequestMapping(value="/list")
	public void list(HttpServletRequest request, Model model) {
		
		String[] checklistArr= request.getParameterValues("test");
	
	
	model.addAttribute("checklistArr",checklistArr);
	
	System.out.println(Arrays.toString(checklistArr));
	}
	
	
}


