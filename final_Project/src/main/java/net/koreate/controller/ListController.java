package net.koreate.controller;

import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/wedding/list/*")
public class ListController {

		@RequestMapping(value="step1")
		public String listStep1(HttpServletRequest request, Model model) {
			
			String[] checklistArr= request.getParameterValues("test");
		
		
			model.addAttribute("checklistArr",checklistArr);
			
			System.out.println(Arrays.toString(checklistArr));
			
			return"/wedding/list/step1";
		} 
		
		
		@RequestMapping(value="step2")
		public String listStep2(HttpServletRequest request, Model model) {
			
			String[] checklistArr= request.getParameterValues("test");
		
		
			model.addAttribute("checklistArr",checklistArr);
			
			System.out.println(Arrays.toString(checklistArr));
			
			return"/wedding/list/step2";
		} 
		
		
		@RequestMapping(value="step3")
		public String listStep3(HttpServletRequest request, Model model) {
			
			String[] checklistArr= request.getParameterValues("test");
		
		
			model.addAttribute("checklistArr",checklistArr);
			
			System.out.println(Arrays.toString(checklistArr));
			
			return"/wedding/list/step3";
		} 
		
		
		@RequestMapping(value="step4")
		public String listStep4(HttpServletRequest request, Model model) {
			
			String[] checklistArr= request.getParameterValues("test");
		
		
			model.addAttribute("checklistArr",checklistArr);
			
			System.out.println(Arrays.toString(checklistArr));
			
			return"/wedding/list/step4";
		} 
		
		@RequestMapping(value="step5")
		public String listStep5(HttpServletRequest request, Model model) {
			
			String[] checklistArr= request.getParameterValues("test");
		
		
			model.addAttribute("checklistArr",checklistArr);
			
			System.out.println(Arrays.toString(checklistArr));
			
			return"/wedding/list/step5";
		} 
		
	}


