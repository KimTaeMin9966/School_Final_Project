package net.koreate.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/wedding/studio/*")
public class StudioController {
	private static final Logger logger = LoggerFactory.getLogger(ConsultingController.class);
	
	@RequestMapping(value = "/detail1", method = RequestMethod.GET)
	public void detail1() throws Exception {
		logger.info("detail1 Called!!!");
	}
	@RequestMapping(value = "/detail2", method = RequestMethod.GET)
	public void detail2() throws Exception {
		logger.info("detail1 Called!!!");
	}
	
	@RequestMapping(value = "/detail3", method = RequestMethod.GET)
	public void detail3() throws Exception {
		logger.info("detail1 Called!!!");
	}
	@RequestMapping(value = "/detail4", method = RequestMethod.GET)
	public void detail4() throws Exception {
		logger.info("detail1 Called!!!");
	}
	@RequestMapping(value = "/detail5", method = RequestMethod.GET)
	public void detail5() throws Exception {
		logger.info("detail1 Called!!!");
	}
	@RequestMapping(value = "/detail6", method = RequestMethod.GET)
	public void detail6() throws Exception {
		logger.info("detail1 Called!!!");
	}
	@RequestMapping(value = "/detail7", method = RequestMethod.GET)
	public void detail7() throws Exception {
		logger.info("detail1 Called!!!");
	}
	@RequestMapping(value = "/detail8", method = RequestMethod.GET)
	public void detail8() throws Exception {
		logger.info("detail1 Called!!!");
	}
	@RequestMapping(value = "/detail9", method = RequestMethod.GET)
	public void detail9() throws Exception {
		logger.info("detail1 Called!!!");
	}
	
}
