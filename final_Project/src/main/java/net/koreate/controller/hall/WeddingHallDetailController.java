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
@RequestMapping("/wedding/hall/area1/*")
public class WeddingHallDetailController {
	private static final Logger logger = LoggerFactory.getLogger(WeddingHallDetailController.class);
	
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
	public void detail1GET(WeddingHallVo vo, Model model) throws Exception {
		logger.info("detail1GET Called!!!");
		List<WeddingHallVo> list = service.SearchDetail(vo);
		model.addAttribute("detail", list);
	}
	
}
