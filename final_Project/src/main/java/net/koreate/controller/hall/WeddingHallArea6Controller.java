package net.koreate.controller.hall;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.koreate.service.WeddingHallService;
import net.koreate.vo.WeddingHallVo;

@Controller
@RequestMapping("/wedding/hall/area6/*")
public class WeddingHallArea6Controller {
	private static final Logger logger = LoggerFactory.getLogger(WeddingHallArea6Controller.class);
	
	@Inject
	WeddingHallService service;
	
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
	
	@RequestMapping(value = "/detail1", method = RequestMethod.GET)
	public void detail1GET() throws Exception {
		logger.info("detail1GET Called!!!");
	}
	
	@RequestMapping(value = "/detail2", method = RequestMethod.GET)
	public void detail2GET() throws Exception {
		logger.info("detail2GET Called!!!");
	}
	
	@RequestMapping(value = "/detail3", method = RequestMethod.GET)
	public void detail3GET() throws Exception {
		logger.info("detail3GET Called!!!");
	}
	
	@RequestMapping(value = "/detail4", method = RequestMethod.GET)
	public void detail4GET() throws Exception {
		logger.info("detail4GET Called!!!");
	}
	
	@RequestMapping(value = "/detail5", method = RequestMethod.GET)
	public void detail5GET() throws Exception {
		logger.info("detail5GET Called!!!");
	}
	
	@RequestMapping(value = "/detail6", method = RequestMethod.GET)
	public void detail6GET() throws Exception {
		logger.info("detail6GET Called!!!");
	}
	
}
