package net.koreate.controller;

import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/wedding/checklist/*")
public class ChecklistController {
	
	@RequestMapping("/test")
	public void checklistTest(HttpServletRequest request, Model model) throws Exception {
		
		
		
	}
}

