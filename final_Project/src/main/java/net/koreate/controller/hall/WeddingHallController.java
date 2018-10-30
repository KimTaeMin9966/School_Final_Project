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
@RequestMapping("/wedding/hall/*")
public class WeddingHallController {
	private static final Logger logger = LoggerFactory.getLogger(WeddingHallController.class);
	
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
	
	@RequestMapping(value = "/area1", method = RequestMethod.GET)
	public void area1GET(WeddingHallVo vo, Model model) throws Exception {
		logger.info("area1GET Called!!!(부산진구)");
		vo.setHall_area(1);
		List<WeddingHallVo> list = service.SearchArea(vo);
		model.addAttribute("list", list);
	}
	
	@RequestMapping(value = "/area2", method = RequestMethod.GET)
	public void area2GET(WeddingHallVo vo, Model model) throws Exception {
		logger.info("area2GET Called!!!");
		vo.setHall_area(2);
		List<WeddingHallVo> list = service.SearchArea(vo);
		model.addAttribute("list", list);
		
	}
	
	@RequestMapping(value = "/area3", method = RequestMethod.GET)
	public void area3GET(WeddingHallVo vo, Model model) throws Exception {
		logger.info("area3GET Called!!!");
		vo.setHall_area(3);
		List<WeddingHallVo> list = service.SearchArea(vo);
		model.addAttribute("list", list);
	}
	
	@RequestMapping(value = "/area4", method = RequestMethod.GET)
	public void area4GET(WeddingHallVo vo, Model model) throws Exception {
		logger.info("area4GET Called!!!");
		vo.setHall_area(4);
		List<WeddingHallVo> list = service.SearchArea(vo);
		model.addAttribute("list", list);
	}
	
	@RequestMapping(value = "/area5", method = RequestMethod.GET)
	public void area5GET(WeddingHallVo vo, Model model) throws Exception {
		logger.info("area5GET Called!!!");
		vo.setHall_area(5);
		List<WeddingHallVo> list = service.SearchArea(vo);
		model.addAttribute("list", list);
	}
	
	@RequestMapping(value = "/area6", method = RequestMethod.GET)
	public void area6GET(WeddingHallVo vo, Model model) throws Exception {
		logger.info("area6GET Called!!!");
		vo.setHall_area(6);
		List<WeddingHallVo> list = service.SearchArea(vo);
		model.addAttribute("list", list);
	}
	
}
