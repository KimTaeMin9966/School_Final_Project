package net.koreate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/wedding/*")
public class WeddingController {
	@RequestMapping(value="/send")
	public void send() {
		System.out.println("send접속완료");
	}
	
}


