package net.koreate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/checklist/*")
public class ChecklistController {
	
	@RequestMapping("")
	public String test() {
		return "/checklist/test";
	}
}

