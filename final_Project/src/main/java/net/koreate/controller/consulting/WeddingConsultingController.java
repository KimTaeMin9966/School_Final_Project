package net.koreate.controller.consulting;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/wedding/consulting/*")
public class WeddingConsultingController {
	private static final Logger logger = LoggerFactory.getLogger(WeddingConsultingController.class);
	
	@RequestMapping(value = "/detail1", method = RequestMethod.GET)
	public void detail1GET() throws Exception {
		logger.info("detail1GET Called!!!");
	}
}
