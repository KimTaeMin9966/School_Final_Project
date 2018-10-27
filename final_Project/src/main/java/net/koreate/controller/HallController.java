package net.koreate.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/wedding/hall/*")
public class HallController {
	private static final Logger logger = LoggerFactory.getLogger(ConsultingController.class);
	
	@RequestMapping(value = "/consultingdetail1", method = RequestMethod.GET)
	public void consultingdetail1() throws Exception {
		logger.info("consultingdetail1 Called!!!");
	}
	
	
}
