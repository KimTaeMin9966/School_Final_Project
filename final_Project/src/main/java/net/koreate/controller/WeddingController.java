package net.koreate.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/wedding/*")
public class WeddingController {
	private static final Logger logger = LoggerFactory.getLogger(WeddingController.class);
	
	/*@RequestMapping(value = "/", method = RequestMethod.GET)
	public void GET() throws Exception {
		logger.info("GET Called!!!");
	}

	@RequestMapping(value = "/", method = RequestMethod.POST)
	public void POST() throws Exception {
		logger.info("POST Called!!!");
	}

	@RequestMapping(value = "/")
	public void GET_POST() throws Exception {
		logger.info("GET & POST Called!!!");
	}*/
	
	@RequestMapping(value = "/consulting", method = RequestMethod.GET)
	public void consultingGET() throws Exception {
		logger.info("consultingGET Called!!!");
	}
	
	@RequestMapping(value = "/hall", method = RequestMethod.GET)
	public void hallGET() throws Exception {
		logger.info("hallGET Called!!!");
	}
	
	@RequestMapping(value = "/studio", method = RequestMethod.GET)
	public void studioGET() throws Exception {
		logger.info("studioGET Called!!!");
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void listGET() throws Exception {
		logger.info("listGET Called!!!");
	}
	
	@RequestMapping(value = "/send", method = RequestMethod.GET)
	public void sendGET() throws Exception {
		logger.info("sendGET Called!!!");
	}
	
}


