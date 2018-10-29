package net.koreate.controller;

import org.springframework.stereotype.Controller;
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
	
}


