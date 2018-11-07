package net.koreate.controller.hall;

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
@RequestMapping("/wedding/hall/area5/*")
public class WeddingHallArea5Controller {
	private static final Logger logger = LoggerFactory.getLogger(WeddingHallArea5Controller.class);
	
	@Inject
	WeddingHallService service;
	
	@RequestMapping(value = "/detail1", method = RequestMethod.GET)
	public void detail1GET(WeddingHallVo vo, Model model) throws Exception {
		logger.info("detail1GET Called!!!");
		
		vo.setHall_area(5); vo.setHall_link("detail1");
		WeddingHallVo list = service.SearchAreaHallDetail(vo);
		model.addAttribute("detail1", list);
	}
	
	@RequestMapping(value = "/detail2", method = RequestMethod.GET)
	public void detail2GET(WeddingHallVo vo, Model model) throws Exception {
		logger.info("detail2GET Called!!!");
		
		vo.setHall_area(5); vo.setHall_link("detail2");
		WeddingHallVo list = service.SearchAreaHallDetail(vo);
		model.addAttribute("detail2", list);
	}
	
	@RequestMapping(value = "/detail3", method = RequestMethod.GET)
	public void detail3GET(WeddingHallVo vo, Model model) throws Exception {
		logger.info("detail3GET Called!!!");
		
		vo.setHall_area(5); vo.setHall_link("detail3");
		WeddingHallVo list = service.SearchAreaHallDetail(vo);
		model.addAttribute("detail3", list);
	}
	
	@RequestMapping(value = "/detail4", method = RequestMethod.GET)
	public void detail4GET(WeddingHallVo vo, Model model) throws Exception {
		logger.info("detail4GET Called!!!");
		
		vo.setHall_area(5); vo.setHall_link("detail4");
		WeddingHallVo list = service.SearchAreaHallDetail(vo);
		model.addAttribute("detail4", list);
	}
	
	@RequestMapping(value = "/detail5", method = RequestMethod.GET)
	public void detail5GET(WeddingHallVo vo, Model model) throws Exception {
		logger.info("detail5GET Called!!!");
		
		vo.setHall_area(5); vo.setHall_link("detail5");
		WeddingHallVo list = service.SearchAreaHallDetail(vo);
		model.addAttribute("detail5", list);
	}

	@RequestMapping(value = "/detail6", method = RequestMethod.GET)
	public void detail6GET(WeddingHallVo vo, Model model) throws Exception {
		logger.info("detail6GET Called!!!");
		
		vo.setHall_area(5); vo.setHall_link("detail6");
		WeddingHallVo list = service.SearchAreaHallDetail(vo);
		model.addAttribute("detail6", list);
	}

	@RequestMapping(value = "/detail7", method = RequestMethod.GET)
	public void detail7GET(WeddingHallVo vo, Model model) throws Exception {
		logger.info("detail7GET Called!!!");
		
		vo.setHall_area(5); vo.setHall_link("detail7");
		WeddingHallVo list = service.SearchAreaHallDetail(vo);
		model.addAttribute("detail7", list);
	}

	@RequestMapping(value = "/detail8", method = RequestMethod.GET)
	public void detail8GET(WeddingHallVo vo, Model model) throws Exception {
		logger.info("detail8GET Called!!!");
		
		vo.setHall_area(5); vo.setHall_link("detail8");
		WeddingHallVo list = service.SearchAreaHallDetail(vo);
		model.addAttribute("detail8", list);
	}
	
}
