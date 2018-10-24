package net.koreate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("wedding/checklist/*")
public class ChecklistController {
	
	@RequestMapping("")
	public void test() {
		
	}
}

