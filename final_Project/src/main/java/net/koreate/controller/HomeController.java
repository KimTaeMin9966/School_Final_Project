package net.koreate.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() { logger.info("Welcome home!"); return "home"; }
	
	@RequestMapping(value = "/wedding", method = RequestMethod.GET)
	public String weddingHome() { logger.info("wedding home!"); return "home"; }
	
	@RequestMapping(value = "/member", method = RequestMethod.GET)
	public String memberHome() { logger.info("member home!"); return "home"; }
	
	@RequestMapping(value = "/school", method = RequestMethod.GET)
	public String schoolHome() { logger.info("school home!"); return "home"; }
	
}
